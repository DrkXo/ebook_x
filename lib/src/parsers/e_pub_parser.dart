part of 'ebook_parser.dart';

/// Internal class for EPUB parsing operations.
class EPubParser extends EbookParser {
  // EPUB XML element and attribute constants for parsing
  static const String containerPath = 'META-INF/container.xml';
  static const String rootfileElement = 'rootfile';
  static const String fullPathAttr = 'full-path';
  static const String packageElement = 'package';
  static const String metadataElement = 'metadata';
  static const String manifestElement = 'manifest';
  static const String spineElement = 'spine';
  static const String itemrefElement = 'itemref';
  static const String idrefAttr = 'idref';
  static const String itemElement = 'item';
  static const String idAttr = 'id';
  static const String hrefAttr = 'href';
  static const String mediaTypeAttr = 'media-type';
  static const String titleAttr = 'title';

  late final Archive archive;

  EPubParser(super.config, super.talker);

  /// Loads EPUB from file path, performing validation and reading bytes
  @override
  Future<void> loadFromFile(String filePath) async {
    if (filePath.isEmpty) {
      throw InvalidEpubException('File path is empty');
    }
    talker?.info('Reading EPUB from $filePath');
    final file = File(filePath);
    if (!await file.exists()) {
      throw FileNotFoundException(filePath);
    }
    if (config.maxFileSize != null) {
      final length = await file.length();
      if (length > config.maxFileSize!) {
        throw InvalidEpubException(
          'EPUB file size $length exceeds maximum allowed ${config.maxFileSize}',
        );
      }
    }
    final bytes = await file.readAsBytes();
    // Note: For very large EPUBs, maxFileSize config prevents loading to reduce memory usage
    loadArchive(bytes);
  }

  /// Parses the loaded EPUB and returns an Ebook object
  @override
  Future<Ebook> parse() async {
    final opfPath = parseContainer();
    talker?.debug('OPF path: $opfPath');
    final baseDir = p.dirname(opfPath);

    final opfDoc = parseOpf(opfPath);
    final metadata = parseMetadata(opfDoc);
    final manifest = parseManifest(opfDoc);
    final spine = parseSpine(opfDoc);

    final chapters = extractChapters(baseDir, manifest, spine);

    final coverImagePath =
        _findCoverImagePath(opfDoc, manifest, baseDir) ??
        _findFirstImageInChapters(chapters);

    talker?.info('Parsed ${chapters.length} chapters');
    return Future.value(
      Ebook(
        metadata: metadata.copyWith(coverImagePath: coverImagePath),
        chapters: chapters,
        format: 'epub',
      ),
    );
  }

  /// Finds the cover image path from EPUB metadata, returns data URI if found
  String? _findCoverImagePath(
    XmlDocument opfDoc,
    Map<String, ManifestItem> manifest,
    String baseDir,
  ) {
    final metadataEl = _findFirst(opfDoc, [metadataElement]);
    final coverMeta = metadataEl
        .findElements('meta')
        .where((e) => e.getAttribute('name') == 'cover')
        .firstOrNull;
    final coverId = coverMeta?.getAttribute('content');
    if (coverId == null) return null;
    final item = manifest[coverId];
    if (item == null || !item.mediaType.startsWith('image/')) return null;
    final fullHref = p.normalize(
      item.href.startsWith('/') ? item.href : p.join(baseDir, item.href),
    );
    final imageFile = archive.findFile(fullHref);
    if (imageFile == null) return null;
    final bytes = imageFile.content as Uint8List;
    final base64Data = base64Encode(bytes);
    final mimeType = lookupMimeType(fullHref) ?? 'image/jpeg';
    return 'data:$mimeType;base64,$base64Data';
  }

