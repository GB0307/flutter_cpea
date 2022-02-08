// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Permit _$$_PermitFromJson(Map<String, dynamic> json) => _$_Permit(
      id: json['id'] as String?,
      authorizer: json['authorizer'] as String,
      authorized: json['authorized'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      creationDate: DateTime.parse(json['creationDate'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$_PermitToJson(_$_Permit instance) => <String, dynamic>{
      'id': instance.id,
      'authorizer': instance.authorizer,
      'authorized': instance.authorized,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'creationDate': instance.creationDate.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };
