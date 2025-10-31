part of 'ebook_parser.dart';

/// Internal class for MOBI parsing operations.
class MobiParser extends EbookParser {
  MobiParser(super.config, super.talker);

  @override
  Future<void> loadFromFile(String filePath) async {
    throw UnsupportedFormatException('MOBI parsing not yet implemented');
  }

  @override
  Future<Ebook> parse() async {
    throw UnsupportedFormatException('MOBI parsing not yet implemented');
  }
}