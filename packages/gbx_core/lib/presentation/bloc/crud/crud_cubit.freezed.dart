// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crud_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CrudStateTearOff {
  const _$CrudStateTearOff();

  _$NoData<T, Extra> noData<T, Extra>([Extra? extras]) {
    return _$NoData<T, Extra>(
      extras,
    );
  }

  _$Loading<T, Extra> loading<T, Extra>([Extra? extras]) {
    return _$Loading<T, Extra>(
      extras,
    );
  }

  _$LoadingMore<T, Extra> loadingMore<T, Extra>(T data, [Extra? extras]) {
    return _$LoadingMore<T, Extra>(
      data,
      extras,
    );
  }

  _$Reloading<T, Extra> reloading<T, Extra>(T data, [Extra? extras]) {
    return _$Reloading<T, Extra>(
      data,
      extras,
    );
  }

  _$Loaded<T, Extra> loaded<T, Extra>(T data, [Extra? extras]) {
    return _$Loaded<T, Extra>(
      data,
      extras,
    );
  }

  _$Error<T, Extra> error<T, Extra>(IFailure failure, [Extra? extras]) {
    return _$Error<T, Extra>(
      failure,
      extras,
    );
  }
}

/// @nodoc
const $CrudState = _$CrudStateTearOff();

/// @nodoc
mixin _$CrudState<T, Extra> {
  Extra? get extras => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Extra? extras) noData,
    required TResult Function(Extra? extras) loading,
    required TResult Function(T data, Extra? extras) loadingMore,
    required TResult Function(T data, Extra? extras) reloading,
    required TResult Function(T data, Extra? extras) loaded,
    required TResult Function(IFailure failure, Extra? extras) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Extra? extras)? noData,
    TResult Function(Extra? extras)? loading,
    TResult Function(T data, Extra? extras)? loadingMore,
    TResult Function(T data, Extra? extras)? reloading,
    TResult Function(T data, Extra? extras)? loaded,
    TResult Function(IFailure failure, Extra? extras)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Extra? extras)? noData,
    TResult Function(Extra? extras)? loading,
    TResult Function(T data, Extra? extras)? loadingMore,
    TResult Function(T data, Extra? extras)? reloading,
    TResult Function(T data, Extra? extras)? loaded,
    TResult Function(IFailure failure, Extra? extras)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NoData<T, Extra> value) noData,
    required TResult Function(_$Loading<T, Extra> value) loading,
    required TResult Function(_$LoadingMore<T, Extra> value) loadingMore,
    required TResult Function(_$Reloading<T, Extra> value) reloading,
    required TResult Function(_$Loaded<T, Extra> value) loaded,
    required TResult Function(_$Error<T, Extra> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$NoData<T, Extra> value)? noData,
    TResult Function(_$Loading<T, Extra> value)? loading,
    TResult Function(_$LoadingMore<T, Extra> value)? loadingMore,
    TResult Function(_$Reloading<T, Extra> value)? reloading,
    TResult Function(_$Loaded<T, Extra> value)? loaded,
    TResult Function(_$Error<T, Extra> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NoData<T, Extra> value)? noData,
    TResult Function(_$Loading<T, Extra> value)? loading,
    TResult Function(_$LoadingMore<T, Extra> value)? loadingMore,
    TResult Function(_$Reloading<T, Extra> value)? reloading,
    TResult Function(_$Loaded<T, Extra> value)? loaded,
    TResult Function(_$Error<T, Extra> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CrudStateCopyWith<T, Extra, CrudState<T, Extra>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrudStateCopyWith<T, Extra, $Res> {
  factory $CrudStateCopyWith(
          CrudState<T, Extra> value, $Res Function(CrudState<T, Extra>) then) =
      _$CrudStateCopyWithImpl<T, Extra, $Res>;
  $Res call({Extra? extras});
}

/// @nodoc
class _$CrudStateCopyWithImpl<T, Extra, $Res>
    implements $CrudStateCopyWith<T, Extra, $Res> {
  _$CrudStateCopyWithImpl(this._value, this._then);

  final CrudState<T, Extra> _value;
  // ignore: unused_field
  final $Res Function(CrudState<T, Extra>) _then;

  @override
  $Res call({
    Object? extras = freezed,
  }) {
    return _then(_value.copyWith(
      extras: extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Extra?,
    ));
  }
}

/// @nodoc
abstract class _$$NoDataCopyWith<T, Extra, $Res>
    implements $CrudStateCopyWith<T, Extra, $Res> {
  factory _$$NoDataCopyWith(
          _$NoData<T, Extra> value, $Res Function(_$NoData<T, Extra>) then) =
      __$$NoDataCopyWithImpl<T, Extra, $Res>;
  @override
  $Res call({Extra? extras});
}

/// @nodoc
class __$$NoDataCopyWithImpl<T, Extra, $Res>
    extends _$CrudStateCopyWithImpl<T, Extra, $Res>
    implements _$$NoDataCopyWith<T, Extra, $Res> {
  __$$NoDataCopyWithImpl(
      _$NoData<T, Extra> _value, $Res Function(_$NoData<T, Extra>) _then)
      : super(_value, (v) => _then(v as _$NoData<T, Extra>));

  @override
  _$NoData<T, Extra> get _value => super._value as _$NoData<T, Extra>;

  @override
  $Res call({
    Object? extras = freezed,
  }) {
    return _then(_$NoData<T, Extra>(
      extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Extra?,
    ));
  }
}

/// @nodoc

class _$_$NoData<T, Extra> implements _$NoData<T, Extra> {
  _$_$NoData([this.extras]);

  @override
  final Extra? extras;

  @override
  String toString() {
    return 'CrudState<$T, $Extra>.noData(extras: $extras)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoData<T, Extra> &&
            const DeepCollectionEquality().equals(other.extras, extras));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(extras));

  @JsonKey(ignore: true)
  @override
  _$$NoDataCopyWith<T, Extra, _$NoData<T, Extra>> get copyWith =>
      __$$NoDataCopyWithImpl<T, Extra, _$NoData<T, Extra>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Extra? extras) noData,
    required TResult Function(Extra? extras) loading,
    required TResult Function(T data, Extra? extras) loadingMore,
    required TResult Function(T data, Extra? extras) reloading,
    required TResult Function(T data, Extra? extras) loaded,
    required TResult Function(IFailure failure, Extra? extras) error,
  }) {
    return noData(extras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Extra? extras)? noData,
    TResult Function(Extra? extras)? loading,
    TResult Function(T data, Extra? extras)? loadingMore,
    TResult Function(T data, Extra? extras)? reloading,
    TResult Function(T data, Extra? extras)? loaded,
    TResult Function(IFailure failure, Extra? extras)? error,
  }) {
    return noData?.call(extras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Extra? extras)? noData,
    TResult Function(Extra? extras)? loading,
    TResult Function(T data, Extra? extras)? loadingMore,
    TResult Function(T data, Extra? extras)? reloading,
    TResult Function(T data, Extra? extras)? loaded,
    TResult Function(IFailure failure, Extra? extras)? error,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(extras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NoData<T, Extra> value) noData,
    required TResult Function(_$Loading<T, Extra> value) loading,
    required TResult Function(_$LoadingMore<T, Extra> value) loadingMore,
    required TResult Function(_$Reloading<T, Extra> value) reloading,
    required TResult Function(_$Loaded<T, Extra> value) loaded,
    required TResult Function(_$Error<T, Extra> value) error,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$NoData<T, Extra> value)? noData,
    TResult Function(_$Loading<T, Extra> value)? loading,
    TResult Function(_$LoadingMore<T, Extra> value)? loadingMore,
    TResult Function(_$Reloading<T, Extra> value)? reloading,
    TResult Function(_$Loaded<T, Extra> value)? loaded,
    TResult Function(_$Error<T, Extra> value)? error,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NoData<T, Extra> value)? noData,
    TResult Function(_$Loading<T, Extra> value)? loading,
    TResult Function(_$LoadingMore<T, Extra> value)? loadingMore,
    TResult Function(_$Reloading<T, Extra> value)? reloading,
    TResult Function(_$Loaded<T, Extra> value)? loaded,
    TResult Function(_$Error<T, Extra> value)? error,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _$NoData<T, Extra> implements CrudState<T, Extra> {
  factory _$NoData([Extra? extras]) = _$_$NoData<T, Extra>;

  @override
  Extra? get extras;
  @override
  @JsonKey(ignore: true)
  _$$NoDataCopyWith<T, Extra, _$NoData<T, Extra>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<T, Extra, $Res>
    implements $CrudStateCopyWith<T, Extra, $Res> {
  factory _$$LoadingCopyWith(
          _$Loading<T, Extra> value, $Res Function(_$Loading<T, Extra>) then) =
      __$$LoadingCopyWithImpl<T, Extra, $Res>;
  @override
  $Res call({Extra? extras});
}

/// @nodoc
class __$$LoadingCopyWithImpl<T, Extra, $Res>
    extends _$CrudStateCopyWithImpl<T, Extra, $Res>
    implements _$$LoadingCopyWith<T, Extra, $Res> {
  __$$LoadingCopyWithImpl(
      _$Loading<T, Extra> _value, $Res Function(_$Loading<T, Extra>) _then)
      : super(_value, (v) => _then(v as _$Loading<T, Extra>));

  @override
  _$Loading<T, Extra> get _value => super._value as _$Loading<T, Extra>;

  @override
  $Res call({
    Object? extras = freezed,
  }) {
    return _then(_$Loading<T, Extra>(
      extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Extra?,
    ));
  }
}

/// @nodoc

class _$_$Loading<T, Extra> implements _$Loading<T, Extra> {
  _$_$Loading([this.extras]);

  @override
  final Extra? extras;

  @override
  String toString() {
    return 'CrudState<$T, $Extra>.loading(extras: $extras)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loading<T, Extra> &&
            const DeepCollectionEquality().equals(other.extras, extras));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(extras));

  @JsonKey(ignore: true)
  @override
  _$$LoadingCopyWith<T, Extra, _$Loading<T, Extra>> get copyWith =>
      __$$LoadingCopyWithImpl<T, Extra, _$Loading<T, Extra>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Extra? extras) noData,
    required TResult Function(Extra? extras) loading,
    required TResult Function(T data, Extra? extras) loadingMore,
    required TResult Function(T data, Extra? extras) reloading,
    required TResult Function(T data, Extra? extras) loaded,
    required TResult Function(IFailure failure, Extra? extras) error,
  }) {
    return loading(extras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Extra? extras)? noData,
    TResult Function(Extra? extras)? loading,
    TResult Function(T data, Extra? extras)? loadingMore,
    TResult Function(T data, Extra? extras)? reloading,
    TResult Function(T data, Extra? extras)? loaded,
    TResult Function(IFailure failure, Extra? extras)? error,
  }) {
    return loading?.call(extras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Extra? extras)? noData,
    TResult Function(Extra? extras)? loading,
    TResult Function(T data, Extra? extras)? loadingMore,
    TResult Function(T data, Extra? extras)? reloading,
    TResult Function(T data, Extra? extras)? loaded,
    TResult Function(IFailure failure, Extra? extras)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(extras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NoData<T, Extra> value) noData,
    required TResult Function(_$Loading<T, Extra> value) loading,
    required TResult Function(_$LoadingMore<T, Extra> value) loadingMore,
    required TResult Function(_$Reloading<T, Extra> value) reloading,
    required TResult Function(_$Loaded<T, Extra> value) loaded,
    required TResult Function(_$Error<T, Extra> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$NoData<T, Extra> value)? noData,
    TResult Function(_$Loading<T, Extra> value)? loading,
    TResult Function(_$LoadingMore<T, Extra> value)? loadingMore,
    TResult Function(_$Reloading<T, Extra> value)? reloading,
    TResult Function(_$Loaded<T, Extra> value)? loaded,
    TResult Function(_$Error<T, Extra> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NoData<T, Extra> value)? noData,
    TResult Function(_$Loading<T, Extra> value)? loading,
    TResult Function(_$LoadingMore<T, Extra> value)? loadingMore,
    TResult Function(_$Reloading<T, Extra> value)? reloading,
    TResult Function(_$Loaded<T, Extra> value)? loaded,
    TResult Function(_$Error<T, Extra> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$Loading<T, Extra> implements CrudState<T, Extra> {
  factory _$Loading([Extra? extras]) = _$_$Loading<T, Extra>;

  @override
  Extra? get extras;
  @override
  @JsonKey(ignore: true)
  _$$LoadingCopyWith<T, Extra, _$Loading<T, Extra>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingMoreCopyWith<T, Extra, $Res>
    implements $CrudStateCopyWith<T, Extra, $Res> {
  factory _$$LoadingMoreCopyWith(_$LoadingMore<T, Extra> value,
          $Res Function(_$LoadingMore<T, Extra>) then) =
      __$$LoadingMoreCopyWithImpl<T, Extra, $Res>;
  @override
  $Res call({T data, Extra? extras});
}

/// @nodoc
class __$$LoadingMoreCopyWithImpl<T, Extra, $Res>
    extends _$CrudStateCopyWithImpl<T, Extra, $Res>
    implements _$$LoadingMoreCopyWith<T, Extra, $Res> {
  __$$LoadingMoreCopyWithImpl(_$LoadingMore<T, Extra> _value,
      $Res Function(_$LoadingMore<T, Extra>) _then)
      : super(_value, (v) => _then(v as _$LoadingMore<T, Extra>));

  @override
  _$LoadingMore<T, Extra> get _value => super._value as _$LoadingMore<T, Extra>;

  @override
  $Res call({
    Object? data = freezed,
    Object? extras = freezed,
  }) {
    return _then(_$LoadingMore<T, Extra>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Extra?,
    ));
  }
}

/// @nodoc

class _$_$LoadingMore<T, Extra> implements _$LoadingMore<T, Extra> {
  _$_$LoadingMore(this.data, [this.extras]);

  @override
  final T data;
  @override
  final Extra? extras;

  @override
  String toString() {
    return 'CrudState<$T, $Extra>.loadingMore(data: $data, extras: $extras)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingMore<T, Extra> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.extras, extras));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(extras));

  @JsonKey(ignore: true)
  @override
  _$$LoadingMoreCopyWith<T, Extra, _$LoadingMore<T, Extra>> get copyWith =>
      __$$LoadingMoreCopyWithImpl<T, Extra, _$LoadingMore<T, Extra>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Extra? extras) noData,
    required TResult Function(Extra? extras) loading,
    required TResult Function(T data, Extra? extras) loadingMore,
    required TResult Function(T data, Extra? extras) reloading,
    required TResult Function(T data, Extra? extras) loaded,
    required TResult Function(IFailure failure, Extra? extras) error,
  }) {
    return loadingMore(data, extras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Extra? extras)? noData,
    TResult Function(Extra? extras)? loading,
    TResult Function(T data, Extra? extras)? loadingMore,
    TResult Function(T data, Extra? extras)? reloading,
    TResult Function(T data, Extra? extras)? loaded,
    TResult Function(IFailure failure, Extra? extras)? error,
  }) {
    return loadingMore?.call(data, extras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Extra? extras)? noData,
    TResult Function(Extra? extras)? loading,
    TResult Function(T data, Extra? extras)? loadingMore,
    TResult Function(T data, Extra? extras)? reloading,
    TResult Function(T data, Extra? extras)? loaded,
    TResult Function(IFailure failure, Extra? extras)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(data, extras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NoData<T, Extra> value) noData,
    required TResult Function(_$Loading<T, Extra> value) loading,
    required TResult Function(_$LoadingMore<T, Extra> value) loadingMore,
    required TResult Function(_$Reloading<T, Extra> value) reloading,
    required TResult Function(_$Loaded<T, Extra> value) loaded,
    required TResult Function(_$Error<T, Extra> value) error,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$NoData<T, Extra> value)? noData,
    TResult Function(_$Loading<T, Extra> value)? loading,
    TResult Function(_$LoadingMore<T, Extra> value)? loadingMore,
    TResult Function(_$Reloading<T, Extra> value)? reloading,
    TResult Function(_$Loaded<T, Extra> value)? loaded,
    TResult Function(_$Error<T, Extra> value)? error,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NoData<T, Extra> value)? noData,
    TResult Function(_$Loading<T, Extra> value)? loading,
    TResult Function(_$LoadingMore<T, Extra> value)? loadingMore,
    TResult Function(_$Reloading<T, Extra> value)? reloading,
    TResult Function(_$Loaded<T, Extra> value)? loaded,
    TResult Function(_$Error<T, Extra> value)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _$LoadingMore<T, Extra> implements CrudState<T, Extra> {
  factory _$LoadingMore(T data, [Extra? extras]) = _$_$LoadingMore<T, Extra>;

  T get data;
  @override
  Extra? get extras;
  @override
  @JsonKey(ignore: true)
  _$$LoadingMoreCopyWith<T, Extra, _$LoadingMore<T, Extra>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReloadingCopyWith<T, Extra, $Res>
    implements $CrudStateCopyWith<T, Extra, $Res> {
  factory _$$ReloadingCopyWith(_$Reloading<T, Extra> value,
          $Res Function(_$Reloading<T, Extra>) then) =
      __$$ReloadingCopyWithImpl<T, Extra, $Res>;
  @override
  $Res call({T data, Extra? extras});
}

/// @nodoc
class __$$ReloadingCopyWithImpl<T, Extra, $Res>
    extends _$CrudStateCopyWithImpl<T, Extra, $Res>
    implements _$$ReloadingCopyWith<T, Extra, $Res> {
  __$$ReloadingCopyWithImpl(
      _$Reloading<T, Extra> _value, $Res Function(_$Reloading<T, Extra>) _then)
      : super(_value, (v) => _then(v as _$Reloading<T, Extra>));

  @override
  _$Reloading<T, Extra> get _value => super._value as _$Reloading<T, Extra>;

  @override
  $Res call({
    Object? data = freezed,
    Object? extras = freezed,
  }) {
    return _then(_$Reloading<T, Extra>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Extra?,
    ));
  }
}

