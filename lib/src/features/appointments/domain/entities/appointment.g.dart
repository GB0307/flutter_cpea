// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Appointment _$$_AppointmentFromJson(Map<String, dynamic> json) =>
    _$_Appointment(
      id: json['id'] as String?,
      appointmentName: json['appointmentName'] as String,
      location: json['location'],
      startDate: DateTime.parse(json['startDate'] as String),
      finishDate: DateTime.parse(json['finishDate'] as String),
      creationDate: DateTime.parse(json['creationDate'] as String),
      totalCost: (json['totalCost'] as num?)?.toDouble(),
      scheduler: json['scheduler'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$_AppointmentToJson(_$_Appointment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appointmentName': instance.appointmentName,
      'location': instance.location,
      'startDate': instance.startDate.toIso8601String(),
      'finishDate': instance.finishDate.toIso8601String(),
      'creationDate': instance.creationDate.toIso8601String(),
      'totalCost': instance.totalCost,
      'scheduler': instance.scheduler,
      'address': instance.address,
    };
