// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ebook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EbookMetadata _$EbookMetadataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_EbookMetadata', json, ($checkedConvert) {
      final val = _EbookMetadata(
        title: $checkedConvert('title', (v) => v as String),
        author: $checkedConvert('author', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String?),
        language: $checkedConvert('language', (v) => v as String?),
        publisher: $checkedConvert('publisher', (v) => v as String?),
        publicationDate: $checkedConvert(
          'publicationDate',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        isbn: $checkedConvert('isbn', (v) => v as String?),
        subjects: $checkedConvert(
          'subjects',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        coverImagePath: $checkedConvert('coverImagePath', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$EbookMetadataToJson(_EbookMetadata instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'language': instance.language,
      'publisher': instance.publisher,
      'publicationDate': instance.publicationDate?.toIso8601String(),
      'isbn': instance.isbn,
      'subjects': instance.subjects,
      'coverImagePath': instance.coverImagePath,
    };

_Chapter _$ChapterFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_Chapter', json, ($checkedConvert) {
      final val = _Chapter(
        id: $checkedConvert('id', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        content: $checkedConvert(
          'content',
          (v) => (v as List<dynamic>)
              .map((e) => ChapterContent.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        order: $checkedConvert('order', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$ChapterToJson(_Chapter instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'content': instance.content,
  'order': instance.order,
};

TextContent _$TextContentFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TextContent', json, ($checkedConvert) {
      final val = TextContent(
        $checkedConvert('value', (v) => v as String),
        $type: $checkedConvert('runtimeType', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'runtimeType'});

Map<String, dynamic> _$TextContentToJson(TextContent instance) =>
    <String, dynamic>{'value': instance.value, 'runtimeType': instance.$type};

HtmlContent _$HtmlContentFromJson(Map<String, dynamic> json) =>
    $checkedCreate('HtmlContent', json, ($checkedConvert) {
      final val = HtmlContent(
        $checkedConvert('value', (v) => v as String),
        $type: $checkedConvert('runtimeType', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'runtimeType'});

Map<String, dynamic> _$HtmlContentToJson(HtmlContent instance) =>
    <String, dynamic>{'value': instance.value, 'runtimeType': instance.$type};

ImageContent _$ImageContentFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ImageContent', json, ($checkedConvert) {
      final val = ImageContent(
        $checkedConvert('src', (v) => v as String),
        alt: $checkedConvert('alt', (v) => v as String?),
        title: $checkedConvert('title', (v) => v as String?),
        $type: $checkedConvert('runtimeType', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'runtimeType'});

Map<String, dynamic> _$ImageContentToJson(ImageContent instance) =>
    <String, dynamic>{
      'src': instance.src,
      'alt': instance.alt,
      'title': instance.title,
      'runtimeType': instance.$type,
    };

_ManifestItem _$ManifestItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ManifestItem', json, ($checkedConvert) {
      final val = _ManifestItem(
        id: $checkedConvert('id', (v) => v as String),
        href: $checkedConvert('href', (v) => v as String),
        mediaType: $checkedConvert('mediaType', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ManifestItemToJson(_ManifestItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'href': instance.href,
      'mediaType': instance.mediaType,
      'title': instance.title,
    };

_SpineItem _$SpineItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_SpineItem', json, ($checkedConvert) {
      final val = _SpineItem(
        idref: $checkedConvert('idref', (v) => v as String),
        linear: $checkedConvert('linear', (v) => v as bool? ?? true),
      );
      return val;
    });

Map<String, dynamic> _$SpineItemToJson(_SpineItem instance) =>
    <String, dynamic>{'idref': instance.idref, 'linear': instance.linear};
