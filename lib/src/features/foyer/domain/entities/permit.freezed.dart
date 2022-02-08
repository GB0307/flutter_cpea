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
      {required String? id,
      required String authorizer,
      required String authorized,
      required DateTime startDate,
      required DateTime endDate,
      required DateTime creationDate,
      required DateTime lastUpdated}) {
    return _Permit(
      id: id,
      authorizer: authorizer,
      authorized: authorized,
      startDate: startDate,
      endDate: endDate,
      creationDate: creationDate,
      lastUpdated: lastUpdated,
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
  String? get id => throw _privateConstructorUsedError;
  String get authorizer => throw _privateConstructorUsedError;
  String get authorized => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermitCopyWith<Permit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermitCopyWith<$Res> {
  factory $PermitCopyWith(Permit value, $Res Function(Permit) then) =
      _$PermitCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String authorizer,
      String authorized,
      DateTime startDate,
      DateTime endDate,
      DateTime creationDate,
      DateTime lastUpdated});
}

/// @nodoc
class _$PermitCopyWithImpl<$Res> implements $PermitCopyWith<$Res> {
  _$PermitCopyWithImpl(this._value, this._then);

  final Permit _value;
  // ignore: unused_field
  final $Res Function(Permit) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? authorizer = freezed,
    Object? authorized = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? creationDate = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
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
      {String? id,
      String authorizer,
      String authorized,
      DateTime startDate,
      DateTime endDate,
      DateTime creationDate,
      DateTime lastUpdated});
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
    Object? id = freezed,
    Object? authorizer = freezed,
    Object? authorized = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? creationDate = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_Permit(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<Identifiable>()
class _$_Permit implements _Permit {
  _$_Permit(
      {required this.id,
      required this.authorizer,
      required this.authorized,
      required this.startDate,
      required this.endDate,
      required this.creationDate,
      required this.lastUpdated});

  factory _$_Permit.fromJson(Map<String, dynamic> json) =>
      _$$_PermitFromJson(json);

  @override
  final String? id;
  @override
  final String authorizer;
  @override
  final String authorized;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final DateTime creationDate;
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'Permit(id: $id, authorizer: $authorizer, authorized: $authorized, startDate: $startDate, endDate: $endDate, creationDate: $creationDate, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Permit &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.authorizer, authorizer) &&
            const DeepCollectionEquality()
                .equals(other.authorized, authorized) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(authorizer),
      const DeepCollectionEquality().hash(authorized),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(lastUpdated));

  @JsonKey(ignore: true)
  @override
  _$PermitCopyWith<_Permit> get copyWith =>
      __$PermitCopyWithImpl<_Permit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PermitToJson(this);
  }
}

abstract class _Permit implements Permit, Identifiable {
  factory _Permit(
      {required String? id,
      required String authorizer,
      required String authorized,
      required DateTime startDate,
      required DateTime endDate,
      required DateTime creationDate,
      required DateTime lastUpdated}) = _$_Permit;

  factory _Permit.fromJson(Map<String, dynamic> json) = _$_Permit.fromJson;

  @override
  String? get id;
  @override
  String get authorizer;
  @override
  String get authorized;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  DateTime get creationDate;
  @override
  DateTime get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$PermitCopyWith<_Permit> get copyWith => throw _privateConstructorUsedError;
}
