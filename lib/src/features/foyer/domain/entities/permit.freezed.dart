// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'permit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Permit _$PermitFromJson(Map<String, dynamic> json) {
  return _Permit.fromJson(json);
}

/// @nodoc
class _$PermitTearOff {
  const _$PermitTearOff();

  _Permit call(
      {required String authorizer,
      required String authorized,
      required DateTime startDate,
      required DateTime endDate}) {
    return _Permit(
      authorizer: authorizer,
      authorized: authorized,
      startDate: startDate,
      endDate: endDate,
    );
  }

  Permit fromJson(Map<String, Object?> json) {
    return Permit.fromJson(json);
  }
}

/// @nodoc
const $Permit = _$PermitTearOff();

/// @nodoc
mixin _$Permit {
  String get authorizer => throw _privateConstructorUsedError;
  String get authorized => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermitCopyWith<Permit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermitCopyWith<$Res> {
  factory $PermitCopyWith(Permit value, $Res Function(Permit) then) =
      _$PermitCopyWithImpl<$Res>;
  $Res call(
      {String authorizer,
      String authorized,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class _$PermitCopyWithImpl<$Res> implements $PermitCopyWith<$Res> {
  _$PermitCopyWithImpl(this._value, this._then);

  final Permit _value;
  // ignore: unused_field
  final $Res Function(Permit) _then;

  @override
  $Res call({
    Object? authorizer = freezed,
    Object? authorized = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      authorizer: authorizer == freezed
          ? _value.authorizer
          : authorizer // ignore: cast_nullable_to_non_nullable
              as String,
      authorized: authorized == freezed
          ? _value.authorized
          : authorized // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$PermitCopyWith<$Res> implements $PermitCopyWith<$Res> {
  factory _$PermitCopyWith(_Permit value, $Res Function(_Permit) then) =
      __$PermitCopyWithImpl<$Res>;
  @override
  $Res call(
      {String authorizer,
      String authorized,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class __$PermitCopyWithImpl<$Res> extends _$PermitCopyWithImpl<$Res>
    implements _$PermitCopyWith<$Res> {
  __$PermitCopyWithImpl(_Permit _value, $Res Function(_Permit) _then)
      : super(_value, (v) => _then(v as _Permit));

  @override
  _Permit get _value => super._value as _Permit;

  @override
  $Res call({
    Object? authorizer = freezed,
    Object? authorized = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_Permit(
      authorizer: authorizer == freezed
          ? _value.authorizer
          : authorizer // ignore: cast_nullable_to_non_nullable
              as String,
      authorized: authorized == freezed
          ? _value.authorized
          : authorized // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Permit implements _Permit {
  _$_Permit(
      {required this.authorizer,
      required this.authorized,
      required this.startDate,
      required this.endDate});

  factory _$_Permit.fromJson(Map<String, dynamic> json) =>
      _$$_PermitFromJson(json);

  @override
  final String authorizer;
  @override
  final String authorized;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'Permit(authorizer: $authorizer, authorized: $authorized, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Permit &&
            const DeepCollectionEquality()
                .equals(other.authorizer, authorizer) &&
            const DeepCollectionEquality()
                .equals(other.authorized, authorized) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authorizer),
      const DeepCollectionEquality().hash(authorized),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  _$PermitCopyWith<_Permit> get copyWith =>
      __$PermitCopyWithImpl<_Permit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PermitToJson(this);
  }
}

abstract class _Permit implements Permit {
  factory _Permit(
      {required String authorizer,
      required String authorized,
      required DateTime startDate,
      required DateTime endDate}) = _$_Permit;

  factory _Permit.fromJson(Map<String, dynamic> json) = _$_Permit.fromJson;

  @override
  String get authorizer;
  @override
  String get authorized;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$PermitCopyWith<_Permit> get copyWith => throw _privateConstructorUsedError;
}
