import 'package:equatable/equatable.dart';

class EbookXException extends Equatable implements Exception {
  final String message;

  const EbookXException(this.message);

  @override
  List<Object?> get props => [message];

  @override
  String toString() => 'EbookXException: $message';
}

class FileNotFoundException extends EbookXException {
  const FileNotFoundException(String filePath)
    : super('File not found: $filePath');
}

class InvalidEpubException extends EbookXException {
  const InvalidEpubException(String reason) : super('Invalid EPUB: $reason');
}

class ParsingException extends EbookXException {
  const ParsingException(String details) : super('Parsing error: $details');
}

class UnsupportedFormatException extends EbookXException {
  const UnsupportedFormatException(String format) : super('Unsupported format: $format');
}

class InvalidEbookException extends EbookXException {
  const InvalidEbookException(String reason) : super('Invalid ebook: $reason');
}
