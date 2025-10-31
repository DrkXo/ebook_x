import 'dart:io';
import 'dart:typed_data';

import 'package:ebook_x/exceptions/ebook_x_exception.dart';
import 'package:ebook_x/models/ebook/ebook.dart';
import 'package:ebook_x/models/ebook_x_config.dart';
import 'package:talker/talker.dart';

import 'src/ebook_parser.dart';

export 'controllers/ebook_x_controller.dart';
export 'exceptions/ebook_x_exception.dart';
export 'models/ebook/ebook.dart';
export 'models/ebook_x_config.dart';

/// A class for parsing and reading EPUB files.
/// It extracts metadata, manifest, spine, and chapter content from EPUB archives.
class EbookX {
  /// Configuration for EbookX customization options.
  final EbookXConfig config;

  /// Logger instance for debugging and info messages, null if logging disabled.
  late final Talker? talker;

  /// Creates a EbookX instance with optional configuration.
  EbookX({
    EbookXConfig? config,
  }) : config = config ?? const EbookXConfig() {
    talker = this.config.enableLogging ? Talker() : null;
  }

  /// Reads an ebook file from the given path and returns an Ebook object
  /// containing metadata and chapters. Supports EPUB and PDF formats.
  Future<Ebook> read(String filePath) async {
    if (filePath.isEmpty) {
      throw InvalidEbookException('File path is empty');
    }

    try {
      // Read first few bytes for format detection
      final file = File(filePath);
      if (!await file.exists()) {
        throw FileNotFoundException(filePath);
      }
      final bytes = await file.openRead(0, 1024).first; // Read first 1KB
      final format = detectEbookFormat(filePath, bytes: Uint8List.fromList(bytes));

      final parser = createParser(format, config, talker);
      await parser.loadFromFile(filePath);
      return await parser.parse();
    } catch (e) {
      talker?.error('Error reading Ebook from $filePath: $e');
      if (e is EbookXException) rethrow;
      throw ParsingException('Failed to read Ebook: $e');
    }
  }
}