  /// Finds the first image in the chapters, returns its data URI if found
  String? _findFirstImageInChapters(List<Chapter> chapters) {
    if (chapters.isEmpty) return null;
    final firstChapter = chapters.first;
    for (final content in firstChapter.content) {
      if (content is HtmlContent) {
        try {
          final doc = _parseXml(content.value, 'chapter html');
          final img = doc.findAllElements('img').firstOrNull;
          if (img != null) {
            final src = img.getAttribute('src');
            if (src != null && src.startsWith('data:')) {
              return src;
            }
          }
        } catch (e) {
          talker?.warning('Failed to parse chapter HTML for cover image: $e');
          continue;
        }
      }
    }
    return null;
  }

  /// Decodes the ZIP archive from the EPUB bytes
  Archive loadArchive(Uint8List bytes) {
    try {
      archive = ZipDecoder().decodeBytes(bytes);
      return archive;
    } catch (e) {
      throw InvalidEpubException('Invalid EPUB: not a valid ZIP archive');
    }
  }

  /// Parses the container.xml to find the OPF file path
  String parseContainer() {
    final containerFile = archive.findFile(containerPath);
    if (containerFile == null) {
      throw InvalidEpubException('container.xml not found');
    }

    final containerDoc = _parseXml(
      _decodeUtf8(containerFile.content as Uint8List, containerPath),
      'container.xml',
    );
    final rootfiles = containerDoc.findAllElements(rootfileElement);
    if (rootfiles.isEmpty) {
      throw InvalidEpubException('no rootfile in container.xml');
    }
    if (rootfiles.length > 1) {
      talker?.warning(
        'Multiple rootfiles found in container.xml, using the first one',
      );
    }
    final rootfile = rootfiles.first;
    final opfPath = rootfile.getAttribute(fullPathAttr);
    if (opfPath == null || opfPath.isEmpty) {
      throw InvalidEpubException('rootfile has no full-path');
    }
    return opfPath;
  }

  /// Parses the OPF (Open Packaging Format) XML document
  XmlDocument parseOpf(String opfPath) {
    final opfFile = archive.findFile(opfPath);
    if (opfFile == null) {
      throw InvalidEpubException('OPF file not found');
    }
    final opfDoc = _parseXml(
      _decodeUtf8(opfFile.content as Uint8List, opfPath),
      opfPath,
    );
    final version = opfDoc.rootElement.getAttribute('version');
    if (version != null && version != '2.0' && version != '3.0') {
      throw InvalidEpubException('Unsupported EPUB version: $version');
    }
    return opfDoc;
  }

  /// Parses XML content, throwing InvalidEpubException on failure
  XmlDocument _parseXml(String content, String source) {
    try {
      return XmlDocument.parse(content);
    } catch (e) {
      throw InvalidEpubException('Invalid XML in $source: $e');
    }
  }

  /// Decodes UTF-8 bytes safely, throwing InvalidEpubException on failure
  String _decodeUtf8(Uint8List bytes, String source) {
    try {
      return utf8.decode(bytes);
    } catch (e) {
      throw InvalidEpubException('Invalid UTF-8 encoding in $source: $e');
    }
  }

  /// Finds the first nested element by path, throws if not found
  XmlElement _findFirst(XmlDocument doc, List<String> path) {
    XmlElement current = doc.rootElement;
    for (final name in path) {
      final elements = current.findElements(name);
      if (elements.isEmpty) {
        throw InvalidEpubException(
          'Element $name not found in path ${path.join(' > ')}',
        );
      }
      current = elements.first;
    }
    return current;
  }

  /// Parses metadata from the OPF document (title, author, etc.)
  EbookMetadata parseMetadata(XmlDocument opfDoc) {
    final metadataEl = _findFirst(opfDoc, [metadataElement]);

    final languageElement = metadataEl.findElements('dc:language').firstOrNull;
    final language = languageElement?.innerText ?? 'en';
    final titleElements = metadataEl.findElements('dc:title');
    final XmlElement? titleElement =
        titleElements
            .where((e) => e.getAttribute('xml:lang') == language)
            .firstOrNull ??
        titleElements.where((e) => e.attributes.isEmpty).firstOrNull ??
        titleElements.firstOrNull;
    final title = titleElement?.innerText ?? 'Unknown Title';
    final authors = metadataEl
        .findElements('dc:creator')
        .map((e) => e.innerText)
        .toList();
    final author = authors.isNotEmpty ? authors.join('; ') : 'Unknown Author';
    final description = metadataEl.findElements('dc:description').isNotEmpty
        ? metadataEl.findElements('dc:description').first.innerText
        : null;

    return EbookMetadata(
      title: title,
      author: author,
      description: description,
      language: language,
    );
  }

