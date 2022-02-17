// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'permit_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PermitListStateTearOff {
  const _$PermitListStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(List<Permit> permits) {
    return _Loaded(
      permits,
    );
  }

  _Reloading reloading(List<Permit> permits) {
    return _Reloading(
      permits,
    );
  }

  _Failed failed(IFailure failure) {
    return _Failed(
      failure,
    );
  }

  _NoData noData() {
    return const _NoData();
  }
}

/// @nodoc
const $PermitListState = _$PermitListStateTearOff();

/// @nodoc
mixin _$PermitListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Permit> permits) loaded,
    required TResult Function(List<Permit> permits) reloading,
    required TResult Function(IFailure failure) failed,
    required TResult Function() noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Permit> permits)? loaded,
    TResult Function(List<Permit> permits)? reloading,
    TResult Function(IFailure failure)? failed,
    TResult Function()? noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Permit> permits)? loaded,
    TResult Function(List<Permit> permits)? reloading,
    TResult Function(IFailure failure)? failed,
    TResult Function()? noData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reloading value) reloading,
    required TResult Function(_Failed value) failed,
    required TResult Function(_NoData value) noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloading value)? reloading,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoData value)? noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloading value)? reloading,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoData value)? noData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermitListStateCopyWith<$Res> {
  factory $PermitListStateCopyWith(
          PermitListState value, $Res Function(PermitListState) then) =
      _$PermitListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermitListStateCopyWithImpl<$Res>
    implements $PermitListStateCopyWith<$Res> {
  _$PermitListStateCopyWithImpl(this._value, this._then);

  final PermitListState _value;
  // ignore: unused_field
  final $Res Function(PermitListState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$PermitListStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'PermitListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Permit> permits) loaded,
    required TResult Function(List<Permit> permits) reloading,
    required TResult Function(IFailure failure) failed,
    required TResult Function() noData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Permit> permits)? loaded,
    TResult Function(List<Permit> permits)? reloading,
    TResult Function(IFailure failure)? failed,
    TResult Function()? noData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Permit> permits)? loaded,
    TResult Function(List<Permit> permits)? reloading,
    TResult Function(IFailure failure)? failed,
    TResult Function()? noData,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reloading value) reloading,
    required TResult Function(_Failed value) failed,
    required TResult Function(_NoData value) noData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloading value)? reloading,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoData value)? noData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloading value)? reloading,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoData value)? noData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PermitListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Permit> permits});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$PermitListStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? permits = freezed,
  }) {
    return _then(_Loaded(
      permits == freezed
          ? _value.permits
          : permits // ignore: cast_nullable_to_non_nullable
              as List<Permit>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.permits);

  @override
  final List<Permit> permits;

  @override
  String toString() {
    return 'PermitListState.loaded(permits: $permits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.permits, permits));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(permits));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Permit> permits) loaded,
    required TResult Function(List<Permit> permits) reloading,
    required TResult Function(IFailure failure) failed,
    required TResult Function() noData,
  }) {
    return loaded(permits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Permit> permits)? loaded,
    TResult Function(List<Permit> permits)? reloading,
    TResult Function(IFailure failure)? failed,
    TResult Function()? noData,
  }) {
    return loaded?.call(permits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Permit> permits)? loaded,
    TResult Function(List<Permit> permits)? reloading,
    TResult Function(IFailure failure)? failed,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(permits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reloading value) reloading,
    required TResult Function(_Failed value) failed,
    required TResult Function(_NoData value) noData,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloading value)? reloading,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoData value)? noData,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloading value)? reloading,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoData value)? noData,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements PermitListState {
  const factory _Loaded(List<Permit> permits) = _$_Loaded;

  List<Permit> get permits;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReloadingCopyWith<$Res> {
  factory _$ReloadingCopyWith(
          _Reloading value, $Res Function(_Reloading) then) =
      __$ReloadingCopyWithImpl<$Res>;
  $Res call({List<Permit> permits});
}

/// @nodoc
class __$ReloadingCopyWithImpl<$Res> extends _$PermitListStateCopyWithImpl<$Res>
    implements _$ReloadingCopyWith<$Res> {
  __$ReloadingCopyWithImpl(_Reloading _value, $Res Function(_Reloading) _then)
      : super(_value, (v) => _then(v as _Reloading));

  @override
  _Reloading get _value => super._value as _Reloading;

  @override
  $Res call({
    Object? permits = freezed,
  }) {
    return _then(_Reloading(
      permits == freezed
          ? _value.permits
          : permits // ignore: cast_nullable_to_non_nullable
              as List<Permit>,
    ));
  }
}

/// @nodoc

class _$_Reloading implements _Reloading {
  const _$_Reloading(this.permits);

  @override
  final List<Permit> permits;

  @override
  String toString() {
    return 'PermitListState.reloading(permits: $permits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Reloading &&
            const DeepCollectionEquality().equals(other.permits, permits));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(permits));

  @JsonKey(ignore: true)
  @override
  _$ReloadingCopyWith<_Reloading> get copyWith =>
      __$ReloadingCopyWithImpl<_Reloading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Permit> permits) loaded,
    required TResult Function(List<Permit> permits) reloading,
    required TResult Function(IFailure failure) failed,
    required TResult Function() noData,
  }) {
    return reloading(permits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Permit> permits)? loaded,
    TResult Function(List<Permit> permits)? reloading,
    TResult Function(IFailure failure)? failed,
    TResult Function()? noData,
  }) {
    return reloading?.call(permits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Permit> permits)? loaded,
    TResult Function(List<Permit> permits)? reloading,
    TResult Function(IFailure failure)? failed,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (reloading != null) {
      return reloading(permits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reloading value) reloading,
    required TResult Function(_Failed value) failed,
    required TResult Function(_NoData value) noData,
  }) {
    return reloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloading value)? reloading,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoData value)? noData,
  }) {
    return reloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloading value)? reloading,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoData value)? noData,
    required TResult orElse(),
  }) {
    if (reloading != null) {
      return reloading(this);
    }
    return orElse();
  }
}

