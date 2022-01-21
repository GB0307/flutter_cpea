// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentLocation _$$_AppointmentLocationFromJson(
        Map<String, dynamic> json) =>
    _$_AppointmentLocation(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      maxConcurrentAppointments: json['maxConcurrentAppointments'] as int? ?? 1,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      cost: (json['cost'] as num?)?.toDouble(),
      duration: Duration(microseconds: json['duration'] as int),
      minAppointmentTime: json['minAppointmentTime'] == null
          ? null
          : DateTime.parse(json['minAppointmentTime'] as String),
      maxAppointmentTime: json['maxAppointmentTime'] == null
          ? null
          : DateTime.parse(json['maxAppointmentTime'] as String),
      allowedDays: (json['allowedDays'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [1, 2, 3, 4, 5, 6],
      advancementDays: json['advancementDays'] as int? ?? 10,
    );

Map<String, dynamic> _$$_AppointmentLocationToJson(
        _$_AppointmentLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'maxConcurrentAppointments': instance.maxConcurrentAppointments,
      'images': instance.images,
      'cost': instance.cost,
      'duration': instance.duration.inMicroseconds,
      'minAppointmentTime': instance.minAppointmentTime?.toIso8601String(),
      'maxAppointmentTime': instance.maxAppointmentTime?.toIso8601String(),
      'allowedDays': instance.allowedDays,
      'advancementDays': instance.advancementDays,
    };