  /// Parses the manifest section to get file references
  Map<String, ManifestItem> parseManifest(XmlDocument opfDoc) {
    final manifest = <String, ManifestItem>{};
    final manifestEl = _findFirst(opfDoc, [manifestElement]);

    for (final item in manifestEl.findElements(itemElement)) {
      final id = item.getAttribute(idAttr);
      final href = item.getAttribute(hrefAttr);
      final mediaType = item.getAttribute(mediaTypeAttr);
      if (id == null || href == null || mediaType == null) {
        talker?.warning(
          'Skipping invalid manifest item: missing id, href, or media-type',
        );
        continue;
      }
      final title = item.getAttribute(
        titleAttr,
      ); // Not standard, but some use it

      manifest[id] = ManifestItem(
        id: id,
        href: href,
        mediaType: mediaType,
        title: title,
      );
    }

    if (manifest.isEmpty) {
      throw InvalidEpubException('No manifest items found');
    }

    return manifest;
  }

  /// Parses the spine section to get reading order
  List<SpineItem> parseSpine(XmlDocument opfDoc) {
    final spine = <SpineItem>[];
    final spineEl = _findFirst(opfDoc, [spineElement]);

    for (final itemref in spineEl.findElements(itemrefElement)) {
      final idref = itemref.getAttribute(idrefAttr);
      if (idref == null) {
        talker?.warning('Skipping invalid spine itemref: missing idref');
        continue;
      }
      final linearAttr = itemref.getAttribute('linear');
      final linear = linearAttr == null || linearAttr != 'no';
      spine.add(SpineItem(idref: idref, linear: linear));
    }

    if (spine.isEmpty) {
      throw InvalidEpubException('No spine items found');
    }

    return spine;
  }

  /// Extracts chapter content from the archive using manifest and spine
  List<Chapter> extractChapters(
    String baseDir,
    Map<String, ManifestItem> manifest,
    List<SpineItem> spine,
  ) {
    final chapters = <Chapter>[];
    int chapterIndex = 1;
    for (final itemref in spine) {
      if (!config.includeNonLinearChapters && !itemref.linear) {
        talker?.debug('Skipping non-linear chapter ${itemref.idref}');
        continue;
      }
      final item = manifest[itemref.idref];
      if (item == null) {
        talker?.warning('Spine item ${itemref.idref} not found in manifest');
        continue;
      }
      if (item.mediaType != 'application/xhtml+xml') {
        talker?.debug(
          'Skipping non-XHTML item ${item.id} with media-type ${item.mediaType}',
        );
        continue;
      }
      final fullHref = p.normalize(
        item.href.startsWith('/') ? item.href : p.join(baseDir, item.href),
      );
      final chapterFile = archive.findFile(fullHref);
      if (chapterFile == null) {
        talker?.warning('Chapter file not found: $fullHref');
        continue;
      }
      final content = _decodeUtf8(chapterFile.content as Uint8List, fullHref);
      final chapterDir = p.dirname(fullHref);
      chapters.add(
        Chapter(
          id: item.id,
          title: item.title ?? 'Chapter $chapterIndex',
          content: _extractText(content, chapterDir),
          order: chapters.length,
        ),
      );
      chapterIndex++;
    }
    return chapters;
  }

