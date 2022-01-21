// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
class _$AppointmentTearOff {
  const _$AppointmentTearOff();

  _Appointment call(
      {String? id,
      required String appointmentName,
      required String locationId,
      required DateTime startDate,
      required DateTime finishDate,
      required DateTime creationDate,
      double? totalCost,
      required String scheduler,
      required String schedulerId,
      required String address}) {
    return _Appointment(
      id: id,
      appointmentName: appointmentName,
      locationId: locationId,
      startDate: startDate,
      finishDate: finishDate,
      creationDate: creationDate,
      totalCost: totalCost,
      scheduler: scheduler,
      schedulerId: schedulerId,
      address: address,
    );
  }

  Appointment fromJson(Map<String, Object?> json) {
    return Appointment.fromJson(json);
  }
}

/// @nodoc
const $Appointment = _$AppointmentTearOff();

/// @nodoc
mixin _$Appointment {
  String? get id => throw _privateConstructorUsedError;
  String get appointmentName => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get finishDate => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  double? get totalCost => throw _privateConstructorUsedError;
  String get scheduler => throw _privateConstructorUsedError;
  String get schedulerId => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String appointmentName,
      String locationId,
      DateTime startDate,
      DateTime finishDate,
      DateTime creationDate,
      double? totalCost,
      String scheduler,
      String schedulerId,
      String address});
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res> implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  final Appointment _value;
  // ignore: unused_field
  final $Res Function(Appointment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? appointmentName = freezed,
    Object? locationId = freezed,
    Object? startDate = freezed,
    Object? finishDate = freezed,
    Object? creationDate = freezed,
    Object? totalCost = freezed,
    Object? scheduler = freezed,
    Object? schedulerId = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentName: appointmentName == freezed
          ? _value.appointmentName
          : appointmentName // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: locationId == freezed
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishDate: finishDate == freezed
          ? _value.finishDate
          : finishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCost: totalCost == freezed
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
      scheduler: scheduler == freezed
          ? _value.scheduler
          : scheduler // ignore: cast_nullable_to_non_nullable
              as String,
      schedulerId: schedulerId == freezed
          ? _value.schedulerId
          : schedulerId // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AppointmentCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$AppointmentCopyWith(
          _Appointment value, $Res Function(_Appointment) then) =
      __$AppointmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String appointmentName,
      String locationId,
      DateTime startDate,
      DateTime finishDate,
      DateTime creationDate,
      double? totalCost,
      String scheduler,
      String schedulerId,
      String address});
}

/// @nodoc
class __$AppointmentCopyWithImpl<$Res> extends _$AppointmentCopyWithImpl<$Res>
    implements _$AppointmentCopyWith<$Res> {
  __$AppointmentCopyWithImpl(
      _Appointment _value, $Res Function(_Appointment) _then)
      : super(_value, (v) => _then(v as _Appointment));

  @override
  _Appointment get _value => super._value as _Appointment;

  @override
  $Res call({
    Object? id = freezed,
    Object? appointmentName = freezed,
    Object? locationId = freezed,
    Object? startDate = freezed,
    Object? finishDate = freezed,
    Object? creationDate = freezed,
    Object? totalCost = freezed,
    Object? scheduler = freezed,
    Object? schedulerId = freezed,
    Object? address = freezed,
  }) {
    return _then(_Appointment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentName: appointmentName == freezed
          ? _value.appointmentName
          : appointmentName // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: locationId == freezed
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishDate: finishDate == freezed
          ? _value.finishDate
          : finishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCost: totalCost == freezed
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
      scheduler: scheduler == freezed
          ? _value.scheduler
          : scheduler // ignore: cast_nullable_to_non_nullable
              as String,
      schedulerId: schedulerId == freezed
          ? _value.schedulerId
          : schedulerId // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<Identifiable>()
class _$_Appointment extends _Appointment {
  _$_Appointment(
      {this.id,
      required this.appointmentName,
      required this.locationId,
      required this.startDate,
      required this.finishDate,
      required this.creationDate,
      this.totalCost,
      required this.scheduler,
      required this.schedulerId,
      required this.address})
      : super._();

  factory _$_Appointment.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentFromJson(json);

  @override
  final String? id;
  @override
  final String appointmentName;
  @override
  final String locationId;
  @override
  final DateTime startDate;
  @override
  final DateTime finishDate;
  @override
  final DateTime creationDate;
  @override
  final double? totalCost;
  @override
  final String scheduler;
  @override
  final String schedulerId;
  @override
  final String address;

  @override
  String toString() {
    return 'Appointment(id: $id, appointmentName: $appointmentName, locationId: $locationId, startDate: $startDate, finishDate: $finishDate, creationDate: $creationDate, totalCost: $totalCost, scheduler: $scheduler, schedulerId: $schedulerId, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Appointment &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.appointmentName, appointmentName) &&
            const DeepCollectionEquality()
                .equals(other.locationId, locationId) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality()
                .equals(other.finishDate, finishDate) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality().equals(other.totalCost, totalCost) &&
            const DeepCollectionEquality().equals(other.scheduler, scheduler) &&
            const DeepCollectionEquality()
                .equals(other.schedulerId, schedulerId) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(appointmentName),
      const DeepCollectionEquality().hash(locationId),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(finishDate),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(totalCost),
      const DeepCollectionEquality().hash(scheduler),
      const DeepCollectionEquality().hash(schedulerId),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$AppointmentCopyWith<_Appointment> get copyWith =>
      __$AppointmentCopyWithImpl<_Appointment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentToJson(this);
  }
}

abstract class _Appointment extends Appointment implements Identifiable {
  factory _Appointment(
      {String? id,
      required String appointmentName,
      required String locationId,
      required DateTime startDate,
      required DateTime finishDate,
      required DateTime creationDate,
      double? totalCost,
      required String scheduler,
      required String schedulerId,
      required String address}) = _$_Appointment;
  _Appointment._() : super._();

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$_Appointment.fromJson;

  @override
  String? get id;
  @override
  String get appointmentName;
  @override
  String get locationId;
  @override
  DateTime get startDate;
  @override
  DateTime get finishDate;
  @override
  DateTime get creationDate;
  @override
  double? get totalCost;
  @override
  String get scheduler;
  @override
  String get schedulerId;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$AppointmentCopyWith<_Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}
