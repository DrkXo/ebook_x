// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Bookmark _$BookmarkFromJson(Map<String, dynamic> json) => $checkedCreate(
  '_Bookmark',
  json,
  ($checkedConvert) {
    final val = _Bookmark(
      chapterIndex: $checkedConvert('chapterIndex', (v) => (v as num).toInt()),
      pageIndex: $checkedConvert('pageIndex', (v) => (v as num).toInt()),
      title: $checkedConvert('title', (v) => v as String),
    );
    return val;
  },
);

Map<String, dynamic> _$BookmarkToJson(_Bookmark instance) => <String, dynamic>{
  'chapterIndex': instance.chapterIndex,
  'pageIndex': instance.pageIndex,
  'title': instance.title,
};