abstract class _Reloading implements PermitListState {
  const factory _Reloading(List<Permit> permits) = _$_Reloading;

  List<Permit> get permits;
  @JsonKey(ignore: true)
  _$ReloadingCopyWith<_Reloading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({IFailure failure});
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$PermitListStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as IFailure,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.failure);

  @override
  final IFailure failure;

  @override
  String toString() {
    return 'PermitListState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failed &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Permit> permits) loaded,
    required TResult Function(List<Permit> permits) reloading,
    required TResult Function(IFailure failure) failed,
    required TResult Function() noData,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Permit> permits)? loaded,
    TResult Function(List<Permit> permits)? reloading,
    TResult Function(IFailure failure)? failed,
    TResult Function()? noData,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Permit> permits)? loaded,
    TResult Function(List<Permit> permits)? reloading,
    TResult Function(IFailure failure)? failed,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reloading value) reloading,
    required TResult Function(_Failed value) failed,
    required TResult Function(_NoData value) noData,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloading value)? reloading,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoData value)? noData,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloading value)? reloading,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoData value)? noData,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements PermitListState {
  const factory _Failed(IFailure failure) = _$_Failed;

  IFailure get failure;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoDataCopyWith<$Res> {
  factory _$NoDataCopyWith(_NoData value, $Res Function(_NoData) then) =
      __$NoDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoDataCopyWithImpl<$Res> extends _$PermitListStateCopyWithImpl<$Res>
    implements _$NoDataCopyWith<$Res> {
  __$NoDataCopyWithImpl(_NoData _value, $Res Function(_NoData) _then)
      : super(_value, (v) => _then(v as _NoData));

  @override
  _NoData get _value => super._value as _NoData;
}

/// @nodoc

class _$_NoData implements _NoData {
  const _$_NoData();

  @override
  String toString() {
    return 'PermitListState.noData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Permit> permits) loaded,
    required TResult Function(List<Permit> permits) reloading,
    required TResult Function(IFailure failure) failed,
    required TResult Function() noData,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Permit> permits)? loaded,
    TResult Function(List<Permit> permits)? reloading,
    TResult Function(IFailure failure)? failed,
    TResult Function()? noData,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Permit> permits)? loaded,
    TResult Function(List<Permit> permits)? reloading,
    TResult Function(IFailure failure)? failed,
    TResult Function()? noData,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reloading value) reloading,
    required TResult Function(_Failed value) failed,
    required TResult Function(_NoData value) noData,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloading value)? reloading,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoData value)? noData,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloading value)? reloading,
    TResult Function(_Failed value)? failed,
    TResult Function(_NoData value)? noData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _NoData implements PermitListState {
  const factory _NoData() = _$_NoData;
}
