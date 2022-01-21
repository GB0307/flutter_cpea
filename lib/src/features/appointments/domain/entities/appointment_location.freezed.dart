// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppointmentLocation _$AppointmentLocationFromJson(Map<String, dynamic> json) {
  return _AppointmentLocation.fromJson(json);
}

/// @nodoc
class _$AppointmentLocationTearOff {
  const _$AppointmentLocationTearOff();

  _AppointmentLocation call(
      {String? id,
      required String name,
      String? description,
      int maxConcurrentAppointments = 1,
      List<String> images = const [],
      double? cost,
      required Duration duration,
      DateTime? minAppointmentTime,
      DateTime? maxAppointmentTime,
      List<int>? allowedDays = const [1, 2, 3, 4, 5, 6],
      int advancementDays = 10}) {
    return _AppointmentLocation(
      id: id,
      name: name,
      description: description,
      maxConcurrentAppointments: maxConcurrentAppointments,
      images: images,
      cost: cost,
      duration: duration,
      minAppointmentTime: minAppointmentTime,
      maxAppointmentTime: maxAppointmentTime,
      allowedDays: allowedDays,
      advancementDays: advancementDays,
    );
  }

  AppointmentLocation fromJson(Map<String, Object?> json) {
    return AppointmentLocation.fromJson(json);
  }
}

/// @nodoc
const $AppointmentLocation = _$AppointmentLocationTearOff();

/// @nodoc
mixin _$AppointmentLocation {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get maxConcurrentAppointments => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  double? get cost => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  DateTime? get minAppointmentTime => throw _privateConstructorUsedError;
  DateTime? get maxAppointmentTime => throw _privateConstructorUsedError;

  /// List of allowed weekdays
  /// If the number is in the list, this day is allowed for appointments.
  /// the week starts at 1, which is monday following the ISO 8601
  List<int>? get allowedDays => throw _privateConstructorUsedError;

  /// Number of days you can create an appointment in advance.
  int get advancementDays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentLocationCopyWith<AppointmentLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentLocationCopyWith<$Res> {
  factory $AppointmentLocationCopyWith(
          AppointmentLocation value, $Res Function(AppointmentLocation) then) =
      _$AppointmentLocationCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String name,
      String? description,
      int maxConcurrentAppointments,
      List<String> images,
      double? cost,
      Duration duration,
      DateTime? minAppointmentTime,
      DateTime? maxAppointmentTime,
      List<int>? allowedDays,
      int advancementDays});
}

/// @nodoc
class _$AppointmentLocationCopyWithImpl<$Res>
    implements $AppointmentLocationCopyWith<$Res> {
  _$AppointmentLocationCopyWithImpl(this._value, this._then);

  final AppointmentLocation _value;
  // ignore: unused_field
  final $Res Function(AppointmentLocation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? maxConcurrentAppointments = freezed,
    Object? images = freezed,
    Object? cost = freezed,
    Object? duration = freezed,
    Object? minAppointmentTime = freezed,
    Object? maxAppointmentTime = freezed,
    Object? allowedDays = freezed,
    Object? advancementDays = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      maxConcurrentAppointments: maxConcurrentAppointments == freezed
          ? _value.maxConcurrentAppointments
          : maxConcurrentAppointments // ignore: cast_nullable_to_non_nullable
              as int,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      minAppointmentTime: minAppointmentTime == freezed
          ? _value.minAppointmentTime
          : minAppointmentTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxAppointmentTime: maxAppointmentTime == freezed
          ? _value.maxAppointmentTime
          : maxAppointmentTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      allowedDays: allowedDays == freezed
          ? _value.allowedDays
          : allowedDays // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      advancementDays: advancementDays == freezed
          ? _value.advancementDays
          : advancementDays // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AppointmentLocationCopyWith<$Res>
    implements $AppointmentLocationCopyWith<$Res> {
  factory _$AppointmentLocationCopyWith(_AppointmentLocation value,
          $Res Function(_AppointmentLocation) then) =
      __$AppointmentLocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String name,
      String? description,
      int maxConcurrentAppointments,
      List<String> images,
      double? cost,
      Duration duration,
      DateTime? minAppointmentTime,
      DateTime? maxAppointmentTime,
      List<int>? allowedDays,
      int advancementDays});
}

