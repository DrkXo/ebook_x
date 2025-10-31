// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ebook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Ebook {
  EbookMetadata get metadata => throw _privateConstructorUsedError;
  List<Chapter> get chapters => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;

  /// Create a copy of Ebook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EbookCopyWith<Ebook> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EbookCopyWith<$Res> {
  factory $EbookCopyWith(Ebook value, $Res Function(Ebook) then) =
      _$EbookCopyWithImpl<$Res, Ebook>;
  @useResult
  $Res call({EbookMetadata metadata, List<Chapter> chapters, String format});

  $EbookMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$EbookCopyWithImpl<$Res, $Val extends Ebook>
    implements $EbookCopyWith<$Res> {
  _$EbookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ebook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? chapters = null,
    Object? format = null,
  }) {
    return _then(
      _value.copyWith(
            metadata: null == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as EbookMetadata,
            chapters: null == chapters
                ? _value.chapters
                : chapters // ignore: cast_nullable_to_non_nullable
                      as List<Chapter>,
            format: null == format
                ? _value.format
                : format // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of Ebook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EbookMetadataCopyWith<$Res> get metadata {
    return $EbookMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EbookImplCopyWith<$Res> implements $EbookCopyWith<$Res> {
  factory _$$EbookImplCopyWith(
    _$EbookImpl value,
    $Res Function(_$EbookImpl) then,
  ) = __$$EbookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EbookMetadata metadata, List<Chapter> chapters, String format});

  @override
  $EbookMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$EbookImplCopyWithImpl<$Res>
    extends _$EbookCopyWithImpl<$Res, _$EbookImpl>
    implements _$$EbookImplCopyWith<$Res> {
  __$$EbookImplCopyWithImpl(
    _$EbookImpl _value,
    $Res Function(_$EbookImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Ebook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? chapters = null,
    Object? format = null,
  }) {
    return _then(
      _$EbookImpl(
        metadata: null == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as EbookMetadata,
        chapters: null == chapters
            ? _value._chapters
            : chapters // ignore: cast_nullable_to_non_nullable
                  as List<Chapter>,
        format: null == format
            ? _value.format
            : format // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$EbookImpl implements _Ebook {
  const _$EbookImpl({
    required this.metadata,
    required final List<Chapter> chapters,
    required this.format,
  }) : _chapters = chapters;

  @override
  final EbookMetadata metadata;
  final List<Chapter> _chapters;
  @override
  List<Chapter> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  final String format;

  @override
  String toString() {
    return 'Ebook(metadata: $metadata, chapters: $chapters, format: $format)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EbookImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            (identical(other.format, format) || other.format == format));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    metadata,
    const DeepCollectionEquality().hash(_chapters),
    format,
  );

  /// Create a copy of Ebook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EbookImplCopyWith<_$EbookImpl> get copyWith =>
      __$$EbookImplCopyWithImpl<_$EbookImpl>(this, _$identity);
}

abstract class _Ebook implements Ebook {
  const factory _Ebook({
    required final EbookMetadata metadata,
    required final List<Chapter> chapters,
    required final String format,
  }) = _$EbookImpl;

  @override
  EbookMetadata get metadata;
  @override
  List<Chapter> get chapters;
  @override
  String get format;

  /// Create a copy of Ebook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EbookImplCopyWith<_$EbookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EbookMetadata _$EbookMetadataFromJson(Map<String, dynamic> json) {
  return _EbookMetadata.fromJson(json);
}

/// @nodoc
mixin _$EbookMetadata {
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get publisher => throw _privateConstructorUsedError;
  DateTime? get publicationDate => throw _privateConstructorUsedError;
  String? get isbn => throw _privateConstructorUsedError;
  List<String>? get subjects => throw _privateConstructorUsedError;
  String? get coverImagePath => throw _privateConstructorUsedError;

  /// Serializes this EbookMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EbookMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EbookMetadataCopyWith<EbookMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EbookMetadataCopyWith<$Res> {
  factory $EbookMetadataCopyWith(
    EbookMetadata value,
    $Res Function(EbookMetadata) then,
  ) = _$EbookMetadataCopyWithImpl<$Res, EbookMetadata>;
  @useResult
  $Res call({
    String title,
    String author,
    String? description,
    String? language,
    String? publisher,
    DateTime? publicationDate,
    String? isbn,
    List<String>? subjects,
    String? coverImagePath,
  });
}

/// @nodoc
class _$EbookMetadataCopyWithImpl<$Res, $Val extends EbookMetadata>
    implements $EbookMetadataCopyWith<$Res> {
  _$EbookMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EbookMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? description = freezed,
    Object? language = freezed,
    Object? publisher = freezed,
    Object? publicationDate = freezed,
    Object? isbn = freezed,
    Object? subjects = freezed,
    Object? coverImagePath = freezed,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            author: null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            language: freezed == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                      as String?,
            publisher: freezed == publisher
                ? _value.publisher
                : publisher // ignore: cast_nullable_to_non_nullable
                      as String?,
            publicationDate: freezed == publicationDate
                ? _value.publicationDate
                : publicationDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            isbn: freezed == isbn
                ? _value.isbn
                : isbn // ignore: cast_nullable_to_non_nullable
                      as String?,
            subjects: freezed == subjects
                ? _value.subjects
                : subjects // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            coverImagePath: freezed == coverImagePath
                ? _value.coverImagePath
                : coverImagePath // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EbookMetadataImplCopyWith<$Res>
    implements $EbookMetadataCopyWith<$Res> {
  factory _$$EbookMetadataImplCopyWith(
    _$EbookMetadataImpl value,
    $Res Function(_$EbookMetadataImpl) then,
  ) = __$$EbookMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String author,
    String? description,
    String? language,
    String? publisher,
    DateTime? publicationDate,
    String? isbn,
    List<String>? subjects,
    String? coverImagePath,
  });
}

/// @nodoc
class __$$EbookMetadataImplCopyWithImpl<$Res>
    extends _$EbookMetadataCopyWithImpl<$Res, _$EbookMetadataImpl>
    implements _$$EbookMetadataImplCopyWith<$Res> {
  __$$EbookMetadataImplCopyWithImpl(
    _$EbookMetadataImpl _value,
    $Res Function(_$EbookMetadataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EbookMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? description = freezed,
    Object? language = freezed,
    Object? publisher = freezed,
    Object? publicationDate = freezed,
    Object? isbn = freezed,
    Object? subjects = freezed,
    Object? coverImagePath = freezed,
  }) {
    return _then(
      _$EbookMetadataImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        author: null == author
            ? _value.author
            : author // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        language: freezed == language
            ? _value.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String?,
        publisher: freezed == publisher
            ? _value.publisher
            : publisher // ignore: cast_nullable_to_non_nullable
                  as String?,
        publicationDate: freezed == publicationDate
            ? _value.publicationDate
            : publicationDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        isbn: freezed == isbn
            ? _value.isbn
            : isbn // ignore: cast_nullable_to_non_nullable
                  as String?,
        subjects: freezed == subjects
            ? _value._subjects
            : subjects // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        coverImagePath: freezed == coverImagePath
            ? _value.coverImagePath
            : coverImagePath // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EbookMetadataImpl implements _EbookMetadata {
  const _$EbookMetadataImpl({
    required this.title,
    required this.author,
    this.description,
    this.language,
    this.publisher,
    this.publicationDate,
    this.isbn,
    final List<String>? subjects,
    this.coverImagePath,
  }) : _subjects = subjects;

  factory _$EbookMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EbookMetadataImplFromJson(json);

  @override
  final String title;
  @override
  final String author;
  @override
  final String? description;
  @override
  final String? language;
  @override
  final String? publisher;
  @override
  final DateTime? publicationDate;
  @override
  final String? isbn;
  final List<String>? _subjects;
  @override
  List<String>? get subjects {
    final value = _subjects;
    if (value == null) return null;
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? coverImagePath;

  @override
  String toString() {
    return 'EbookMetadata(title: $title, author: $author, description: $description, language: $language, publisher: $publisher, publicationDate: $publicationDate, isbn: $isbn, subjects: $subjects, coverImagePath: $coverImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EbookMetadataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publicationDate, publicationDate) ||
                other.publicationDate == publicationDate) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            (identical(other.coverImagePath, coverImagePath) ||
                other.coverImagePath == coverImagePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    author,
    description,
    language,
    publisher,
    publicationDate,
    isbn,
    const DeepCollectionEquality().hash(_subjects),
    coverImagePath,
  );

  /// Create a copy of EbookMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EbookMetadataImplCopyWith<_$EbookMetadataImpl> get copyWith =>
      __$$EbookMetadataImplCopyWithImpl<_$EbookMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EbookMetadataImplToJson(this);
  }
}

abstract class _EbookMetadata implements EbookMetadata {
  const factory _EbookMetadata({
    required final String title,
    required final String author,
    final String? description,
    final String? language,
    final String? publisher,
    final DateTime? publicationDate,
    final String? isbn,
    final List<String>? subjects,
    final String? coverImagePath,
  }) = _$EbookMetadataImpl;

  factory _EbookMetadata.fromJson(Map<String, dynamic> json) =
      _$EbookMetadataImpl.fromJson;

  @override
  String get title;
  @override
  String get author;
  @override
  String? get description;
  @override
  String? get language;
  @override
  String? get publisher;
  @override
  DateTime? get publicationDate;
  @override
  String? get isbn;
  @override
  List<String>? get subjects;
  @override
  String? get coverImagePath;

  /// Create a copy of EbookMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EbookMetadataImplCopyWith<_$EbookMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Chapter _$ChapterFromJson(Map<String, dynamic> json) {
  return _Chapter.fromJson(json);
}

/// @nodoc
mixin _$Chapter {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<ChapterContent> get content => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  /// Serializes this Chapter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterCopyWith<Chapter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterCopyWith<$Res> {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) then) =
      _$ChapterCopyWithImpl<$Res, Chapter>;
  @useResult
  $Res call({
    String id,
    String title,
    List<ChapterContent> content,
    int? order,
  });
}

/// @nodoc
class _$ChapterCopyWithImpl<$Res, $Val extends Chapter>
    implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? order = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as List<ChapterContent>,
            order: freezed == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChapterImplCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$$ChapterImplCopyWith(
    _$ChapterImpl value,
    $Res Function(_$ChapterImpl) then,
  ) = __$$ChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    List<ChapterContent> content,
    int? order,
  });
}

/// @nodoc
class __$$ChapterImplCopyWithImpl<$Res>
    extends _$ChapterCopyWithImpl<$Res, _$ChapterImpl>
    implements _$$ChapterImplCopyWith<$Res> {
  __$$ChapterImplCopyWithImpl(
    _$ChapterImpl _value,
    $Res Function(_$ChapterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? order = freezed,
  }) {
    return _then(
      _$ChapterImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        content: null == content
            ? _value._content
            : content // ignore: cast_nullable_to_non_nullable
                  as List<ChapterContent>,
        order: freezed == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterImpl implements _Chapter {
  const _$ChapterImpl({
    required this.id,
    required this.title,
    required final List<ChapterContent> content,
    this.order,
  }) : _content = content;

  factory _$ChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<ChapterContent> _content;
  @override
  List<ChapterContent> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final int? order;

  @override
  String toString() {
    return 'Chapter(id: $id, title: $title, content: $content, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    const DeepCollectionEquality().hash(_content),
    order,
  );

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      __$$ChapterImplCopyWithImpl<_$ChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterImplToJson(this);
  }
}

abstract class _Chapter implements Chapter {
  const factory _Chapter({
    required final String id,
    required final String title,
    required final List<ChapterContent> content,
    final int? order,
  }) = _$ChapterImpl;

  factory _Chapter.fromJson(Map<String, dynamic> json) = _$ChapterImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<ChapterContent> get content;
  @override
  int? get order;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChapterContent _$ChapterContentFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'text':
      return TextContent.fromJson(json);
    case 'html':
      return HtmlContent.fromJson(json);
    case 'image':
      return ImageContent.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'ChapterContent',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$ChapterContent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) text,
    required TResult Function(String value) html,
    required TResult Function(String src, String? alt, String? title) image,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? text,
    TResult? Function(String value)? html,
    TResult? Function(String src, String? alt, String? title)? image,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? text,
    TResult Function(String value)? html,
    TResult Function(String src, String? alt, String? title)? image,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContent value) text,
    required TResult Function(HtmlContent value) html,
    required TResult Function(ImageContent value) image,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextContent value)? text,
    TResult? Function(HtmlContent value)? html,
    TResult? Function(ImageContent value)? image,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContent value)? text,
    TResult Function(HtmlContent value)? html,
    TResult Function(ImageContent value)? image,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this ChapterContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterContentCopyWith<$Res> {
  factory $ChapterContentCopyWith(
    ChapterContent value,
    $Res Function(ChapterContent) then,
  ) = _$ChapterContentCopyWithImpl<$Res, ChapterContent>;
}

/// @nodoc
class _$ChapterContentCopyWithImpl<$Res, $Val extends ChapterContent>
    implements $ChapterContentCopyWith<$Res> {
  _$ChapterContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterContent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TextContentImplCopyWith<$Res> {
  factory _$$TextContentImplCopyWith(
    _$TextContentImpl value,
    $Res Function(_$TextContentImpl) then,
  ) = __$$TextContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$TextContentImplCopyWithImpl<$Res>
    extends _$ChapterContentCopyWithImpl<$Res, _$TextContentImpl>
    implements _$$TextContentImplCopyWith<$Res> {
  __$$TextContentImplCopyWithImpl(
    _$TextContentImpl _value,
    $Res Function(_$TextContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$TextContentImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TextContentImpl implements TextContent {
  const _$TextContentImpl(this.value, {final String? $type})
    : $type = $type ?? 'text';

  factory _$TextContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextContentImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChapterContent.text(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextContentImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ChapterContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextContentImplCopyWith<_$TextContentImpl> get copyWith =>
      __$$TextContentImplCopyWithImpl<_$TextContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) text,
    required TResult Function(String value) html,
    required TResult Function(String src, String? alt, String? title) image,
  }) {
    return text(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? text,
    TResult? Function(String value)? html,
    TResult? Function(String src, String? alt, String? title)? image,
  }) {
    return text?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? text,
    TResult Function(String value)? html,
    TResult Function(String src, String? alt, String? title)? image,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContent value) text,
    required TResult Function(HtmlContent value) html,
    required TResult Function(ImageContent value) image,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextContent value)? text,
    TResult? Function(HtmlContent value)? html,
    TResult? Function(ImageContent value)? image,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContent value)? text,
    TResult Function(HtmlContent value)? html,
    TResult Function(ImageContent value)? image,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextContentImplToJson(this);
  }
}

abstract class TextContent implements ChapterContent {
  const factory TextContent(final String value) = _$TextContentImpl;

  factory TextContent.fromJson(Map<String, dynamic> json) =
      _$TextContentImpl.fromJson;

  String get value;

  /// Create a copy of ChapterContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextContentImplCopyWith<_$TextContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HtmlContentImplCopyWith<$Res> {
  factory _$$HtmlContentImplCopyWith(
    _$HtmlContentImpl value,
    $Res Function(_$HtmlContentImpl) then,
  ) = __$$HtmlContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$HtmlContentImplCopyWithImpl<$Res>
    extends _$ChapterContentCopyWithImpl<$Res, _$HtmlContentImpl>
    implements _$$HtmlContentImplCopyWith<$Res> {
  __$$HtmlContentImplCopyWithImpl(
    _$HtmlContentImpl _value,
    $Res Function(_$HtmlContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$HtmlContentImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HtmlContentImpl implements HtmlContent {
  const _$HtmlContentImpl(this.value, {final String? $type})
    : $type = $type ?? 'html';

  factory _$HtmlContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$HtmlContentImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChapterContent.html(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HtmlContentImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ChapterContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HtmlContentImplCopyWith<_$HtmlContentImpl> get copyWith =>
      __$$HtmlContentImplCopyWithImpl<_$HtmlContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) text,
    required TResult Function(String value) html,
    required TResult Function(String src, String? alt, String? title) image,
  }) {
    return html(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? text,
    TResult? Function(String value)? html,
    TResult? Function(String src, String? alt, String? title)? image,
  }) {
    return html?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? text,
    TResult Function(String value)? html,
    TResult Function(String src, String? alt, String? title)? image,
    required TResult orElse(),
  }) {
    if (html != null) {
      return html(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContent value) text,
    required TResult Function(HtmlContent value) html,
    required TResult Function(ImageContent value) image,
  }) {
    return html(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextContent value)? text,
    TResult? Function(HtmlContent value)? html,
    TResult? Function(ImageContent value)? image,
  }) {
    return html?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContent value)? text,
    TResult Function(HtmlContent value)? html,
    TResult Function(ImageContent value)? image,
    required TResult orElse(),
  }) {
    if (html != null) {
      return html(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HtmlContentImplToJson(this);
  }
}

abstract class HtmlContent implements ChapterContent {
  const factory HtmlContent(final String value) = _$HtmlContentImpl;

  factory HtmlContent.fromJson(Map<String, dynamic> json) =
      _$HtmlContentImpl.fromJson;

  String get value;

  /// Create a copy of ChapterContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HtmlContentImplCopyWith<_$HtmlContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageContentImplCopyWith<$Res> {
  factory _$$ImageContentImplCopyWith(
    _$ImageContentImpl value,
    $Res Function(_$ImageContentImpl) then,
  ) = __$$ImageContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String src, String? alt, String? title});
}

