import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:dart_pdf_reader/dart_pdf_reader.dart';
import 'package:ebook_x/exceptions/ebook_x_exception.dart';
import 'package:ebook_x/models/ebook/ebook.dart';
import 'package:ebook_x/models/ebook_x_config.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as p;
import 'package:talker/talker.dart';
import 'package:xml/xml.dart';

part 'e_pub_parser.dart';
part 'mobi_parser.dart';
part 'pdf_parser.dart';

/// Supported ebook formats
enum EbookFormat {
  epub,
  pdf,
  mobi,
}

/// Detects the ebook format from file path and optional bytes
EbookFormat detectEbookFormat(String filePath, {Uint8List? bytes}) {
  final extension = p.extension(filePath).toLowerCase();

  switch (extension) {
    case '.epub':
      return EbookFormat.epub;
    case '.pdf':
      return EbookFormat.pdf;
    case '.mobi':
    case '.azw':
    case '.azw3':
      return EbookFormat.mobi;
    default:
      // Try magic bytes if available
      if (bytes != null) {
        if (_isPdf(bytes)) return EbookFormat.pdf;
        if (_isEpub(bytes)) return EbookFormat.epub;
      }
      throw UnsupportedFormatException('Unsupported file format: $extension');
  }
}

/// Checks if bytes represent a PDF file
bool _isPdf(Uint8List bytes) {
  return bytes.length >= 4 &&
      bytes[0] == 0x25 && // %
      bytes[1] == 0x50 && // P
      bytes[2] == 0x44 && // D
      bytes[3] == 0x46; // F
}

/// Checks if bytes represent an EPUB file (ZIP with specific structure)
bool _isEpub(Uint8List bytes) {
  // EPUB is a ZIP file, so check ZIP magic bytes
  return bytes.length >= 4 &&
      bytes[0] == 0x50 && // P
      bytes[1] == 0x4B && // K
      bytes[2] == 0x03 &&
      bytes[3] == 0x04;
}

/// Creates the appropriate parser for the given format
EbookParser createParser(
  EbookFormat format,
  EbookXConfig config,
  Talker? talker,
) {
  switch (format) {
    case EbookFormat.epub:
      return EPubParser(config, talker);
    case EbookFormat.pdf:
      return PdfParser(config, talker);
    case EbookFormat.mobi:
      return MobiParser(config, talker);
  }
}

/// Abstract base class for ebook parsers
abstract class EbookParser {
  final EbookXConfig config;
  final Talker? talker;

  EbookParser(this.config, this.talker);

  /// Loads ebook from file path
  Future<void> loadFromFile(String filePath);

  /// Parses the loaded ebook and returns an Ebook object
  Future<Ebook> parse();

  // Supported formats
  static List<String> get supportedFormats => [
    'epub',
    'pdf',
    // 'mobi',
  ];
}
