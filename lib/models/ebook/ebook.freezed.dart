// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ebook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Ebook {

 EbookMetadata get metadata; List<Chapter> get chapters; String get format;
/// Create a copy of Ebook
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EbookCopyWith<Ebook> get copyWith => _$EbookCopyWithImpl<Ebook>(this as Ebook, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ebook&&(identical(other.metadata, metadata) || other.metadata == metadata)&&const DeepCollectionEquality().equals(other.chapters, chapters)&&(identical(other.format, format) || other.format == format));
}


@override
int get hashCode => Object.hash(runtimeType,metadata,const DeepCollectionEquality().hash(chapters),format);

@override
String toString() {
  return 'Ebook(metadata: $metadata, chapters: $chapters, format: $format)';
}


}

/// @nodoc
abstract mixin class $EbookCopyWith<$Res>  {
  factory $EbookCopyWith(Ebook value, $Res Function(Ebook) _then) = _$EbookCopyWithImpl;
@useResult
$Res call({
 EbookMetadata metadata, List<Chapter> chapters, String format
});


$EbookMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$EbookCopyWithImpl<$Res>
    implements $EbookCopyWith<$Res> {
  _$EbookCopyWithImpl(this._self, this._then);

  final Ebook _self;
  final $Res Function(Ebook) _then;

/// Create a copy of Ebook
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,Object? chapters = null,Object? format = null,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as EbookMetadata,chapters: null == chapters ? _self.chapters : chapters // ignore: cast_nullable_to_non_nullable
as List<Chapter>,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Ebook
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EbookMetadataCopyWith<$Res> get metadata {
  
  return $EbookMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [Ebook].
extension EbookPatterns on Ebook {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ebook value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ebook() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ebook value)  $default,){
final _that = this;
switch (_that) {
case _Ebook():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ebook value)?  $default,){
final _that = this;
switch (_that) {
case _Ebook() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EbookMetadata metadata,  List<Chapter> chapters,  String format)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ebook() when $default != null:
return $default(_that.metadata,_that.chapters,_that.format);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EbookMetadata metadata,  List<Chapter> chapters,  String format)  $default,) {final _that = this;
switch (_that) {
case _Ebook():
return $default(_that.metadata,_that.chapters,_that.format);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EbookMetadata metadata,  List<Chapter> chapters,  String format)?  $default,) {final _that = this;
switch (_that) {
case _Ebook() when $default != null:
return $default(_that.metadata,_that.chapters,_that.format);case _:
  return null;

}
}

}

/// @nodoc


class _Ebook implements Ebook {
  const _Ebook({required this.metadata, required final  List<Chapter> chapters, required this.format}): _chapters = chapters;
  

@override final  EbookMetadata metadata;
 final  List<Chapter> _chapters;
@override List<Chapter> get chapters {
  if (_chapters is EqualUnmodifiableListView) return _chapters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chapters);
}

@override final  String format;

/// Create a copy of Ebook
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EbookCopyWith<_Ebook> get copyWith => __$EbookCopyWithImpl<_Ebook>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ebook&&(identical(other.metadata, metadata) || other.metadata == metadata)&&const DeepCollectionEquality().equals(other._chapters, _chapters)&&(identical(other.format, format) || other.format == format));
}


@override
int get hashCode => Object.hash(runtimeType,metadata,const DeepCollectionEquality().hash(_chapters),format);

@override
String toString() {
  return 'Ebook(metadata: $metadata, chapters: $chapters, format: $format)';
}


}