/// @nodoc
class __$$ImageContentImplCopyWithImpl<$Res>
    extends _$ChapterContentCopyWithImpl<$Res, _$ImageContentImpl>
    implements _$$ImageContentImplCopyWith<$Res> {
  __$$ImageContentImplCopyWithImpl(
    _$ImageContentImpl _value,
    $Res Function(_$ImageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = null,
    Object? alt = freezed,
    Object? title = freezed,
  }) {
    return _then(
      _$ImageContentImpl(
        null == src
            ? _value.src
            : src // ignore: cast_nullable_to_non_nullable
                  as String,
        alt: freezed == alt
            ? _value.alt
            : alt // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageContentImpl implements ImageContent {
  const _$ImageContentImpl(
    this.src, {
    this.alt,
    this.title,
    final String? $type,
  }) : $type = $type ?? 'image';

  factory _$ImageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageContentImplFromJson(json);

  @override
  final String src;
  @override
  final String? alt;
  @override
  final String? title;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChapterContent.image(src: $src, alt: $alt, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageContentImpl &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.alt, alt) || other.alt == alt) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, src, alt, title);

  /// Create a copy of ChapterContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageContentImplCopyWith<_$ImageContentImpl> get copyWith =>
      __$$ImageContentImplCopyWithImpl<_$ImageContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) text,
    required TResult Function(String value) html,
    required TResult Function(String src, String? alt, String? title) image,
  }) {
    return image(src, alt, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? text,
    TResult? Function(String value)? html,
    TResult? Function(String src, String? alt, String? title)? image,
  }) {
    return image?.call(src, alt, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? text,
    TResult Function(String value)? html,
    TResult Function(String src, String? alt, String? title)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(src, alt, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContent value) text,
    required TResult Function(HtmlContent value) html,
    required TResult Function(ImageContent value) image,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextContent value)? text,
    TResult? Function(HtmlContent value)? html,
    TResult? Function(ImageContent value)? image,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContent value)? text,
    TResult Function(HtmlContent value)? html,
    TResult Function(ImageContent value)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageContentImplToJson(this);
  }
}

