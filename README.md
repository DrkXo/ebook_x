# EbookX

A cross-platform Flutter package for reading and exporting ebooks. Supports EPUB and PDF formats.

## Installation

Add to pubspec.yaml:

```yaml
dependencies:
  ebook_x: ^0.1.0
```

## Usage

```dart
import 'package:ebook_x/ebook_x.dart';

final reader = EbookX();
final ebook = await reader.read('/path/to/book.epub'); // or .pdf, .mobi (parsing in progress)
final pdfBytes = await reader.exportToPdf(ebook);
```

## Supported Formats

- **EPUB**: Full support for EPUB 2.0 and 3.0
- **PDF**: Text extraction from PDF documents (input) and export to PDF (output)
- **MOBI**: Format detection supported, parsing implementation in progress

## Features

- Automatic format detection
- Metadata extraction (title, author, description, etc.)
- Chapter extraction and navigation
- Configurable parsing options
- Error handling and logging
