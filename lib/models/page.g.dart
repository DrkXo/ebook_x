// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Page _$PageFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_Page', json, ($checkedConvert) {
      final val = _Page(
        startOffset: $checkedConvert('startOffset', (v) => (v as num).toInt()),
        endOffset: $checkedConvert('endOffset', (v) => (v as num).toInt()),
        content: $checkedConvert(
          'content',
          (v) => (v as List<dynamic>)
              .map((e) => ChapterContent.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PageToJson(_Page instance) => <String, dynamic>{
  'startOffset': instance.startOffset,
  'endOffset': instance.endOffset,
  'content': instance.content,
};
