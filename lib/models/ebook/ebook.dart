import 'package:freezed_annotation/freezed_annotation.dart';

part 'ebook.freezed.dart';
part 'ebook.g.dart';

@freezed
abstract class Ebook with _$Ebook {
  const factory Ebook({
    required EbookMetadata metadata,
    required List<Chapter> chapters,
    required String format, // e.g., 'epub', 'pdf'
  }) = _Ebook;
}

@freezed
abstract class EbookMetadata with _$EbookMetadata {
  const factory EbookMetadata({
    required String title,
    required String author,
    String? description,
    String? language,
    String? publisher,
    DateTime? publicationDate,
    String? isbn,
    List<String>? subjects,
    String? coverImagePath,
  }) = _EbookMetadata;

  factory EbookMetadata.fromJson(Map<String, dynamic> json) =>
      _$EbookMetadataFromJson(json);
}

@freezed
abstract class Chapter with _$Chapter {
  const factory Chapter({
    required String id,
    required String title,
    required List<ChapterContent> content,
    int? order,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
}

@freezed
abstract class ChapterContent with _$ChapterContent {
  const factory ChapterContent.text(String value) = TextContent;
  const factory ChapterContent.html(String value) = HtmlContent;
  const factory ChapterContent.image(String src, {String? alt, String? title}) = ImageContent;

  factory ChapterContent.fromJson(Map<String, dynamic> json) =>
      _$ChapterContentFromJson(json);
}

@freezed
abstract class ManifestItem with _$ManifestItem {
  const factory ManifestItem({
    required String id,
    required String href,
    required String mediaType,
    String? title,
  }) = _ManifestItem;

  factory ManifestItem.fromJson(Map<String, dynamic> json) =>
      _$ManifestItemFromJson(json);
}

@freezed
abstract class SpineItem with _$SpineItem {
  const factory SpineItem({
    required String idref,
    @Default(true) bool linear,
  }) = _SpineItem;

  factory SpineItem.fromJson(Map<String, dynamic> json) =>
      _$SpineItemFromJson(json);
}