  /// Extracts content from XHTML as list of ChapterContent, optionally preserving basic formatting and images
  List<ChapterContent> _extractText(String xhtmlContent, String chapterDir) {
    XmlDocument? doc;
    try {
      doc = _parseXml(xhtmlContent, 'chapter content');
    } catch (e) {
      talker?.warning('Failed to parse chapter as XML, falling back to plain text: $e');
      // Fall back to plain text extraction
      return [ChapterContent.text(_extractPlainText(xhtmlContent))];
    }
    if (!config.preserveFormatting) {
      return [ChapterContent.text(doc.rootElement.innerText.trim())];
    }
    // Basic validation: ensure root element exists
    if (doc.rootElement.children.isEmpty) {
      talker?.warning('Chapter content appears to be empty or malformed');
      return [];
    }
    // Improved content extraction preserving basic formatting and images
    final buffer = StringBuffer();
    _extractTextFromNode(doc.rootElement, buffer, chapterDir);
    return [ChapterContent.html(_cleanExtractedText(buffer.toString()))];
  }

  /// Recursively extracts text from XML nodes, preserving formatting and images
  void _extractTextFromNode(
    XmlNode node,
    StringBuffer buffer,
    String chapterDir,
  ) {
    if (node is XmlText) {
      final text = node.value.trim();
      if (text.isNotEmpty) {
        buffer.write(text);
        buffer.write(' ');
      }
    } else if (node is XmlElement) {
      final name = node.name.local;
      if (name == 'img') {
        _handleImgElement(node, buffer, chapterDir);
      } else if (name == 'link' && node.getAttribute('rel') == 'stylesheet') {
        _handleLinkElement(node, buffer, chapterDir);
      } else {
        _handleElementStart(node, buffer);
        for (final child in node.children) {
          _extractTextFromNode(child, buffer, chapterDir);
        }
        _handleElementEnd(name, buffer);
      }
    }
  }

  /// Handles img elements by embedding image data as base64
  void _handleImgElement(
    XmlElement element,
    StringBuffer buffer,
    String chapterDir,
  ) {
    final src = element.getAttribute('src');
    if (src == null || src.isEmpty) {
      talker?.warning('Img element missing src attribute');
      return;
    }
    final fullSrc = src.startsWith('/')
        ? src
        : p.normalize(p.join(chapterDir, src));
    final imageFile = archive.findFile(fullSrc);
    if (imageFile == null) {
      talker?.warning('Image file not found: $fullSrc');
      return;
    }
    final bytes = imageFile.content as Uint8List;
    final base64Data = base64Encode(bytes);
    final mimeType = lookupMimeType(fullSrc) ?? 'image/jpeg';
    final dataUri = 'data:$mimeType;base64,$base64Data';
    buffer.write('<img src="$dataUri"');
    // Copy other attributes like alt, width, height if present
    final alt = element.getAttribute('alt');
    if (alt != null) {
      buffer.write(' alt="$alt"');
    }
    final width = element.getAttribute('width');
    if (width != null) {
      buffer.write(' width="$width"');
    }
    final height = element.getAttribute('height');
    if (height != null) {
      buffer.write(' height="$height"');
    }
    buffer.write(' />');
  }

  /// Handles link elements for stylesheets by embedding CSS content
  void _handleLinkElement(
    XmlElement element,
    StringBuffer buffer,
    String chapterDir,
  ) {
    final href = element.getAttribute('href');
    if (href == null || href.isEmpty) {
      talker?.warning('Link element missing href attribute');
      return;
    }
    final fullHref = href.startsWith('/')
        ? href
        : p.normalize(p.join(chapterDir, href));
    final cssFile = archive.findFile(fullHref);
    if (cssFile == null) {
      talker?.warning('CSS file not found: $fullHref');
      return;
    }
    final cssContent = _decodeUtf8(cssFile.content as Uint8List, fullHref);
    buffer.write('<style>$cssContent</style>');
  }

