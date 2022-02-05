// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _NotLoggedIn<U, UD> notLoggedIn<U, UD>() {
    return _NotLoggedIn<U, UD>();
  }

  _LoggingIn<U, UD> loggingIn<U, UD>() {
    return _LoggingIn<U, UD>();
  }

  _NoData<U, UD> noData<U, UD>(U user) {
    return _NoData<U, UD>(
      user,
    );
  }

  _LoggedIn<U, UD> loggedIn<U, UD>(U user, UD data) {
    return _LoggedIn<U, UD>(
      user,
      data,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState<U, UD> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() loggingIn,
    required TResult Function(U user) noData,
    required TResult Function(U user, UD data) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loggingIn,
    TResult Function(U user)? noData,
    TResult Function(U user, UD data)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loggingIn,
    TResult Function(U user)? noData,
    TResult Function(U user, UD data)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLoggedIn<U, UD> value) notLoggedIn,
    required TResult Function(_LoggingIn<U, UD> value) loggingIn,
    required TResult Function(_NoData<U, UD> value) noData,
    required TResult Function(_LoggedIn<U, UD> value) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotLoggedIn<U, UD> value)? notLoggedIn,
    TResult Function(_LoggingIn<U, UD> value)? loggingIn,
    TResult Function(_NoData<U, UD> value)? noData,
    TResult Function(_LoggedIn<U, UD> value)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLoggedIn<U, UD> value)? notLoggedIn,
    TResult Function(_LoggingIn<U, UD> value)? loggingIn,
    TResult Function(_NoData<U, UD> value)? noData,
    TResult Function(_LoggedIn<U, UD> value)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<U, UD, $Res> {
  factory $UserStateCopyWith(
          UserState<U, UD> value, $Res Function(UserState<U, UD>) then) =
      _$UserStateCopyWithImpl<U, UD, $Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<U, UD, $Res>
    implements $UserStateCopyWith<U, UD, $Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState<U, UD> _value;
  // ignore: unused_field
  final $Res Function(UserState<U, UD>) _then;
}

/// @nodoc
abstract class _$NotLoggedInCopyWith<U, UD, $Res> {
  factory _$NotLoggedInCopyWith(
          _NotLoggedIn<U, UD> value, $Res Function(_NotLoggedIn<U, UD>) then) =
      __$NotLoggedInCopyWithImpl<U, UD, $Res>;
}

/// @nodoc
class __$NotLoggedInCopyWithImpl<U, UD, $Res>
    extends _$UserStateCopyWithImpl<U, UD, $Res>
    implements _$NotLoggedInCopyWith<U, UD, $Res> {
  __$NotLoggedInCopyWithImpl(
      _NotLoggedIn<U, UD> _value, $Res Function(_NotLoggedIn<U, UD>) _then)
      : super(_value, (v) => _then(v as _NotLoggedIn<U, UD>));

  @override
  _NotLoggedIn<U, UD> get _value => super._value as _NotLoggedIn<U, UD>;
}

/// @nodoc

class _$_NotLoggedIn<U, UD> implements _NotLoggedIn<U, UD> {
  const _$_NotLoggedIn();

  @override
  String toString() {
    return 'UserState<$U, $UD>.notLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotLoggedIn<U, UD>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() loggingIn,
    required TResult Function(U user) noData,
    required TResult Function(U user, UD data) loggedIn,
  }) {
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loggingIn,
    TResult Function(U user)? noData,
    TResult Function(U user, UD data)? loggedIn,
  }) {
    return notLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loggingIn,
    TResult Function(U user)? noData,
    TResult Function(U user, UD data)? loggedIn,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLoggedIn<U, UD> value) notLoggedIn,
    required TResult Function(_LoggingIn<U, UD> value) loggingIn,
    required TResult Function(_NoData<U, UD> value) noData,
    required TResult Function(_LoggedIn<U, UD> value) loggedIn,
  }) {
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotLoggedIn<U, UD> value)? notLoggedIn,
    TResult Function(_LoggingIn<U, UD> value)? loggingIn,
    TResult Function(_NoData<U, UD> value)? noData,
    TResult Function(_LoggedIn<U, UD> value)? loggedIn,
  }) {
    return notLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLoggedIn<U, UD> value)? notLoggedIn,
    TResult Function(_LoggingIn<U, UD> value)? loggingIn,
    TResult Function(_NoData<U, UD> value)? noData,
    TResult Function(_LoggedIn<U, UD> value)? loggedIn,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _NotLoggedIn<U, UD> implements UserState<U, UD> {
  const factory _NotLoggedIn() = _$_NotLoggedIn<U, UD>;
}

