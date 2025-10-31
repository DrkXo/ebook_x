part of 'ebook_parser.dart';

/// Internal class for PDF parsing operations.
class PdfParser extends EbookParser {
  late PDFDocument _document;

  PdfParser(super.config, super.talker);

  @override
  Future<void> loadFromFile(String filePath) async {
    final file = File(filePath);
    final bytes = await file.readAsBytes();
    final stream = ByteStream(bytes);
    _document = await PDFParser(stream).parse();
  }

  @override
  Future<Ebook> parse() async {
    final metadata = await _parseMetadata();
    final chapters = await _extractChapters();
    talker?.info('Parsed ${chapters.length} chapters from PDF');
    return Ebook(metadata: metadata, chapters: chapters, format: 'pdf');
  }

  Future<EbookMetadata> _parseMetadata() async {
    final catalog = await _document.catalog;
    final infoRef = _document.mainTrailer[const PDFName('Info')];

    String title = 'Unknown Title';
    String author = 'Unknown Author';
    String? description;
    String? language;
    String? publisher;
    DateTime? publicationDate;
    String? isbn;

    if (infoRef != null) {
      final resolvedInfo = await catalog.resolver.resolve<PDFDictionary>(infoRef);

      if (resolvedInfo != null) {
        title = (await catalog.resolver.resolve<PDFStringLike>(resolvedInfo[const PDFName('Title')]))?.asString() ?? title;
        author = (await catalog.resolver.resolve<PDFStringLike>(resolvedInfo[const PDFName('Author')]))?.asString() ?? author;
        description = (await catalog.resolver.resolve<PDFStringLike>(resolvedInfo[const PDFName('Subject')]))?.asString();
        publisher = (await catalog.resolver.resolve<PDFStringLike>(resolvedInfo[const PDFName('Producer')]))?.asString();
        language = await catalog.getLanguage();
      }
    }

    return EbookMetadata(
      title: title,
      author: author,
      description: description,
      language: language,
      publisher: publisher,
      publicationDate: publicationDate,
      isbn: isbn,
    );
  }

  Future<List<Chapter>> _extractChapters() async {
    final catalog = await _document.catalog;
    final outlines = await catalog.getOutlines();
    final pages = await catalog.getPages();

    if (outlines != null && outlines.isNotEmpty) {
      // Use outlines as chapters
      final chapters = <Chapter>[];
      for (int i = 0; i < outlines.length; i++) {
        final outline = outlines[i];
        final content = await _extractContentForOutline(outline, pages);
        chapters.add(Chapter(
          id: 'chapter_$i',
          title: outline.title,
          content: content,
          order: i,
        ));
      }
      return chapters;
    } else {
      // No outlines, create a single chapter with all content
      final content = await _extractAllContent(pages);
      return [
        Chapter(
          id: 'chapter_0',
          title: 'Content',
          content: content,
          order: 0,
        )
      ];
    }
  }

  Future<List<ChapterContent>> _extractContentForOutline(PDFOutlineItem outline, PDFPages pages) async {
    // For simplicity, extract text from all pages (this is a basic implementation)
    // In a real implementation, you'd need to map outline actions to page ranges
    final allContent = await _extractAllContent(pages);
    return allContent;
  }

  Future<List<ChapterContent>> _extractAllContent(PDFPages pages) async {
    final content = <ChapterContent>[];
    for (int i = 0; i < pages.pageCount; i++) {
      final page = pages.getPageAtIndex(i);
      final pageContent = await _extractTextFromPage(page);
      if (pageContent.isNotEmpty) {
        content.add(ChapterContent.text(pageContent));
      }
    }
    return content;
  }

  Future<String> _extractTextFromPage(PDFPageObjectNode page) async {
    // Basic text extraction - this is a simplified implementation
    // In a real PDF parser, you'd need to parse the content streams properly
    final contentStreams = await page.contentStreams;
    if (contentStreams == null || contentStreams.isEmpty) {
      return '';
    }

    final buffer = StringBuffer();
    for (final stream in contentStreams) {
      final data = await stream.readRaw();
      // Very basic text extraction - look for Tj operators (show text)
      final text = _extractTextFromStream(data);
      buffer.write(text);
    }

    return buffer.toString();
  }

  String _extractTextFromStream(Uint8List data) {
    // This is a very basic implementation
    // Real text extraction would require proper parsing of PDF content streams
    final string = String.fromCharCodes(data);
    // Look for text between parentheses in Tj commands
    final tjRegex = RegExp(r'\(([^)]+)\)\s*Tj');
    final matches = tjRegex.allMatches(string);
    return matches.map((m) => m.group(1)!).join(' ');
  }
}
