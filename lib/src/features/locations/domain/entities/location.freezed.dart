// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
class _$LocationTearOff {
  const _$LocationTearOff();

  _Location call(
      {String? id,
      required String name,
      String? description,
      int maxConcurrentAppointments = 1,
      List<String> images = const [],
      double cost = 0,
      List<int> allowedDays = const [1, 2, 3, 4, 5, 6],
      int advancementDays = 10,
      List<TimeSlot> timeSlots = const [],
      DateTime? openingTime,
      DateTime? closingTime}) {
    return _Location(
      id: id,
      name: name,
      description: description,
      maxConcurrentAppointments: maxConcurrentAppointments,
      images: images,
      cost: cost,
      allowedDays: allowedDays,
      advancementDays: advancementDays,
      timeSlots: timeSlots,
      openingTime: openingTime,
      closingTime: closingTime,
    );
  }

  Location fromJson(Map<String, Object?> json) {
    return Location.fromJson(json);
  }
}

/// @nodoc
const $Location = _$LocationTearOff();

/// @nodoc
mixin _$Location {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get maxConcurrentAppointments => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;

  /// List of allowed weekdays
  /// If the number is in the list, this day is allowed for appointments.
  /// the week starts at 1, which is monday following the ISO 8601
  List<int> get allowedDays => throw _privateConstructorUsedError;

  /// Number of days you can create an appointment in advance.
  int get advancementDays => throw _privateConstructorUsedError;
  List<TimeSlot> get timeSlots => throw _privateConstructorUsedError;
  DateTime? get openingTime => throw _privateConstructorUsedError;
  DateTime? get closingTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String name,
      String? description,
      int maxConcurrentAppointments,
      List<String> images,
      double cost,
      List<int> allowedDays,
      int advancementDays,
      List<TimeSlot> timeSlots,
      DateTime? openingTime,
      DateTime? closingTime});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? maxConcurrentAppointments = freezed,
    Object? images = freezed,
    Object? cost = freezed,
    Object? allowedDays = freezed,
    Object? advancementDays = freezed,
    Object? timeSlots = freezed,
    Object? openingTime = freezed,
    Object? closingTime = freezed,
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
              as double,
      allowedDays: allowedDays == freezed
          ? _value.allowedDays
          : allowedDays // ignore: cast_nullable_to_non_nullable
              as List<int>,
      advancementDays: advancementDays == freezed
          ? _value.advancementDays
          : advancementDays // ignore: cast_nullable_to_non_nullable
              as int,
      timeSlots: timeSlots == freezed
          ? _value.timeSlots
          : timeSlots // ignore: cast_nullable_to_non_nullable
              as List<TimeSlot>,
      openingTime: openingTime == freezed
          ? _value.openingTime
          : openingTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closingTime: closingTime == freezed
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) =
      __$LocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String name,
      String? description,
      int maxConcurrentAppointments,
      List<String> images,
      double cost,
      List<int> allowedDays,
      int advancementDays,
      List<TimeSlot> timeSlots,
      DateTime? openingTime,
      DateTime? closingTime});
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(_Location _value, $Res Function(_Location) _then)
      : super(_value, (v) => _then(v as _Location));

  @override
  _Location get _value => super._value as _Location;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? maxConcurrentAppointments = freezed,
    Object? images = freezed,
    Object? cost = freezed,
    Object? allowedDays = freezed,
    Object? advancementDays = freezed,
    Object? timeSlots = freezed,
    Object? openingTime = freezed,
    Object? closingTime = freezed,
  }) {
    return _then(_Location(
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
              as double,
      allowedDays: allowedDays == freezed
          ? _value.allowedDays
          : allowedDays // ignore: cast_nullable_to_non_nullable
              as List<int>,
      advancementDays: advancementDays == freezed
          ? _value.advancementDays
          : advancementDays // ignore: cast_nullable_to_non_nullable
              as int,
      timeSlots: timeSlots == freezed
          ? _value.timeSlots
          : timeSlots // ignore: cast_nullable_to_non_nullable
              as List<TimeSlot>,
      openingTime: openingTime == freezed
          ? _value.openingTime
          : openingTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closingTime: closingTime == freezed
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<Identifiable>()
class _$_Location implements _Location {
  _$_Location(
      {this.id,
      required this.name,
      this.description,
      this.maxConcurrentAppointments = 1,
      this.images = const [],
      this.cost = 0,
      this.allowedDays = const [1, 2, 3, 4, 5, 6],
      this.advancementDays = 10,
      this.timeSlots = const [],
      this.openingTime,
      this.closingTime});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

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
  @JsonKey()
  @override
  final double cost;
  @JsonKey()
  @override

  /// List of allowed weekdays
  /// If the number is in the list, this day is allowed for appointments.
  /// the week starts at 1, which is monday following the ISO 8601
  final List<int> allowedDays;
  @JsonKey()
  @override

  /// Number of days you can create an appointment in advance.
  final int advancementDays;
  @JsonKey()
  @override
  final List<TimeSlot> timeSlots;
  @override
  final DateTime? openingTime;
  @override
  final DateTime? closingTime;

  @override
  String toString() {
    return 'Location(id: $id, name: $name, description: $description, maxConcurrentAppointments: $maxConcurrentAppointments, images: $images, cost: $cost, allowedDays: $allowedDays, advancementDays: $advancementDays, timeSlots: $timeSlots, openingTime: $openingTime, closingTime: $closingTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Location &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(
                other.maxConcurrentAppointments, maxConcurrentAppointments) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality()
                .equals(other.allowedDays, allowedDays) &&
            const DeepCollectionEquality()
                .equals(other.advancementDays, advancementDays) &&
            const DeepCollectionEquality().equals(other.timeSlots, timeSlots) &&
            const DeepCollectionEquality()
                .equals(other.openingTime, openingTime) &&
            const DeepCollectionEquality()
                .equals(other.closingTime, closingTime));
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
      const DeepCollectionEquality().hash(allowedDays),
      const DeepCollectionEquality().hash(advancementDays),
      const DeepCollectionEquality().hash(timeSlots),
      const DeepCollectionEquality().hash(openingTime),
      const DeepCollectionEquality().hash(closingTime));

  @JsonKey(ignore: true)
  @override
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(this);
  }
}

abstract class _Location implements Location, Identifiable {
  factory _Location(
      {String? id,
      required String name,
      String? description,
      int maxConcurrentAppointments,
      List<String> images,
      double cost,
      List<int> allowedDays,
      int advancementDays,
      List<TimeSlot> timeSlots,
      DateTime? openingTime,
      DateTime? closingTime}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

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
  double get cost;
  @override

  /// List of allowed weekdays
  /// If the number is in the list, this day is allowed for appointments.
  /// the week starts at 1, which is monday following the ISO 8601
  List<int> get allowedDays;
  @override

  /// Number of days you can create an appointment in advance.
  int get advancementDays;
  @override
  List<TimeSlot> get timeSlots;
  @override
  DateTime? get openingTime;
  @override
  DateTime? get closingTime;
  @override
  @JsonKey(ignore: true)
  _$LocationCopyWith<_Location> get copyWith =>
      throw _privateConstructorUsedError;
}
