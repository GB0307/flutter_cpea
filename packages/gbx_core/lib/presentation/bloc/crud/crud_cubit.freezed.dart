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

  _$NoData<T> noData<T>() {
    return _$NoData<T>();
  }

  _$Loading<T> loading<T>() {
    return _$Loading<T>();
  }

  _$Reloading<T> reloading<T>(T data) {
    return _$Reloading<T>(
      data,
    );
  }

  _$Loaded<T> loaded<T>(T data) {
    return _$Loaded<T>(
      data,
    );
  }

  _$Error<T> error<T>(IFailure failure) {
    return _$Error<T>(
      failure,
    );
  }
}

/// @nodoc
const $CrudState = _$CrudStateTearOff();

/// @nodoc
mixin _$CrudState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function() loading,
    required TResult Function(T data) reloading,
    required TResult Function(T data) loaded,
    required TResult Function(IFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function()? loading,
    TResult Function(T data)? reloading,
    TResult Function(T data)? loaded,
    TResult Function(IFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function()? loading,
    TResult Function(T data)? reloading,
    TResult Function(T data)? loaded,
    TResult Function(IFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NoData<T> value) noData,
    required TResult Function(_$Loading<T> value) loading,
    required TResult Function(_$Reloading<T> value) reloading,
    required TResult Function(_$Loaded<T> value) loaded,
    required TResult Function(_$Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$NoData<T> value)? noData,
    TResult Function(_$Loading<T> value)? loading,
    TResult Function(_$Reloading<T> value)? reloading,
    TResult Function(_$Loaded<T> value)? loaded,
    TResult Function(_$Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NoData<T> value)? noData,
    TResult Function(_$Loading<T> value)? loading,
    TResult Function(_$Reloading<T> value)? reloading,
    TResult Function(_$Loaded<T> value)? loaded,
    TResult Function(_$Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrudStateCopyWith<T, $Res> {
  factory $CrudStateCopyWith(
          CrudState<T> value, $Res Function(CrudState<T>) then) =
      _$CrudStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CrudStateCopyWithImpl<T, $Res> implements $CrudStateCopyWith<T, $Res> {
  _$CrudStateCopyWithImpl(this._value, this._then);

  final CrudState<T> _value;
  // ignore: unused_field
  final $Res Function(CrudState<T>) _then;
}

/// @nodoc
abstract class _$$NoDataCopyWith<T, $Res> {
  factory _$$NoDataCopyWith(
          _$NoData<T> value, $Res Function(_$NoData<T>) then) =
      __$$NoDataCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoDataCopyWithImpl<T, $Res> extends _$CrudStateCopyWithImpl<T, $Res>
    implements _$$NoDataCopyWith<T, $Res> {
  __$$NoDataCopyWithImpl(_$NoData<T> _value, $Res Function(_$NoData<T>) _then)
      : super(_value, (v) => _then(v as _$NoData<T>));

  @override
  _$NoData<T> get _value => super._value as _$NoData<T>;
}

/// @nodoc

class _$_$NoData<T> implements _$NoData<T> {
  const _$_$NoData();

  @override
  String toString() {
    return 'CrudState<$T>.noData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoData<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function() loading,
    required TResult Function(T data) reloading,
    required TResult Function(T data) loaded,
    required TResult Function(IFailure failure) error,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function()? loading,
    TResult Function(T data)? reloading,
    TResult Function(T data)? loaded,
    TResult Function(IFailure failure)? error,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function()? loading,
    TResult Function(T data)? reloading,
    TResult Function(T data)? loaded,
    TResult Function(IFailure failure)? error,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NoData<T> value) noData,
    required TResult Function(_$Loading<T> value) loading,
    required TResult Function(_$Reloading<T> value) reloading,
    required TResult Function(_$Loaded<T> value) loaded,
    required TResult Function(_$Error<T> value) error,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$NoData<T> value)? noData,
    TResult Function(_$Loading<T> value)? loading,
    TResult Function(_$Reloading<T> value)? reloading,
    TResult Function(_$Loaded<T> value)? loaded,
    TResult Function(_$Error<T> value)? error,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NoData<T> value)? noData,
    TResult Function(_$Loading<T> value)? loading,
    TResult Function(_$Reloading<T> value)? reloading,
    TResult Function(_$Loaded<T> value)? loaded,
    TResult Function(_$Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _$NoData<T> implements CrudState<T> {
  const factory _$NoData() = _$_$NoData<T>;
}

/// @nodoc
abstract class _$$LoadingCopyWith<T, $Res> {
  factory _$$LoadingCopyWith(
          _$Loading<T> value, $Res Function(_$Loading<T>) then) =
      __$$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<T, $Res> extends _$CrudStateCopyWithImpl<T, $Res>
    implements _$$LoadingCopyWith<T, $Res> {
  __$$LoadingCopyWithImpl(
      _$Loading<T> _value, $Res Function(_$Loading<T>) _then)
      : super(_value, (v) => _then(v as _$Loading<T>));

  @override
  _$Loading<T> get _value => super._value as _$Loading<T>;
}

/// @nodoc

class _$_$Loading<T> implements _$Loading<T> {
  const _$_$Loading();

  @override
  String toString() {
    return 'CrudState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function() loading,
    required TResult Function(T data) reloading,
    required TResult Function(T data) loaded,
    required TResult Function(IFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function()? loading,
    TResult Function(T data)? reloading,
    TResult Function(T data)? loaded,
    TResult Function(IFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function()? loading,
    TResult Function(T data)? reloading,
    TResult Function(T data)? loaded,
    TResult Function(IFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NoData<T> value) noData,
    required TResult Function(_$Loading<T> value) loading,
    required TResult Function(_$Reloading<T> value) reloading,
    required TResult Function(_$Loaded<T> value) loaded,
    required TResult Function(_$Error<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$NoData<T> value)? noData,
    TResult Function(_$Loading<T> value)? loading,
    TResult Function(_$Reloading<T> value)? reloading,
    TResult Function(_$Loaded<T> value)? loaded,
    TResult Function(_$Error<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NoData<T> value)? noData,
    TResult Function(_$Loading<T> value)? loading,
    TResult Function(_$Reloading<T> value)? reloading,
    TResult Function(_$Loaded<T> value)? loaded,
    TResult Function(_$Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$Loading<T> implements CrudState<T> {
  const factory _$Loading() = _$_$Loading<T>;
}

/// @nodoc
abstract class _$$ReloadingCopyWith<T, $Res> {
  factory _$$ReloadingCopyWith(
          _$Reloading<T> value, $Res Function(_$Reloading<T>) then) =
      __$$ReloadingCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$ReloadingCopyWithImpl<T, $Res>
    extends _$CrudStateCopyWithImpl<T, $Res>
    implements _$$ReloadingCopyWith<T, $Res> {
  __$$ReloadingCopyWithImpl(
      _$Reloading<T> _value, $Res Function(_$Reloading<T>) _then)
      : super(_value, (v) => _then(v as _$Reloading<T>));

  @override
  _$Reloading<T> get _value => super._value as _$Reloading<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Reloading<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_$Reloading<T> implements _$Reloading<T> {
  _$_$Reloading(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'CrudState<$T>.reloading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Reloading<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$ReloadingCopyWith<T, _$Reloading<T>> get copyWith =>
      __$$ReloadingCopyWithImpl<T, _$Reloading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function() loading,
    required TResult Function(T data) reloading,
    required TResult Function(T data) loaded,
    required TResult Function(IFailure failure) error,
  }) {
    return reloading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function()? loading,
    TResult Function(T data)? reloading,
    TResult Function(T data)? loaded,
    TResult Function(IFailure failure)? error,
  }) {
    return reloading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function()? loading,
    TResult Function(T data)? reloading,
    TResult Function(T data)? loaded,
    TResult Function(IFailure failure)? error,
    required TResult orElse(),
  }) {
    if (reloading != null) {
      return reloading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NoData<T> value) noData,
    required TResult Function(_$Loading<T> value) loading,
    required TResult Function(_$Reloading<T> value) reloading,
    required TResult Function(_$Loaded<T> value) loaded,
    required TResult Function(_$Error<T> value) error,
  }) {
    return reloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$NoData<T> value)? noData,
    TResult Function(_$Loading<T> value)? loading,
    TResult Function(_$Reloading<T> value)? reloading,
    TResult Function(_$Loaded<T> value)? loaded,
    TResult Function(_$Error<T> value)? error,
  }) {
    return reloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NoData<T> value)? noData,
    TResult Function(_$Loading<T> value)? loading,
    TResult Function(_$Reloading<T> value)? reloading,
    TResult Function(_$Loaded<T> value)? loaded,
    TResult Function(_$Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (reloading != null) {
      return reloading(this);
    }
    return orElse();
  }
}

abstract class _$Reloading<T> implements CrudState<T> {
  factory _$Reloading(T data) = _$_$Reloading<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ReloadingCopyWith<T, _$Reloading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedCopyWith<T, $Res> {
  factory _$$LoadedCopyWith(
          _$Loaded<T> value, $Res Function(_$Loaded<T>) then) =
      __$$LoadedCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$LoadedCopyWithImpl<T, $Res> extends _$CrudStateCopyWithImpl<T, $Res>
    implements _$$LoadedCopyWith<T, $Res> {
  __$$LoadedCopyWithImpl(_$Loaded<T> _value, $Res Function(_$Loaded<T>) _then)
      : super(_value, (v) => _then(v as _$Loaded<T>));

  @override
  _$Loaded<T> get _value => super._value as _$Loaded<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Loaded<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_$Loaded<T> implements _$Loaded<T> {
  _$_$Loaded(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'CrudState<$T>.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$LoadedCopyWith<T, _$Loaded<T>> get copyWith =>
      __$$LoadedCopyWithImpl<T, _$Loaded<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function() loading,
    required TResult Function(T data) reloading,
    required TResult Function(T data) loaded,
    required TResult Function(IFailure failure) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function()? loading,
    TResult Function(T data)? reloading,
    TResult Function(T data)? loaded,
    TResult Function(IFailure failure)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function()? loading,
    TResult Function(T data)? reloading,
    TResult Function(T data)? loaded,
    TResult Function(IFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NoData<T> value) noData,
    required TResult Function(_$Loading<T> value) loading,
    required TResult Function(_$Reloading<T> value) reloading,
    required TResult Function(_$Loaded<T> value) loaded,
    required TResult Function(_$Error<T> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$NoData<T> value)? noData,
    TResult Function(_$Loading<T> value)? loading,
    TResult Function(_$Reloading<T> value)? reloading,
    TResult Function(_$Loaded<T> value)? loaded,
    TResult Function(_$Error<T> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NoData<T> value)? noData,
    TResult Function(_$Loading<T> value)? loading,
    TResult Function(_$Reloading<T> value)? reloading,
    TResult Function(_$Loaded<T> value)? loaded,
    TResult Function(_$Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _$Loaded<T> implements CrudState<T> {
  factory _$Loaded(T data) = _$_$Loaded<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<T, _$Loaded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<T, $Res> {
  factory _$$ErrorCopyWith(_$Error<T> value, $Res Function(_$Error<T>) then) =
      __$$ErrorCopyWithImpl<T, $Res>;
  $Res call({IFailure failure});
}

/// @nodoc
class __$$ErrorCopyWithImpl<T, $Res> extends _$CrudStateCopyWithImpl<T, $Res>
    implements _$$ErrorCopyWith<T, $Res> {
  __$$ErrorCopyWithImpl(_$Error<T> _value, $Res Function(_$Error<T>) _then)
      : super(_value, (v) => _then(v as _$Error<T>));

  @override
  _$Error<T> get _value => super._value as _$Error<T>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$Error<T>(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as IFailure,
    ));
  }
}

/// @nodoc

class _$_$Error<T> implements _$Error<T> {
  _$_$Error(this.failure);

  @override
  final IFailure failure;

  @override
  String toString() {
    return 'CrudState<$T>.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error<T> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<T, _$Error<T>> get copyWith =>
      __$$ErrorCopyWithImpl<T, _$Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noData,
    required TResult Function() loading,
    required TResult Function(T data) reloading,
    required TResult Function(T data) loaded,
    required TResult Function(IFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function()? loading,
    TResult Function(T data)? reloading,
    TResult Function(T data)? loaded,
    TResult Function(IFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noData,
    TResult Function()? loading,
    TResult Function(T data)? reloading,
    TResult Function(T data)? loaded,
    TResult Function(IFailure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$NoData<T> value) noData,
    required TResult Function(_$Loading<T> value) loading,
    required TResult Function(_$Reloading<T> value) reloading,
    required TResult Function(_$Loaded<T> value) loaded,
    required TResult Function(_$Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$NoData<T> value)? noData,
    TResult Function(_$Loading<T> value)? loading,
    TResult Function(_$Reloading<T> value)? reloading,
    TResult Function(_$Loaded<T> value)? loaded,
    TResult Function(_$Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$NoData<T> value)? noData,
    TResult Function(_$Loading<T> value)? loading,
    TResult Function(_$Reloading<T> value)? reloading,
    TResult Function(_$Loaded<T> value)? loaded,
    TResult Function(_$Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$Error<T> implements CrudState<T> {
  factory _$Error(IFailure failure) = _$_$Error<T>;

  IFailure get failure;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<T, _$Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
