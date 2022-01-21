// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      maxConcurrentAppointments: json['maxConcurrentAppointments'] as int? ?? 1,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      cost: (json['cost'] as num?)?.toDouble() ?? 0,
      allowedDays: (json['allowedDays'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [1, 2, 3, 4, 5, 6],
      advancementDays: json['advancementDays'] as int? ?? 10,
      timeSlots: (json['timeSlots'] as List<dynamic>?)
              ?.map((e) => TimeSlot.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      openingTime: json['openingTime'] == null
          ? null
          : DateTime.parse(json['openingTime'] as String),
      closingTime: json['closingTime'] == null
          ? null
          : DateTime.parse(json['closingTime'] as String),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'maxConcurrentAppointments': instance.maxConcurrentAppointments,
      'images': instance.images,
      'cost': instance.cost,
      'allowedDays': instance.allowedDays,
      'advancementDays': instance.advancementDays,
      'timeSlots': instance.timeSlots,
      'openingTime': instance.openingTime?.toIso8601String(),
      'closingTime': instance.closingTime?.toIso8601String(),
    };