/// @nodoc

class _$_$Reloading<T, Extra> implements _$Reloading<T, Extra> {
  _$_$Reloading(this.data, [this.extras]);

  @override
  final T data;
  @override
  final Extra? extras;

  @override
  String toString() {
    return 'CrudState<$T, $Extra>.reloading(data: $data, extras: $extras)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Reloading<T, Extra> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.extras, extras));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(extras));

  @JsonKey(ignore: true)
  @override
  _$$ReloadingCopyWith<T, Extra, _$Reloading<T, Extra>> get copyWith =>
      __$$ReloadingCopyWithImpl<T, Extra, _$Reloading<T, Extra>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Extra? extras) noData,
    required TResult Function(Extra? extras) loading,
    required TResult Function(T data, Extra? extras) loadingMore,
    required TResult Function(T data, Extra? extras) reloading,
    required TResult Function(T data, Extra? extras) loaded,
    required TResult Function(IFailure failure, Extra? extras) error,
  }) {
    return reloading(data, extras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Extra? extras)? noData,
    TResult Function(Extra? extras)? loading,
    TResult Function(T data, Extra? extras)? loadingMore,
    TResult Function(T data, Extra? extras)? reloading,
    TResult Function(T data, Extra? extras)? loaded,
    TResult Function(IFailure failure, Extra? extras)? error,
  }) {
    return reloading?.call(data, extras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Extra? extras)? noData,
    TResult Function(Extra? extras)? loading,
    TResult Function(T data, Extra? extras)? loadingMore,
    TResult Function(T data, Extra? extras)? reloading,
    TResult Function(T data, Extra? extras)? loaded,
    TResult Function(IFailure failure, Extra? extras)? error,
    required TResult orElse(),
  }) {
    if (reloading != null) {
      return reloading(data, extras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NoData<T, Extra> value) noData,
    required TResult Function(_$Loading<T, Extra> value) loading,
    required TResult Function(_$LoadingMore<T, Extra> value) loadingMore,
    required TResult Function(_$Reloading<T, Extra> value) reloading,
    required TResult Function(_$Loaded<T, Extra> value) loaded,
    required TResult Function(_$Error<T, Extra> value) error,
  }) {
    return reloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$NoData<T, Extra> value)? noData,
    TResult Function(_$Loading<T, Extra> value)? loading,
    TResult Function(_$LoadingMore<T, Extra> value)? loadingMore,
    TResult Function(_$Reloading<T, Extra> value)? reloading,
    TResult Function(_$Loaded<T, Extra> value)? loaded,
    TResult Function(_$Error<T, Extra> value)? error,
  }) {
    return reloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NoData<T, Extra> value)? noData,
    TResult Function(_$Loading<T, Extra> value)? loading,
    TResult Function(_$LoadingMore<T, Extra> value)? loadingMore,
    TResult Function(_$Reloading<T, Extra> value)? reloading,
    TResult Function(_$Loaded<T, Extra> value)? loaded,
    TResult Function(_$Error<T, Extra> value)? error,
    required TResult orElse(),
  }) {
    if (reloading != null) {
      return reloading(this);
    }
    return orElse();
  }
}

