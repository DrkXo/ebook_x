// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ebook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EbookMetadataImpl _$$EbookMetadataImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(r'_$EbookMetadataImpl', json, ($checkedConvert) {
      final val = _$EbookMetadataImpl(
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

Map<String, dynamic> _$$EbookMetadataImplToJson(_$EbookMetadataImpl instance) =>
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

_$ChapterImpl _$$ChapterImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(r'_$ChapterImpl', json, ($checkedConvert) {
      final val = _$ChapterImpl(
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

Map<String, dynamic> _$$ChapterImplToJson(_$ChapterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'order': instance.order,
    };

_$TextContentImpl _$$TextContentImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(r'_$TextContentImpl', json, ($checkedConvert) {
      final val = _$TextContentImpl(
        $checkedConvert('value', (v) => v as String),
        $type: $checkedConvert('runtimeType', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'runtimeType'});

Map<String, dynamic> _$$TextContentImplToJson(_$TextContentImpl instance) =>
    <String, dynamic>{'value': instance.value, 'runtimeType': instance.$type};

_$HtmlContentImpl _$$HtmlContentImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(r'_$HtmlContentImpl', json, ($checkedConvert) {
      final val = _$HtmlContentImpl(
        $checkedConvert('value', (v) => v as String),
        $type: $checkedConvert('runtimeType', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'runtimeType'});

Map<String, dynamic> _$$HtmlContentImplToJson(_$HtmlContentImpl instance) =>
    <String, dynamic>{'value': instance.value, 'runtimeType': instance.$type};

_$ImageContentImpl _$$ImageContentImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(r'_$ImageContentImpl', json, ($checkedConvert) {
      final val = _$ImageContentImpl(
        $checkedConvert('src', (v) => v as String),
        alt: $checkedConvert('alt', (v) => v as String?),
        title: $checkedConvert('title', (v) => v as String?),
        $type: $checkedConvert('runtimeType', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'runtimeType'});

Map<String, dynamic> _$$ImageContentImplToJson(_$ImageContentImpl instance) =>
    <String, dynamic>{
      'src': instance.src,
      'alt': instance.alt,
      'title': instance.title,
      'runtimeType': instance.$type,
    };

_$ManifestItemImpl _$$ManifestItemImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(r'_$ManifestItemImpl', json, ($checkedConvert) {
      final val = _$ManifestItemImpl(
        id: $checkedConvert('id', (v) => v as String),
        href: $checkedConvert('href', (v) => v as String),
        mediaType: $checkedConvert('mediaType', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$$ManifestItemImplToJson(_$ManifestItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'href': instance.href,
      'mediaType': instance.mediaType,
      'title': instance.title,
    };

_$SpineItemImpl _$$SpineItemImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(r'_$SpineItemImpl', json, ($checkedConvert) {
      final val = _$SpineItemImpl(
        idref: $checkedConvert('idref', (v) => v as String),
        linear: $checkedConvert('linear', (v) => v as bool? ?? true),
      );
      return val;
    });

Map<String, dynamic> _$$SpineItemImplToJson(_$SpineItemImpl instance) =>
    <String, dynamic>{'idref': instance.idref, 'linear': instance.linear};