abstract class ImageContent implements ChapterContent {
  const factory ImageContent(
    final String src, {
    final String? alt,
    final String? title,
  }) = _$ImageContentImpl;

  factory ImageContent.fromJson(Map<String, dynamic> json) =
      _$ImageContentImpl.fromJson;

  String get src;
  String? get alt;
  String? get title;

  /// Create a copy of ChapterContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageContentImplCopyWith<_$ImageContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ManifestItem _$ManifestItemFromJson(Map<String, dynamic> json) {
  return _ManifestItem.fromJson(json);
}

/// @nodoc
mixin _$ManifestItem {
  String get id => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;
  String get mediaType => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this ManifestItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManifestItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManifestItemCopyWith<ManifestItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManifestItemCopyWith<$Res> {
  factory $ManifestItemCopyWith(
    ManifestItem value,
    $Res Function(ManifestItem) then,
  ) = _$ManifestItemCopyWithImpl<$Res, ManifestItem>;
  @useResult
  $Res call({String id, String href, String mediaType, String? title});
}

/// @nodoc
class _$ManifestItemCopyWithImpl<$Res, $Val extends ManifestItem>
    implements $ManifestItemCopyWith<$Res> {
  _$ManifestItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManifestItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? href = null,
    Object? mediaType = null,
    Object? title = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            href: null == href
                ? _value.href
                : href // ignore: cast_nullable_to_non_nullable
                      as String,
            mediaType: null == mediaType
                ? _value.mediaType
                : mediaType // ignore: cast_nullable_to_non_nullable
                      as String,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ManifestItemImplCopyWith<$Res>
    implements $ManifestItemCopyWith<$Res> {
  factory _$$ManifestItemImplCopyWith(
    _$ManifestItemImpl value,
    $Res Function(_$ManifestItemImpl) then,
  ) = __$$ManifestItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String href, String mediaType, String? title});
}