abstract class _$Reloading<T, Extra> implements CrudState<T, Extra> {
  factory _$Reloading(T data, [Extra? extras]) = _$_$Reloading<T, Extra>;

  T get data;
  @override
  Extra? get extras;
  @override
  @JsonKey(ignore: true)
  _$$ReloadingCopyWith<T, Extra, _$Reloading<T, Extra>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedCopyWith<T, Extra, $Res>
    implements $CrudStateCopyWith<T, Extra, $Res> {
  factory _$$LoadedCopyWith(
          _$Loaded<T, Extra> value, $Res Function(_$Loaded<T, Extra>) then) =
      __$$LoadedCopyWithImpl<T, Extra, $Res>;
  @override
  $Res call({T data, Extra? extras});
}

/// @nodoc
class __$$LoadedCopyWithImpl<T, Extra, $Res>
    extends _$CrudStateCopyWithImpl<T, Extra, $Res>
    implements _$$LoadedCopyWith<T, Extra, $Res> {
  __$$LoadedCopyWithImpl(
      _$Loaded<T, Extra> _value, $Res Function(_$Loaded<T, Extra>) _then)
      : super(_value, (v) => _then(v as _$Loaded<T, Extra>));

  @override
  _$Loaded<T, Extra> get _value => super._value as _$Loaded<T, Extra>;

  @override
  $Res call({
    Object? data = freezed,
    Object? extras = freezed,
  }) {
    return _then(_$Loaded<T, Extra>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Extra?,
    ));
  }
}