  /// Handles the start of an XML element for text extraction
  void _handleElementStart(XmlElement element, StringBuffer buffer) {
    final name = element.name.local;
    switch (name) {
      case 'p':
        buffer.write('<p>');
        break;
      case 'br':
        buffer.write('<br />');
        break;
      case 'h1':
        buffer.write('<h1>');
        break;
      case 'h2':
        buffer.write('<h2>');
        break;
      case 'h3':
        buffer.write('<h3>');
        break;
      case 'h4':
        buffer.write('<h4>');
        break;
      case 'h5':
        buffer.write('<h5>');
        break;
      case 'h6':
        buffer.write('<h6>');
        break;
      case 'li':
        buffer.write('<li>');
        break;
      case 'ul':
        buffer.write('<ul>');
        break;
      case 'ol':
        buffer.write('<ol>');
        break;
      case 'a':
        final href = element.getAttribute('href');
        buffer.write('<a${href != null ? ' href="$href"' : ''}>');
        break;
      case 'table':
        buffer.write('<table>');
        break;
      case 'tr':
        buffer.write('<tr>');
        break;
      case 'td':
        buffer.write('<td>');
        break;
      case 'th':
        buffer.write('<th>');
        break;
      case 'blockquote':
        buffer.write('<blockquote>');
        break;
      case 'em':
      case 'i':
        buffer.write('<em>');
        break;
      case 'strong':
      case 'b':
        buffer.write('<strong>');
        break;
      case 'div':
        buffer.write('<div>');
        break;
      case 'span':
        buffer.write('<span>');
        break;
      case 'code':
        buffer.write('<code>');
        break;
      case 'pre':
        buffer.write('<pre>');
        break;
      // Add more as needed
    }
  }

  /// Handles the end of an XML element for text extraction
  void _handleElementEnd(String name, StringBuffer buffer) {
    switch (name) {
      case 'p':
        buffer.write('</p>');
        break;
      case 'h1':
        buffer.write('</h1>');
        break;
      case 'h2':
        buffer.write('</h2>');
        break;
      case 'h3':
        buffer.write('</h3>');
        break;
      case 'h4':
        buffer.write('</h4>');
        break;
      case 'h5':
        buffer.write('</h5>');
        break;
      case 'h6':
        buffer.write('</h6>');
        break;
      case 'li':
        buffer.write('</li>');
        break;
      case 'ul':
        buffer.write('</ul>');
        break;
      case 'ol':
        buffer.write('</ol>');
        break;
      case 'a':
        buffer.write('</a>');
        break;
      case 'table':
        buffer.write('</table>');
        break;
      case 'tr':
        buffer.write('</tr>');
        break;
      case 'td':
        buffer.write('</td>');
        break;
      case 'th':
        buffer.write('</th>');
        break;
      case 'blockquote':
        buffer.write('</blockquote>');
        break;
      case 'em':
      case 'i':
        buffer.write('</em>');
        break;
      case 'strong':
      case 'b':
        buffer.write('</strong>');
        break;
      case 'div':
        buffer.write('</div>');
        break;
      case 'span':
        buffer.write('</span>');
        break;
      case 'code':
        buffer.write('</code>');
        break;
      case 'pre':
        buffer.write('</pre>');
        break;
    }
  }

  /// Extracts plain text from potentially malformed XHTML by stripping tags
  String _extractPlainText(String xhtmlContent) {
    // Simple tag stripping: remove anything between < and >
    final stripped = xhtmlContent.replaceAll(RegExp(r'<[^>]*>'), '');
    // Decode common HTML entities
    return stripped
        .replaceAll('&lt;', '<')
        .replaceAll('&gt;', '>')
        .replaceAll('&amp;', '&')
        .replaceAll('&quot;', '"')
        .replaceAll('&apos;', "'")
        .replaceAll('&nbsp;', ' ')
        .trim();
  }

  /// Cleans up the extracted text by normalizing whitespace
  String _cleanExtractedText(String text) {
    return text
        .replaceAll(RegExp(r'\n{3,}'), '\n\n')
        .replaceAll(RegExp(r' {2,}'), ' ')
        .trim();
  }
}