/// @nodoc
abstract class _$LoggingInCopyWith<U, UD, $Res> {
  factory _$LoggingInCopyWith(
          _LoggingIn<U, UD> value, $Res Function(_LoggingIn<U, UD>) then) =
      __$LoggingInCopyWithImpl<U, UD, $Res>;
}

/// @nodoc
class __$LoggingInCopyWithImpl<U, UD, $Res>
    extends _$UserStateCopyWithImpl<U, UD, $Res>
    implements _$LoggingInCopyWith<U, UD, $Res> {
  __$LoggingInCopyWithImpl(
      _LoggingIn<U, UD> _value, $Res Function(_LoggingIn<U, UD>) _then)
      : super(_value, (v) => _then(v as _LoggingIn<U, UD>));

  @override
  _LoggingIn<U, UD> get _value => super._value as _LoggingIn<U, UD>;
}

/// @nodoc

class _$_LoggingIn<U, UD> implements _LoggingIn<U, UD> {
  const _$_LoggingIn();

  @override
  String toString() {
    return 'UserState<$U, $UD>.loggingIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoggingIn<U, UD>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() loggingIn,
    required TResult Function(U user) noData,
    required TResult Function(U user, UD data) loggedIn,
  }) {
    return loggingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loggingIn,
    TResult Function(U user)? noData,
    TResult Function(U user, UD data)? loggedIn,
  }) {
    return loggingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loggingIn,
    TResult Function(U user)? noData,
    TResult Function(U user, UD data)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLoggedIn<U, UD> value) notLoggedIn,
    required TResult Function(_LoggingIn<U, UD> value) loggingIn,
    required TResult Function(_NoData<U, UD> value) noData,
    required TResult Function(_LoggedIn<U, UD> value) loggedIn,
  }) {
    return loggingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotLoggedIn<U, UD> value)? notLoggedIn,
    TResult Function(_LoggingIn<U, UD> value)? loggingIn,
    TResult Function(_NoData<U, UD> value)? noData,
    TResult Function(_LoggedIn<U, UD> value)? loggedIn,
  }) {
    return loggingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLoggedIn<U, UD> value)? notLoggedIn,
    TResult Function(_LoggingIn<U, UD> value)? loggingIn,
    TResult Function(_NoData<U, UD> value)? noData,
    TResult Function(_LoggedIn<U, UD> value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn(this);
    }
    return orElse();
  }
}

abstract class _LoggingIn<U, UD> implements UserState<U, UD> {
  const factory _LoggingIn() = _$_LoggingIn<U, UD>;
}

/// @nodoc
abstract class _$NoDataCopyWith<U, UD, $Res> {
  factory _$NoDataCopyWith(
          _NoData<U, UD> value, $Res Function(_NoData<U, UD>) then) =
      __$NoDataCopyWithImpl<U, UD, $Res>;
  $Res call({U user});
}

/// @nodoc
class __$NoDataCopyWithImpl<U, UD, $Res>
    extends _$UserStateCopyWithImpl<U, UD, $Res>
    implements _$NoDataCopyWith<U, UD, $Res> {
  __$NoDataCopyWithImpl(
      _NoData<U, UD> _value, $Res Function(_NoData<U, UD>) _then)
      : super(_value, (v) => _then(v as _NoData<U, UD>));

  @override
  _NoData<U, UD> get _value => super._value as _NoData<U, UD>;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_NoData<U, UD>(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as U,
    ));
  }
}

/// @nodoc

class _$_NoData<U, UD> implements _NoData<U, UD> {
  _$_NoData(this.user);

  @override
  final U user;