/// @nodoc

class _$_$Loaded<T, Extra> implements _$Loaded<T, Extra> {
  _$_$Loaded(this.data, [this.extras]);

  @override
  final T data;
  @override
  final Extra? extras;

  @override
  String toString() {
    return 'CrudState<$T, $Extra>.loaded(data: $data, extras: $extras)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded<T, Extra> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.extras, extras));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(extras));

  @JsonKey(ignore: true)
  @override
  _$$LoadedCopyWith<T, Extra, _$Loaded<T, Extra>> get copyWith =>
      __$$LoadedCopyWithImpl<T, Extra, _$Loaded<T, Extra>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Extra? extras) noData,
    required TResult Function(Extra? extras) loading,
    required TResult Function(T data, Extra? extras) loadingMore,
    required TResult Function(T data, Extra? extras) reloading,
    required TResult Function(T data, Extra? extras) loaded,
    required TResult Function(IFailure failure, Extra? extras) error,
  }) {
    return loaded(data, extras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Extra? extras)? noData,
    TResult Function(Extra? extras)? loading,
    TResult Function(T data, Extra? extras)? loadingMore,
    TResult Function(T data, Extra? extras)? reloading,
    TResult Function(T data, Extra? extras)? loaded,
    TResult Function(IFailure failure, Extra? extras)? error,
  }) {
    return loaded?.call(data, extras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Extra? extras)? noData,
    TResult Function(Extra? extras)? loading,
    TResult Function(T data, Extra? extras)? loadingMore,
    TResult Function(T data, Extra? extras)? reloading,
    TResult Function(T data, Extra? extras)? loaded,
    TResult Function(IFailure failure, Extra? extras)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data, extras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NoData<T, Extra> value) noData,
    required TResult Function(_$Loading<T, Extra> value) loading,
    required TResult Function(_$LoadingMore<T, Extra> value) loadingMore,
    required TResult Function(_$Reloading<T, Extra> value) reloading,
    required TResult Function(_$Loaded<T, Extra> value) loaded,
    required TResult Function(_$Error<T, Extra> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$NoData<T, Extra> value)? noData,
    TResult Function(_$Loading<T, Extra> value)? loading,
    TResult Function(_$LoadingMore<T, Extra> value)? loadingMore,
    TResult Function(_$Reloading<T, Extra> value)? reloading,
    TResult Function(_$Loaded<T, Extra> value)? loaded,
    TResult Function(_$Error<T, Extra> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NoData<T, Extra> value)? noData,
    TResult Function(_$Loading<T, Extra> value)? loading,
    TResult Function(_$LoadingMore<T, Extra> value)? loadingMore,
    TResult Function(_$Reloading<T, Extra> value)? reloading,
    TResult Function(_$Loaded<T, Extra> value)? loaded,
    TResult Function(_$Error<T, Extra> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _$Loaded<T, Extra> implements CrudState<T, Extra> {
  factory _$Loaded(T data, [Extra? extras]) = _$_$Loaded<T, Extra>;

  T get data;
  @override
  Extra? get extras;
  @override
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<T, Extra, _$Loaded<T, Extra>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<T, Extra, $Res>
    implements $CrudStateCopyWith<T, Extra, $Res> {
  factory _$$ErrorCopyWith(
          _$Error<T, Extra> value, $Res Function(_$Error<T, Extra>) then) =
      __$$ErrorCopyWithImpl<T, Extra, $Res>;
  @override
  $Res call({IFailure failure, Extra? extras});
}

/// @nodoc
class __$$ErrorCopyWithImpl<T, Extra, $Res>
    extends _$CrudStateCopyWithImpl<T, Extra, $Res>
    implements _$$ErrorCopyWith<T, Extra, $Res> {
  __$$ErrorCopyWithImpl(
      _$Error<T, Extra> _value, $Res Function(_$Error<T, Extra>) _then)
      : super(_value, (v) => _then(v as _$Error<T, Extra>));

  @override
  _$Error<T, Extra> get _value => super._value as _$Error<T, Extra>;

  @override
  $Res call({
    Object? failure = freezed,
    Object? extras = freezed,
  }) {
    return _then(_$Error<T, Extra>(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as IFailure,
      extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Extra?,
    ));
  }
}

/// @nodoc

class _$_$Error<T, Extra> implements _$Error<T, Extra> {
  _$_$Error(this.failure, [this.extras]);

  @override
  final IFailure failure;
  @override
  final Extra? extras;

  @override
  String toString() {
    return 'CrudState<$T, $Extra>.error(failure: $failure, extras: $extras)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error<T, Extra> &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.extras, extras));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(extras));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<T, Extra, _$Error<T, Extra>> get copyWith =>
      __$$ErrorCopyWithImpl<T, Extra, _$Error<T, Extra>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Extra? extras) noData,
    required TResult Function(Extra? extras) loading,
    required TResult Function(T data, Extra? extras) loadingMore,
    required TResult Function(T data, Extra? extras) reloading,
    required TResult Function(T data, Extra? extras) loaded,
    required TResult Function(IFailure failure, Extra? extras) error,
  }) {
    return error(failure, extras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Extra? extras)? noData,
    TResult Function(Extra? extras)? loading,
    TResult Function(T data, Extra? extras)? loadingMore,
    TResult Function(T data, Extra? extras)? reloading,
    TResult Function(T data, Extra? extras)? loaded,
    TResult Function(IFailure failure, Extra? extras)? error,
  }) {
    return error?.call(failure, extras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Extra? extras)? noData,
    TResult Function(Extra? extras)? loading,
    TResult Function(T data, Extra? extras)? loadingMore,
    TResult Function(T data, Extra? extras)? reloading,
    TResult Function(T data, Extra? extras)? loaded,
    TResult Function(IFailure failure, Extra? extras)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure, extras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NoData<T, Extra> value) noData,
    required TResult Function(_$Loading<T, Extra> value) loading,
    required TResult Function(_$LoadingMore<T, Extra> value) loadingMore,
    required TResult Function(_$Reloading<T, Extra> value) reloading,
    required TResult Function(_$Loaded<T, Extra> value) loaded,
    required TResult Function(_$Error<T, Extra> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$NoData<T, Extra> value)? noData,
    TResult Function(_$Loading<T, Extra> value)? loading,
    TResult Function(_$LoadingMore<T, Extra> value)? loadingMore,
    TResult Function(_$Reloading<T, Extra> value)? reloading,
    TResult Function(_$Loaded<T, Extra> value)? loaded,
    TResult Function(_$Error<T, Extra> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NoData<T, Extra> value)? noData,
    TResult Function(_$Loading<T, Extra> value)? loading,
    TResult Function(_$LoadingMore<T, Extra> value)? loadingMore,
    TResult Function(_$Reloading<T, Extra> value)? reloading,
    TResult Function(_$Loaded<T, Extra> value)? loaded,
    TResult Function(_$Error<T, Extra> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$Error<T, Extra> implements CrudState<T, Extra> {
  factory _$Error(IFailure failure, [Extra? extras]) = _$_$Error<T, Extra>;

  IFailure get failure;
  @override
  Extra? get extras;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<T, Extra, _$Error<T, Extra>> get copyWith =>
      throw _privateConstructorUsedError;
}
