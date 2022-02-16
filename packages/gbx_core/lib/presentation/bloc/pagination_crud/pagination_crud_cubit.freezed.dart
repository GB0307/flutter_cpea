// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pagination_crud_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaginationCrudStateTearOff {
  const _$PaginationCrudStateTearOff();

  _PaginationCrudState<T> call<T>(
      {required int currentPage, required List<T> allItems}) {
    return _PaginationCrudState<T>(
      currentPage: currentPage,
      allItems: allItems,
    );
  }
}

/// @nodoc
const $PaginationCrudState = _$PaginationCrudStateTearOff();

/// @nodoc
mixin _$PaginationCrudState<T> {
  int get currentPage => throw _privateConstructorUsedError;
  List<T> get allItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationCrudStateCopyWith<T, PaginationCrudState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCrudStateCopyWith<T, $Res> {
  factory $PaginationCrudStateCopyWith(PaginationCrudState<T> value,
          $Res Function(PaginationCrudState<T>) then) =
      _$PaginationCrudStateCopyWithImpl<T, $Res>;
  $Res call({int currentPage, List<T> allItems});
}

/// @nodoc
class _$PaginationCrudStateCopyWithImpl<T, $Res>
    implements $PaginationCrudStateCopyWith<T, $Res> {
  _$PaginationCrudStateCopyWithImpl(this._value, this._then);

  final PaginationCrudState<T> _value;
  // ignore: unused_field
  final $Res Function(PaginationCrudState<T>) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? allItems = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      allItems: allItems == freezed
          ? _value.allItems
          : allItems // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
abstract class _$PaginationCrudStateCopyWith<T, $Res>
    implements $PaginationCrudStateCopyWith<T, $Res> {
  factory _$PaginationCrudStateCopyWith(_PaginationCrudState<T> value,
          $Res Function(_PaginationCrudState<T>) then) =
      __$PaginationCrudStateCopyWithImpl<T, $Res>;
  @override
  $Res call({int currentPage, List<T> allItems});
}

/// @nodoc
class __$PaginationCrudStateCopyWithImpl<T, $Res>
    extends _$PaginationCrudStateCopyWithImpl<T, $Res>
    implements _$PaginationCrudStateCopyWith<T, $Res> {
  __$PaginationCrudStateCopyWithImpl(_PaginationCrudState<T> _value,
      $Res Function(_PaginationCrudState<T>) _then)
      : super(_value, (v) => _then(v as _PaginationCrudState<T>));

  @override
  _PaginationCrudState<T> get _value => super._value as _PaginationCrudState<T>;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? allItems = freezed,
  }) {
    return _then(_PaginationCrudState<T>(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      allItems: allItems == freezed
          ? _value.allItems
          : allItems // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$_PaginationCrudState<T> implements _PaginationCrudState<T> {
  _$_PaginationCrudState({required this.currentPage, required this.allItems});

  @override
  final int currentPage;
  @override
  final List<T> allItems;

  @override
  String toString() {
    return 'PaginationCrudState<$T>(currentPage: $currentPage, allItems: $allItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginationCrudState<T> &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.allItems, allItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(allItems));

  @JsonKey(ignore: true)
  @override
  _$PaginationCrudStateCopyWith<T, _PaginationCrudState<T>> get copyWith =>
      __$PaginationCrudStateCopyWithImpl<T, _PaginationCrudState<T>>(
          this, _$identity);
}

abstract class _PaginationCrudState<T> implements PaginationCrudState<T> {
  factory _PaginationCrudState(
      {required int currentPage,
      required List<T> allItems}) = _$_PaginationCrudState<T>;

  @override
  int get currentPage;
  @override
  List<T> get allItems;
  @override
  @JsonKey(ignore: true)
  _$PaginationCrudStateCopyWith<T, _PaginationCrudState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