/// @nodoc
class __$AppointmentLocationCopyWithImpl<$Res>
    extends _$AppointmentLocationCopyWithImpl<$Res>
    implements _$AppointmentLocationCopyWith<$Res> {
  __$AppointmentLocationCopyWithImpl(
      _AppointmentLocation _value, $Res Function(_AppointmentLocation) _then)
      : super(_value, (v) => _then(v as _AppointmentLocation));

  @override
  _AppointmentLocation get _value => super._value as _AppointmentLocation;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? maxConcurrentAppointments = freezed,
    Object? images = freezed,
    Object? cost = freezed,
    Object? duration = freezed,
    Object? minAppointmentTime = freezed,
    Object? maxAppointmentTime = freezed,
    Object? allowedDays = freezed,
    Object? advancementDays = freezed,
  }) {
    return _then(_AppointmentLocation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      maxConcurrentAppointments: maxConcurrentAppointments == freezed
          ? _value.maxConcurrentAppointments
          : maxConcurrentAppointments // ignore: cast_nullable_to_non_nullable
              as int,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      minAppointmentTime: minAppointmentTime == freezed
          ? _value.minAppointmentTime
          : minAppointmentTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxAppointmentTime: maxAppointmentTime == freezed
          ? _value.maxAppointmentTime
          : maxAppointmentTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      allowedDays: allowedDays == freezed
          ? _value.allowedDays
          : allowedDays // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      advancementDays: advancementDays == freezed
          ? _value.advancementDays
          : advancementDays // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<Identifiable>()
class _$_AppointmentLocation implements _AppointmentLocation {
  _$_AppointmentLocation(
      {this.id,
      required this.name,
      this.description,
      this.maxConcurrentAppointments = 1,
      this.images = const [],
      this.cost,
      required this.duration,
      this.minAppointmentTime,
      this.maxAppointmentTime,
      this.allowedDays = const [1, 2, 3, 4, 5, 6],
      this.advancementDays = 10});

  factory _$_AppointmentLocation.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentLocationFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String? description;
  @JsonKey()
  @override
  final int maxConcurrentAppointments;
  @JsonKey()
  @override
  final List<String> images;
  @override
  final double? cost;
  @override
  final Duration duration;
  @override
  final DateTime? minAppointmentTime;
  @override
  final DateTime? maxAppointmentTime;
  @JsonKey()
  @override

  /// List of allowed weekdays
  /// If the number is in the list, this day is allowed for appointments.
  /// the week starts at 1, which is monday following the ISO 8601
  final List<int>? allowedDays;
  @JsonKey()
  @override

  /// Number of days you can create an appointment in advance.
  final int advancementDays;

  @override
  String toString() {
    return 'AppointmentLocation(id: $id, name: $name, description: $description, maxConcurrentAppointments: $maxConcurrentAppointments, images: $images, cost: $cost, duration: $duration, minAppointmentTime: $minAppointmentTime, maxAppointmentTime: $maxAppointmentTime, allowedDays: $allowedDays, advancementDays: $advancementDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentLocation &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(
                other.maxConcurrentAppointments, maxConcurrentAppointments) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.minAppointmentTime, minAppointmentTime) &&
            const DeepCollectionEquality()
                .equals(other.maxAppointmentTime, maxAppointmentTime) &&
            const DeepCollectionEquality()
                .equals(other.allowedDays, allowedDays) &&
            const DeepCollectionEquality()
                .equals(other.advancementDays, advancementDays));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(maxConcurrentAppointments),
      const DeepCollectionEquality().hash(images),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(minAppointmentTime),
      const DeepCollectionEquality().hash(maxAppointmentTime),
      const DeepCollectionEquality().hash(allowedDays),
      const DeepCollectionEquality().hash(advancementDays));

  @JsonKey(ignore: true)
  @override
  _$AppointmentLocationCopyWith<_AppointmentLocation> get copyWith =>
      __$AppointmentLocationCopyWithImpl<_AppointmentLocation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentLocationToJson(this);
  }
}

abstract class _AppointmentLocation
    implements AppointmentLocation, Identifiable {
  factory _AppointmentLocation(
      {String? id,
      required String name,
      String? description,
      int maxConcurrentAppointments,
      List<String> images,
      double? cost,
      required Duration duration,
      DateTime? minAppointmentTime,
      DateTime? maxAppointmentTime,
      List<int>? allowedDays,
      int advancementDays}) = _$_AppointmentLocation;

  factory _AppointmentLocation.fromJson(Map<String, dynamic> json) =
      _$_AppointmentLocation.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  int get maxConcurrentAppointments;
  @override
  List<String> get images;
  @override
  double? get cost;
  @override
  Duration get duration;
  @override
  DateTime? get minAppointmentTime;
  @override
  DateTime? get maxAppointmentTime;
  @override

  /// List of allowed weekdays
  /// If the number is in the list, this day is allowed for appointments.
  /// the week starts at 1, which is monday following the ISO 8601
  List<int>? get allowedDays;
  @override

  /// Number of days you can create an appointment in advance.
  int get advancementDays;
  @override
  @JsonKey(ignore: true)
  _$AppointmentLocationCopyWith<_AppointmentLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