/// @nodoc
class __$$ManifestItemImplCopyWithImpl<$Res>
    extends _$ManifestItemCopyWithImpl<$Res, _$ManifestItemImpl>
    implements _$$ManifestItemImplCopyWith<$Res> {
  __$$ManifestItemImplCopyWithImpl(
    _$ManifestItemImpl _value,
    $Res Function(_$ManifestItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManifestItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? href = null,
    Object? mediaType = null,
    Object? title = freezed,
  }) {
    return _then(
      _$ManifestItemImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        href: null == href
            ? _value.href
            : href // ignore: cast_nullable_to_non_nullable
                  as String,
        mediaType: null == mediaType
            ? _value.mediaType
            : mediaType // ignore: cast_nullable_to_non_nullable
                  as String,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ManifestItemImpl implements _ManifestItem {
  const _$ManifestItemImpl({
    required this.id,
    required this.href,
    required this.mediaType,
    this.title,
  });

  factory _$ManifestItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManifestItemImplFromJson(json);

  @override
  final String id;
  @override
  final String href;
  @override
  final String mediaType;
  @override
  final String? title;

  @override
  String toString() {
    return 'ManifestItem(id: $id, href: $href, mediaType: $mediaType, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManifestItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, href, mediaType, title);

  /// Create a copy of ManifestItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManifestItemImplCopyWith<_$ManifestItemImpl> get copyWith =>
      __$$ManifestItemImplCopyWithImpl<_$ManifestItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManifestItemImplToJson(this);
  }
}

abstract class _ManifestItem implements ManifestItem {
  const factory _ManifestItem({
    required final String id,
    required final String href,
    required final String mediaType,
    final String? title,
  }) = _$ManifestItemImpl;

  factory _ManifestItem.fromJson(Map<String, dynamic> json) =
      _$ManifestItemImpl.fromJson;

  @override
  String get id;
  @override
  String get href;
  @override
  String get mediaType;
  @override
  String? get title;

  /// Create a copy of ManifestItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManifestItemImplCopyWith<_$ManifestItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpineItem _$SpineItemFromJson(Map<String, dynamic> json) {
  return _SpineItem.fromJson(json);
}

/// @nodoc
mixin _$SpineItem {
  String get idref => throw _privateConstructorUsedError;
  bool get linear => throw _privateConstructorUsedError;

  /// Serializes this SpineItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpineItemCopyWith<SpineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpineItemCopyWith<$Res> {
  factory $SpineItemCopyWith(SpineItem value, $Res Function(SpineItem) then) =
      _$SpineItemCopyWithImpl<$Res, SpineItem>;
  @useResult
  $Res call({String idref, bool linear});
}

/// @nodoc
class _$SpineItemCopyWithImpl<$Res, $Val extends SpineItem>
    implements $SpineItemCopyWith<$Res> {
  _$SpineItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? idref = null, Object? linear = null}) {
    return _then(
      _value.copyWith(
            idref: null == idref
                ? _value.idref
                : idref // ignore: cast_nullable_to_non_nullable
                      as String,
            linear: null == linear
                ? _value.linear
                : linear // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SpineItemImplCopyWith<$Res>
    implements $SpineItemCopyWith<$Res> {
  factory _$$SpineItemImplCopyWith(
    _$SpineItemImpl value,
    $Res Function(_$SpineItemImpl) then,
  ) = __$$SpineItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idref, bool linear});
}

/// @nodoc
class __$$SpineItemImplCopyWithImpl<$Res>
    extends _$SpineItemCopyWithImpl<$Res, _$SpineItemImpl>
    implements _$$SpineItemImplCopyWith<$Res> {
  __$$SpineItemImplCopyWithImpl(
    _$SpineItemImpl _value,
    $Res Function(_$SpineItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? idref = null, Object? linear = null}) {
    return _then(
      _$SpineItemImpl(
        idref: null == idref
            ? _value.idref
            : idref // ignore: cast_nullable_to_non_nullable
                  as String,
        linear: null == linear
            ? _value.linear
            : linear // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpineItemImpl implements _SpineItem {
  const _$SpineItemImpl({required this.idref, this.linear = true});

  factory _$SpineItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpineItemImplFromJson(json);

  @override
  final String idref;
  @override
  @JsonKey()
  final bool linear;

  @override
  String toString() {
    return 'SpineItem(idref: $idref, linear: $linear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpineItemImpl &&
            (identical(other.idref, idref) || other.idref == idref) &&
            (identical(other.linear, linear) || other.linear == linear));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idref, linear);

  /// Create a copy of SpineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpineItemImplCopyWith<_$SpineItemImpl> get copyWith =>
      __$$SpineItemImplCopyWithImpl<_$SpineItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpineItemImplToJson(this);
  }
}

abstract class _SpineItem implements SpineItem {
  const factory _SpineItem({required final String idref, final bool linear}) =
      _$SpineItemImpl;

  factory _SpineItem.fromJson(Map<String, dynamic> json) =
      _$SpineItemImpl.fromJson;

  @override
  String get idref;
  @override
  bool get linear;

  /// Create a copy of SpineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpineItemImplCopyWith<_$SpineItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