  @override
  String toString() {
    return 'UserState<$U, $UD>.noData(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoData<U, UD> &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$NoDataCopyWith<U, UD, _NoData<U, UD>> get copyWith =>
      __$NoDataCopyWithImpl<U, UD, _NoData<U, UD>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() loggingIn,
    required TResult Function(U user) noData,
    required TResult Function(U user, UD data) loggedIn,
  }) {
    return noData(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loggingIn,
    TResult Function(U user)? noData,
    TResult Function(U user, UD data)? loggedIn,
  }) {
    return noData?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loggingIn,
    TResult Function(U user)? noData,
    TResult Function(U user, UD data)? loggedIn,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLoggedIn<U, UD> value) notLoggedIn,
    required TResult Function(_LoggingIn<U, UD> value) loggingIn,
    required TResult Function(_NoData<U, UD> value) noData,
    required TResult Function(_LoggedIn<U, UD> value) loggedIn,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotLoggedIn<U, UD> value)? notLoggedIn,
    TResult Function(_LoggingIn<U, UD> value)? loggingIn,
    TResult Function(_NoData<U, UD> value)? noData,
    TResult Function(_LoggedIn<U, UD> value)? loggedIn,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLoggedIn<U, UD> value)? notLoggedIn,
    TResult Function(_LoggingIn<U, UD> value)? loggingIn,
    TResult Function(_NoData<U, UD> value)? noData,
    TResult Function(_LoggedIn<U, UD> value)? loggedIn,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _NoData<U, UD> implements UserState<U, UD> {
  factory _NoData(U user) = _$_NoData<U, UD>;

  U get user;
  @JsonKey(ignore: true)
  _$NoDataCopyWith<U, UD, _NoData<U, UD>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoggedInCopyWith<U, UD, $Res> {
  factory _$LoggedInCopyWith(
          _LoggedIn<U, UD> value, $Res Function(_LoggedIn<U, UD>) then) =
      __$LoggedInCopyWithImpl<U, UD, $Res>;
  $Res call({U user, UD data});
}

/// @nodoc
class __$LoggedInCopyWithImpl<U, UD, $Res>
    extends _$UserStateCopyWithImpl<U, UD, $Res>
    implements _$LoggedInCopyWith<U, UD, $Res> {
  __$LoggedInCopyWithImpl(
      _LoggedIn<U, UD> _value, $Res Function(_LoggedIn<U, UD>) _then)
      : super(_value, (v) => _then(v as _LoggedIn<U, UD>));

  @override
  _LoggedIn<U, UD> get _value => super._value as _LoggedIn<U, UD>;

  @override
  $Res call({
    Object? user = freezed,
    Object? data = freezed,
  }) {
    return _then(_LoggedIn<U, UD>(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as U,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UD,
    ));
  }
}

/// @nodoc

class _$_LoggedIn<U, UD> implements _LoggedIn<U, UD> {
  _$_LoggedIn(this.user, this.data);

  @override
  final U user;
  @override
  final UD data;

  @override
  String toString() {
    return 'UserState<$U, $UD>.loggedIn(user: $user, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoggedIn<U, UD> &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$LoggedInCopyWith<U, UD, _LoggedIn<U, UD>> get copyWith =>
      __$LoggedInCopyWithImpl<U, UD, _LoggedIn<U, UD>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() loggingIn,
    required TResult Function(U user) noData,
    required TResult Function(U user, UD data) loggedIn,
  }) {
    return loggedIn(user, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loggingIn,
    TResult Function(U user)? noData,
    TResult Function(U user, UD data)? loggedIn,
  }) {
    return loggedIn?.call(user, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loggingIn,
    TResult Function(U user)? noData,
    TResult Function(U user, UD data)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(user, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLoggedIn<U, UD> value) notLoggedIn,
    required TResult Function(_LoggingIn<U, UD> value) loggingIn,
    required TResult Function(_NoData<U, UD> value) noData,
    required TResult Function(_LoggedIn<U, UD> value) loggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotLoggedIn<U, UD> value)? notLoggedIn,
    TResult Function(_LoggingIn<U, UD> value)? loggingIn,
    TResult Function(_NoData<U, UD> value)? noData,
    TResult Function(_LoggedIn<U, UD> value)? loggedIn,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLoggedIn<U, UD> value)? notLoggedIn,
    TResult Function(_LoggingIn<U, UD> value)? loggingIn,
    TResult Function(_NoData<U, UD> value)? noData,
    TResult Function(_LoggedIn<U, UD> value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn<U, UD> implements UserState<U, UD> {
  factory _LoggedIn(U user, UD data) = _$_LoggedIn<U, UD>;

  U get user;
  UD get data;
  @JsonKey(ignore: true)
  _$LoggedInCopyWith<U, UD, _LoggedIn<U, UD>> get copyWith =>
      throw _privateConstructorUsedError;
}
