// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
class _$NewsTearOff {
  const _$NewsTearOff();

  _News call(
      {required String id,
      required String title,
      required String text,
      required DateTime publishDate,
      String? headerImage}) {
    return _News(
      id: id,
      title: title,
      text: text,
      publishDate: publishDate,
      headerImage: headerImage,
    );
  }

  News fromJson(Map<String, Object?> json) {
    return News.fromJson(json);
  }
}

/// @nodoc
const $News = _$NewsTearOff();

/// @nodoc
mixin _$News {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  DateTime get publishDate => throw _privateConstructorUsedError;
  String? get headerImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String text,
      DateTime publishDate,
      String? headerImage});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res> implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  final News _value;
  // ignore: unused_field
  final $Res Function(News) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? publishDate = freezed,
    Object? headerImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      publishDate: publishDate == freezed
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      headerImage: headerImage == freezed
          ? _value.headerImage
          : headerImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$NewsCopyWith(_News value, $Res Function(_News) then) =
      __$NewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String text,
      DateTime publishDate,
      String? headerImage});
}

/// @nodoc
class __$NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res>
    implements _$NewsCopyWith<$Res> {
  __$NewsCopyWithImpl(_News _value, $Res Function(_News) _then)
      : super(_value, (v) => _then(v as _News));

  @override
  _News get _value => super._value as _News;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? publishDate = freezed,
    Object? headerImage = freezed,
  }) {
    return _then(_News(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      publishDate: publishDate == freezed
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      headerImage: headerImage == freezed
          ? _value.headerImage
          : headerImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_News implements _News {
  _$_News(
      {required this.id,
      required this.title,
      required this.text,
      required this.publishDate,
      this.headerImage});

  factory _$_News.fromJson(Map<String, dynamic> json) => _$$_NewsFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String text;
  @override
  final DateTime publishDate;
  @override
  final String? headerImage;

  @override
  String toString() {
    return 'News(id: $id, title: $title, text: $text, publishDate: $publishDate, headerImage: $headerImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _News &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.publishDate, publishDate) &&
            const DeepCollectionEquality()
                .equals(other.headerImage, headerImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(publishDate),
      const DeepCollectionEquality().hash(headerImage));

  @JsonKey(ignore: true)
  @override
  _$NewsCopyWith<_News> get copyWith =>
      __$NewsCopyWithImpl<_News>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsToJson(this);
  }
}

abstract class _News implements News {
  factory _News(
      {required String id,
      required String title,
      required String text,
      required DateTime publishDate,
      String? headerImage}) = _$_News;

  factory _News.fromJson(Map<String, dynamic> json) = _$_News.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get text;
  @override
  DateTime get publishDate;
  @override
  String? get headerImage;
  @override
  @JsonKey(ignore: true)
  _$NewsCopyWith<_News> get copyWith => throw _privateConstructorUsedError;
}