/// @nodoc
abstract mixin class _$EbookCopyWith<$Res> implements $EbookCopyWith<$Res> {
  factory _$EbookCopyWith(_Ebook value, $Res Function(_Ebook) _then) = __$EbookCopyWithImpl;
@override @useResult
$Res call({
 EbookMetadata metadata, List<Chapter> chapters, String format
});


@override $EbookMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$EbookCopyWithImpl<$Res>
    implements _$EbookCopyWith<$Res> {
  __$EbookCopyWithImpl(this._self, this._then);

  final _Ebook _self;
  final $Res Function(_Ebook) _then;

/// Create a copy of Ebook
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,Object? chapters = null,Object? format = null,}) {
  return _then(_Ebook(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as EbookMetadata,chapters: null == chapters ? _self._chapters : chapters // ignore: cast_nullable_to_non_nullable
as List<Chapter>,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Ebook
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EbookMetadataCopyWith<$Res> get metadata {
  
  return $EbookMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// @nodoc
mixin _$EbookMetadata {

 String get title; String get author; String? get description; String? get language; String? get publisher; DateTime? get publicationDate; String? get isbn; List<String>? get subjects; String? get coverImagePath;
/// Create a copy of EbookMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EbookMetadataCopyWith<EbookMetadata> get copyWith => _$EbookMetadataCopyWithImpl<EbookMetadata>(this as EbookMetadata, _$identity);

  /// Serializes this EbookMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EbookMetadata&&(identical(other.title, title) || other.title == title)&&(identical(other.author, author) || other.author == author)&&(identical(other.description, description) || other.description == description)&&(identical(other.language, language) || other.language == language)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.publicationDate, publicationDate) || other.publicationDate == publicationDate)&&(identical(other.isbn, isbn) || other.isbn == isbn)&&const DeepCollectionEquality().equals(other.subjects, subjects)&&(identical(other.coverImagePath, coverImagePath) || other.coverImagePath == coverImagePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,author,description,language,publisher,publicationDate,isbn,const DeepCollectionEquality().hash(subjects),coverImagePath);

@override
String toString() {
  return 'EbookMetadata(title: $title, author: $author, description: $description, language: $language, publisher: $publisher, publicationDate: $publicationDate, isbn: $isbn, subjects: $subjects, coverImagePath: $coverImagePath)';
}


}

/// @nodoc
abstract mixin class $EbookMetadataCopyWith<$Res>  {
  factory $EbookMetadataCopyWith(EbookMetadata value, $Res Function(EbookMetadata) _then) = _$EbookMetadataCopyWithImpl;
@useResult
$Res call({
 String title, String author, String? description, String? language, String? publisher, DateTime? publicationDate, String? isbn, List<String>? subjects, String? coverImagePath
});




}
/// @nodoc
class _$EbookMetadataCopyWithImpl<$Res>
    implements $EbookMetadataCopyWith<$Res> {
  _$EbookMetadataCopyWithImpl(this._self, this._then);

  final EbookMetadata _self;
  final $Res Function(EbookMetadata) _then;

/// Create a copy of EbookMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? author = null,Object? description = freezed,Object? language = freezed,Object? publisher = freezed,Object? publicationDate = freezed,Object? isbn = freezed,Object? subjects = freezed,Object? coverImagePath = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,publicationDate: freezed == publicationDate ? _self.publicationDate : publicationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isbn: freezed == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String?,subjects: freezed == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<String>?,coverImagePath: freezed == coverImagePath ? _self.coverImagePath : coverImagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EbookMetadata].
extension EbookMetadataPatterns on EbookMetadata {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EbookMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EbookMetadata() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EbookMetadata value)  $default,){
final _that = this;
switch (_that) {
case _EbookMetadata():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EbookMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _EbookMetadata() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String author,  String? description,  String? language,  String? publisher,  DateTime? publicationDate,  String? isbn,  List<String>? subjects,  String? coverImagePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EbookMetadata() when $default != null:
return $default(_that.title,_that.author,_that.description,_that.language,_that.publisher,_that.publicationDate,_that.isbn,_that.subjects,_that.coverImagePath);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String author,  String? description,  String? language,  String? publisher,  DateTime? publicationDate,  String? isbn,  List<String>? subjects,  String? coverImagePath)  $default,) {final _that = this;
switch (_that) {
case _EbookMetadata():
return $default(_that.title,_that.author,_that.description,_that.language,_that.publisher,_that.publicationDate,_that.isbn,_that.subjects,_that.coverImagePath);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String author,  String? description,  String? language,  String? publisher,  DateTime? publicationDate,  String? isbn,  List<String>? subjects,  String? coverImagePath)?  $default,) {final _that = this;
switch (_that) {
case _EbookMetadata() when $default != null:
return $default(_that.title,_that.author,_that.description,_that.language,_that.publisher,_that.publicationDate,_that.isbn,_that.subjects,_that.coverImagePath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EbookMetadata implements EbookMetadata {
  const _EbookMetadata({required this.title, required this.author, this.description, this.language, this.publisher, this.publicationDate, this.isbn, final  List<String>? subjects, this.coverImagePath}): _subjects = subjects;
  factory _EbookMetadata.fromJson(Map<String, dynamic> json) => _$EbookMetadataFromJson(json);

@override final  String title;
@override final  String author;
@override final  String? description;
@override final  String? language;
@override final  String? publisher;
@override final  DateTime? publicationDate;
@override final  String? isbn;
 final  List<String>? _subjects;
@override List<String>? get subjects {
  final value = _subjects;
  if (value == null) return null;
  if (_subjects is EqualUnmodifiableListView) return _subjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? coverImagePath;

/// Create a copy of EbookMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EbookMetadataCopyWith<_EbookMetadata> get copyWith => __$EbookMetadataCopyWithImpl<_EbookMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EbookMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EbookMetadata&&(identical(other.title, title) || other.title == title)&&(identical(other.author, author) || other.author == author)&&(identical(other.description, description) || other.description == description)&&(identical(other.language, language) || other.language == language)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.publicationDate, publicationDate) || other.publicationDate == publicationDate)&&(identical(other.isbn, isbn) || other.isbn == isbn)&&const DeepCollectionEquality().equals(other._subjects, _subjects)&&(identical(other.coverImagePath, coverImagePath) || other.coverImagePath == coverImagePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,author,description,language,publisher,publicationDate,isbn,const DeepCollectionEquality().hash(_subjects),coverImagePath);

@override
String toString() {
  return 'EbookMetadata(title: $title, author: $author, description: $description, language: $language, publisher: $publisher, publicationDate: $publicationDate, isbn: $isbn, subjects: $subjects, coverImagePath: $coverImagePath)';
}


}

/// @nodoc
abstract mixin class _$EbookMetadataCopyWith<$Res> implements $EbookMetadataCopyWith<$Res> {
  factory _$EbookMetadataCopyWith(_EbookMetadata value, $Res Function(_EbookMetadata) _then) = __$EbookMetadataCopyWithImpl;
@override @useResult
$Res call({
 String title, String author, String? description, String? language, String? publisher, DateTime? publicationDate, String? isbn, List<String>? subjects, String? coverImagePath
});




}
/// @nodoc
class __$EbookMetadataCopyWithImpl<$Res>
    implements _$EbookMetadataCopyWith<$Res> {
  __$EbookMetadataCopyWithImpl(this._self, this._then);

  final _EbookMetadata _self;
  final $Res Function(_EbookMetadata) _then;

/// Create a copy of EbookMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? author = null,Object? description = freezed,Object? language = freezed,Object? publisher = freezed,Object? publicationDate = freezed,Object? isbn = freezed,Object? subjects = freezed,Object? coverImagePath = freezed,}) {
  return _then(_EbookMetadata(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,publicationDate: freezed == publicationDate ? _self.publicationDate : publicationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isbn: freezed == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String?,subjects: freezed == subjects ? _self._subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<String>?,coverImagePath: freezed == coverImagePath ? _self.coverImagePath : coverImagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Chapter {

 String get id; String get title; List<ChapterContent> get content; int? get order;
/// Create a copy of Chapter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChapterCopyWith<Chapter> get copyWith => _$ChapterCopyWithImpl<Chapter>(this as Chapter, _$identity);

  /// Serializes this Chapter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Chapter&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(content),order);

@override
String toString() {
  return 'Chapter(id: $id, title: $title, content: $content, order: $order)';
}


}

/// @nodoc
abstract mixin class $ChapterCopyWith<$Res>  {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) _then) = _$ChapterCopyWithImpl;
@useResult
$Res call({
 String id, String title, List<ChapterContent> content, int? order
});




}
/// @nodoc
class _$ChapterCopyWithImpl<$Res>
    implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._self, this._then);

  final Chapter _self;
  final $Res Function(Chapter) _then;

/// Create a copy of Chapter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? content = null,Object? order = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<ChapterContent>,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Chapter].
extension ChapterPatterns on Chapter {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Chapter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Chapter() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Chapter value)  $default,){
final _that = this;
switch (_that) {
case _Chapter():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Chapter value)?  $default,){
final _that = this;
switch (_that) {
case _Chapter() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  List<ChapterContent> content,  int? order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Chapter() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.order);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  List<ChapterContent> content,  int? order)  $default,) {final _that = this;
switch (_that) {
case _Chapter():
return $default(_that.id,_that.title,_that.content,_that.order);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  List<ChapterContent> content,  int? order)?  $default,) {final _that = this;
switch (_that) {
case _Chapter() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Chapter implements Chapter {
  const _Chapter({required this.id, required this.title, required final  List<ChapterContent> content, this.order}): _content = content;
  factory _Chapter.fromJson(Map<String, dynamic> json) => _$ChapterFromJson(json);

@override final  String id;
@override final  String title;
 final  List<ChapterContent> _content;
@override List<ChapterContent> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  int? order;

/// Create a copy of Chapter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChapterCopyWith<_Chapter> get copyWith => __$ChapterCopyWithImpl<_Chapter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChapterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Chapter&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_content),order);

@override
String toString() {
  return 'Chapter(id: $id, title: $title, content: $content, order: $order)';
}


}

/// @nodoc
abstract mixin class _$ChapterCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$ChapterCopyWith(_Chapter value, $Res Function(_Chapter) _then) = __$ChapterCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, List<ChapterContent> content, int? order
});




}
/// @nodoc
class __$ChapterCopyWithImpl<$Res>
    implements _$ChapterCopyWith<$Res> {
  __$ChapterCopyWithImpl(this._self, this._then);

  final _Chapter _self;
  final $Res Function(_Chapter) _then;

/// Create a copy of Chapter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = null,Object? order = freezed,}) {
  return _then(_Chapter(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<ChapterContent>,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

ChapterContent _$ChapterContentFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'text':
          return TextContent.fromJson(
            json
          );
                case 'html':
          return HtmlContent.fromJson(
            json
          );
                case 'image':
          return ImageContent.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ChapterContent',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ChapterContent {



  /// Serializes this ChapterContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChapterContent);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChapterContent()';
}


}

/// @nodoc
class $ChapterContentCopyWith<$Res>  {
$ChapterContentCopyWith(ChapterContent _, $Res Function(ChapterContent) __);
}


/// Adds pattern-matching-related methods to [ChapterContent].
extension ChapterContentPatterns on ChapterContent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TextContent value)?  text,TResult Function( HtmlContent value)?  html,TResult Function( ImageContent value)?  image,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TextContent() when text != null:
return text(_that);case HtmlContent() when html != null:
return html(_that);case ImageContent() when image != null:
return image(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TextContent value)  text,required TResult Function( HtmlContent value)  html,required TResult Function( ImageContent value)  image,}){
final _that = this;
switch (_that) {
case TextContent():
return text(_that);case HtmlContent():
return html(_that);case ImageContent():
return image(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TextContent value)?  text,TResult? Function( HtmlContent value)?  html,TResult? Function( ImageContent value)?  image,}){
final _that = this;
switch (_that) {
case TextContent() when text != null:
return text(_that);case HtmlContent() when html != null:
return html(_that);case ImageContent() when image != null:
return image(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String value)?  text,TResult Function( String value)?  html,TResult Function( String src,  String? alt,  String? title)?  image,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TextContent() when text != null:
return text(_that.value);case HtmlContent() when html != null:
return html(_that.value);case ImageContent() when image != null:
return image(_that.src,_that.alt,_that.title);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String value)  text,required TResult Function( String value)  html,required TResult Function( String src,  String? alt,  String? title)  image,}) {final _that = this;
switch (_that) {
case TextContent():
return text(_that.value);case HtmlContent():
return html(_that.value);case ImageContent():
return image(_that.src,_that.alt,_that.title);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String value)?  text,TResult? Function( String value)?  html,TResult? Function( String src,  String? alt,  String? title)?  image,}) {final _that = this;
switch (_that) {
case TextContent() when text != null:
return text(_that.value);case HtmlContent() when html != null:
return html(_that.value);case ImageContent() when image != null:
return image(_that.src,_that.alt,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class TextContent implements ChapterContent {
  const TextContent(this.value, {final  String? $type}): $type = $type ?? 'text';
  factory TextContent.fromJson(Map<String, dynamic> json) => _$TextContentFromJson(json);

 final  String value;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ChapterContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextContentCopyWith<TextContent> get copyWith => _$TextContentCopyWithImpl<TextContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TextContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextContent&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ChapterContent.text(value: $value)';
}


}

/// @nodoc
abstract mixin class $TextContentCopyWith<$Res> implements $ChapterContentCopyWith<$Res> {
  factory $TextContentCopyWith(TextContent value, $Res Function(TextContent) _then) = _$TextContentCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$TextContentCopyWithImpl<$Res>
    implements $TextContentCopyWith<$Res> {
  _$TextContentCopyWithImpl(this._self, this._then);

  final TextContent _self;
  final $Res Function(TextContent) _then;

/// Create a copy of ChapterContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(TextContent(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class HtmlContent implements ChapterContent {
  const HtmlContent(this.value, {final  String? $type}): $type = $type ?? 'html';
  factory HtmlContent.fromJson(Map<String, dynamic> json) => _$HtmlContentFromJson(json);

 final  String value;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ChapterContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HtmlContentCopyWith<HtmlContent> get copyWith => _$HtmlContentCopyWithImpl<HtmlContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HtmlContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HtmlContent&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ChapterContent.html(value: $value)';
}


}

/// @nodoc
abstract mixin class $HtmlContentCopyWith<$Res> implements $ChapterContentCopyWith<$Res> {
  factory $HtmlContentCopyWith(HtmlContent value, $Res Function(HtmlContent) _then) = _$HtmlContentCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$HtmlContentCopyWithImpl<$Res>
    implements $HtmlContentCopyWith<$Res> {
  _$HtmlContentCopyWithImpl(this._self, this._then);

  final HtmlContent _self;
  final $Res Function(HtmlContent) _then;

/// Create a copy of ChapterContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(HtmlContent(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ImageContent implements ChapterContent {
  const ImageContent(this.src, {this.alt, this.title, final  String? $type}): $type = $type ?? 'image';
  factory ImageContent.fromJson(Map<String, dynamic> json) => _$ImageContentFromJson(json);

 final  String src;
 final  String? alt;
 final  String? title;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ChapterContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageContentCopyWith<ImageContent> get copyWith => _$ImageContentCopyWithImpl<ImageContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageContent&&(identical(other.src, src) || other.src == src)&&(identical(other.alt, alt) || other.alt == alt)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,src,alt,title);

@override
String toString() {
  return 'ChapterContent.image(src: $src, alt: $alt, title: $title)';
}


}

/// @nodoc
abstract mixin class $ImageContentCopyWith<$Res> implements $ChapterContentCopyWith<$Res> {
  factory $ImageContentCopyWith(ImageContent value, $Res Function(ImageContent) _then) = _$ImageContentCopyWithImpl;
@useResult
$Res call({
 String src, String? alt, String? title
});




}
/// @nodoc
class _$ImageContentCopyWithImpl<$Res>
    implements $ImageContentCopyWith<$Res> {
  _$ImageContentCopyWithImpl(this._self, this._then);

  final ImageContent _self;
  final $Res Function(ImageContent) _then;

/// Create a copy of ChapterContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? src = null,Object? alt = freezed,Object? title = freezed,}) {
  return _then(ImageContent(
null == src ? _self.src : src // ignore: cast_nullable_to_non_nullable
as String,alt: freezed == alt ? _self.alt : alt // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ManifestItem {

 String get id; String get href; String get mediaType; String? get title;
/// Create a copy of ManifestItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManifestItemCopyWith<ManifestItem> get copyWith => _$ManifestItemCopyWithImpl<ManifestItem>(this as ManifestItem, _$identity);

  /// Serializes this ManifestItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManifestItem&&(identical(other.id, id) || other.id == id)&&(identical(other.href, href) || other.href == href)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,href,mediaType,title);

@override
String toString() {
  return 'ManifestItem(id: $id, href: $href, mediaType: $mediaType, title: $title)';
}


}

/// @nodoc
abstract mixin class $ManifestItemCopyWith<$Res>  {
  factory $ManifestItemCopyWith(ManifestItem value, $Res Function(ManifestItem) _then) = _$ManifestItemCopyWithImpl;
@useResult
$Res call({
 String id, String href, String mediaType, String? title
});




}
/// @nodoc
class _$ManifestItemCopyWithImpl<$Res>
    implements $ManifestItemCopyWith<$Res> {
  _$ManifestItemCopyWithImpl(this._self, this._then);

  final ManifestItem _self;
  final $Res Function(ManifestItem) _then;

/// Create a copy of ManifestItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? href = null,Object? mediaType = null,Object? title = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,href: null == href ? _self.href : href // ignore: cast_nullable_to_non_nullable
as String,mediaType: null == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ManifestItem].
extension ManifestItemPatterns on ManifestItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ManifestItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ManifestItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ManifestItem value)  $default,){
final _that = this;
switch (_that) {
case _ManifestItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ManifestItem value)?  $default,){
final _that = this;
switch (_that) {
case _ManifestItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String href,  String mediaType,  String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ManifestItem() when $default != null:
return $default(_that.id,_that.href,_that.mediaType,_that.title);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String href,  String mediaType,  String? title)  $default,) {final _that = this;
switch (_that) {
case _ManifestItem():
return $default(_that.id,_that.href,_that.mediaType,_that.title);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String href,  String mediaType,  String? title)?  $default,) {final _that = this;
switch (_that) {
case _ManifestItem() when $default != null:
return $default(_that.id,_that.href,_that.mediaType,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ManifestItem implements ManifestItem {
  const _ManifestItem({required this.id, required this.href, required this.mediaType, this.title});
  factory _ManifestItem.fromJson(Map<String, dynamic> json) => _$ManifestItemFromJson(json);

@override final  String id;
@override final  String href;
@override final  String mediaType;
@override final  String? title;

/// Create a copy of ManifestItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ManifestItemCopyWith<_ManifestItem> get copyWith => __$ManifestItemCopyWithImpl<_ManifestItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ManifestItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ManifestItem&&(identical(other.id, id) || other.id == id)&&(identical(other.href, href) || other.href == href)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,href,mediaType,title);

@override
String toString() {
  return 'ManifestItem(id: $id, href: $href, mediaType: $mediaType, title: $title)';
}


}

/// @nodoc
abstract mixin class _$ManifestItemCopyWith<$Res> implements $ManifestItemCopyWith<$Res> {
  factory _$ManifestItemCopyWith(_ManifestItem value, $Res Function(_ManifestItem) _then) = __$ManifestItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String href, String mediaType, String? title
});




}
/// @nodoc
class __$ManifestItemCopyWithImpl<$Res>
    implements _$ManifestItemCopyWith<$Res> {
  __$ManifestItemCopyWithImpl(this._self, this._then);

  final _ManifestItem _self;
  final $Res Function(_ManifestItem) _then;

/// Create a copy of ManifestItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? href = null,Object? mediaType = null,Object? title = freezed,}) {
  return _then(_ManifestItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,href: null == href ? _self.href : href // ignore: cast_nullable_to_non_nullable
as String,mediaType: null == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SpineItem {

 String get idref; bool get linear;
/// Create a copy of SpineItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpineItemCopyWith<SpineItem> get copyWith => _$SpineItemCopyWithImpl<SpineItem>(this as SpineItem, _$identity);

  /// Serializes this SpineItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpineItem&&(identical(other.idref, idref) || other.idref == idref)&&(identical(other.linear, linear) || other.linear == linear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idref,linear);

@override
String toString() {
  return 'SpineItem(idref: $idref, linear: $linear)';
}


}

/// @nodoc
abstract mixin class $SpineItemCopyWith<$Res>  {
  factory $SpineItemCopyWith(SpineItem value, $Res Function(SpineItem) _then) = _$SpineItemCopyWithImpl;
@useResult
$Res call({
 String idref, bool linear
});




}
/// @nodoc
class _$SpineItemCopyWithImpl<$Res>
    implements $SpineItemCopyWith<$Res> {
  _$SpineItemCopyWithImpl(this._self, this._then);

  final SpineItem _self;
  final $Res Function(SpineItem) _then;

/// Create a copy of SpineItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idref = null,Object? linear = null,}) {
  return _then(_self.copyWith(
idref: null == idref ? _self.idref : idref // ignore: cast_nullable_to_non_nullable
as String,linear: null == linear ? _self.linear : linear // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SpineItem].
extension SpineItemPatterns on SpineItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpineItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpineItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpineItem value)  $default,){
final _that = this;
switch (_that) {
case _SpineItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpineItem value)?  $default,){
final _that = this;
switch (_that) {
case _SpineItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String idref,  bool linear)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpineItem() when $default != null:
return $default(_that.idref,_that.linear);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String idref,  bool linear)  $default,) {final _that = this;
switch (_that) {
case _SpineItem():
return $default(_that.idref,_that.linear);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String idref,  bool linear)?  $default,) {final _that = this;
switch (_that) {
case _SpineItem() when $default != null:
return $default(_that.idref,_that.linear);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpineItem implements SpineItem {
  const _SpineItem({required this.idref, this.linear = true});
  factory _SpineItem.fromJson(Map<String, dynamic> json) => _$SpineItemFromJson(json);

@override final  String idref;
@override@JsonKey() final  bool linear;

/// Create a copy of SpineItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpineItemCopyWith<_SpineItem> get copyWith => __$SpineItemCopyWithImpl<_SpineItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpineItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpineItem&&(identical(other.idref, idref) || other.idref == idref)&&(identical(other.linear, linear) || other.linear == linear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idref,linear);

@override
String toString() {
  return 'SpineItem(idref: $idref, linear: $linear)';
}


}

/// @nodoc
abstract mixin class _$SpineItemCopyWith<$Res> implements $SpineItemCopyWith<$Res> {
  factory _$SpineItemCopyWith(_SpineItem value, $Res Function(_SpineItem) _then) = __$SpineItemCopyWithImpl;
@override @useResult
$Res call({
 String idref, bool linear
});




}
/// @nodoc
class __$SpineItemCopyWithImpl<$Res>
    implements _$SpineItemCopyWith<$Res> {
  __$SpineItemCopyWithImpl(this._self, this._then);

  final _SpineItem _self;
  final $Res Function(_SpineItem) _then;

/// Create a copy of SpineItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idref = null,Object? linear = null,}) {
  return _then(_SpineItem(
idref: null == idref ? _self.idref : idref // ignore: cast_nullable_to_non_nullable
as String,linear: null == linear ? _self.linear : linear // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
