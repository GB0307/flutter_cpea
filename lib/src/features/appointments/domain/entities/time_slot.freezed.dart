// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeSlot _$TimeSlotFromJson(Map<String, dynamic> json) {
  return _TimeSlot.fromJson(json);
}

/// @nodoc
class _$TimeSlotTearOff {
  const _$TimeSlotTearOff();

  _TimeSlot call({required DateTime startTime, required Duration duration}) {
    return _TimeSlot(
      startTime: startTime,
      duration: duration,
    );
  }

  TimeSlot fromJson(Map<String, Object?> json) {
    return TimeSlot.fromJson(json);
  }
}

/// @nodoc
const $TimeSlot = _$TimeSlotTearOff();

/// @nodoc
mixin _$TimeSlot {
  DateTime get startTime => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSlotCopyWith<TimeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotCopyWith<$Res> {
  factory $TimeSlotCopyWith(TimeSlot value, $Res Function(TimeSlot) then) =
      _$TimeSlotCopyWithImpl<$Res>;
  $Res call({DateTime startTime, Duration duration});
}

/// @nodoc
class _$TimeSlotCopyWithImpl<$Res> implements $TimeSlotCopyWith<$Res> {
  _$TimeSlotCopyWithImpl(this._value, this._then);

  final TimeSlot _value;
  // ignore: unused_field
  final $Res Function(TimeSlot) _then;

  @override
  $Res call({
    Object? startTime = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
abstract class _$TimeSlotCopyWith<$Res> implements $TimeSlotCopyWith<$Res> {
  factory _$TimeSlotCopyWith(_TimeSlot value, $Res Function(_TimeSlot) then) =
      __$TimeSlotCopyWithImpl<$Res>;
  @override
  $Res call({DateTime startTime, Duration duration});
}

/// @nodoc
class __$TimeSlotCopyWithImpl<$Res> extends _$TimeSlotCopyWithImpl<$Res>
    implements _$TimeSlotCopyWith<$Res> {
  __$TimeSlotCopyWithImpl(_TimeSlot _value, $Res Function(_TimeSlot) _then)
      : super(_value, (v) => _then(v as _TimeSlot));

  @override
  _TimeSlot get _value => super._value as _TimeSlot;

  @override
  $Res call({
    Object? startTime = freezed,
    Object? duration = freezed,
  }) {
    return _then(_TimeSlot(
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeSlot implements _TimeSlot {
  _$_TimeSlot({required this.startTime, required this.duration});

  factory _$_TimeSlot.fromJson(Map<String, dynamic> json) =>
      _$$_TimeSlotFromJson(json);

  @override
  final DateTime startTime;
  @override
  final Duration duration;

  @override
  String toString() {
    return 'TimeSlot(startTime: $startTime, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeSlot &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$TimeSlotCopyWith<_TimeSlot> get copyWith =>
      __$TimeSlotCopyWithImpl<_TimeSlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeSlotToJson(this);
  }
}

abstract class _TimeSlot implements TimeSlot {
  factory _TimeSlot({required DateTime startTime, required Duration duration}) =
      _$_TimeSlot;

  factory _TimeSlot.fromJson(Map<String, dynamic> json) = _$_TimeSlot.fromJson;

  @override
  DateTime get startTime;
  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$TimeSlotCopyWith<_TimeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}
