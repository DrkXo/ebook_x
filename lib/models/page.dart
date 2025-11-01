import 'package:freezed_annotation/freezed_annotation.dart';
import 'ebook/ebook.dart';

part 'page.freezed.dart';
part 'page.g.dart';

@freezed
abstract class Page with _$Page {
  const factory Page({
    required int startOffset,
    required int endOffset,
    required List<ChapterContent> content,
  }) = _Page;

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
}