// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Permit _$$_PermitFromJson(Map<String, dynamic> json) => _$_Permit(
      id: json['id'] as String?,
      authorizer: json['authorizer'] as String,
      authorized: json['authorized'] as String,
      startDate:
          const TimestampConverter().fromJson(json['startDate'] as Timestamp),
      endDate:
          const TimestampConverter().fromJson(json['endDate'] as Timestamp),
      creationDate: const TimestampConverter()
          .fromJson(json['creationDate'] as Timestamp),
      lastUpdated:
          const TimestampConverter().fromJson(json['lastUpdated'] as Timestamp),
    );

Map<String, dynamic> _$$_PermitToJson(_$_Permit instance) => <String, dynamic>{
      'id': instance.id,
      'authorizer': instance.authorizer,
      'authorized': instance.authorized,
      'startDate': const TimestampConverter().toJson(instance.startDate),
      'endDate': const TimestampConverter().toJson(instance.endDate),
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
      'lastUpdated': const TimestampConverter().toJson(instance.lastUpdated),
    };
