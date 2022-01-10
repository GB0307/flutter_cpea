// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Permit _$$_PermitFromJson(Map<String, dynamic> json) => _$_Permit(
      authorizer: json['authorizer'] as String,
      authorized: json['authorized'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$_PermitToJson(_$_Permit instance) => <String, dynamic>{
      'authorizer': instance.authorizer,
      'authorized': instance.authorized,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };
