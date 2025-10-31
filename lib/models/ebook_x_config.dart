/// Configuration class for EbookX customization options.
class EbookXConfig {
  /// Whether to enable logging for debugging and info messages.
  final bool enableLogging;

  /// Whether to preserve basic formatting in extracted text (e.g., paragraphs, lists).
  final bool preserveFormatting;

  /// Maximum file size in bytes, null for no limit.
  final int? maxFileSize;

  /// Whether to include non-linear chapters (e.g., appendices, glossaries) in the reading order.
  final bool includeNonLinearChapters;

  /// Whether to use markdown-style formatting in extracted text (e.g., **bold**, *italic*).
  final bool useMarkdownFormatting;

  /// Creates a EbookXConfig with customizable options.
  const EbookXConfig({
    this.enableLogging = true,
    this.preserveFormatting = true,
    this.maxFileSize,
    this.includeNonLinearChapters = true,
    this.useMarkdownFormatting = false,
  });
}
