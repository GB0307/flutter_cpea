// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Package _$$_PackageFromJson(Map<String, dynamic> json) => _$_Package(
      id: json['id'] as String?,
      invoice: json['invoice'] as String?,
      recipient: json['recipient'] as String,
      receivedAt: DateTime.parse(json['receivedAt'] as String),
      address: json['address'] as String,
      deliveredTo: json['deliveredTo'] as String?,
      deliveredAt: json['deliveredAt'] == null
          ? null
          : DateTime.parse(json['deliveredAt'] as String),
      deliveredToDocument: json['deliveredToDocument'] as String?,
      observations: json['observations'] as String?,
      deliveryObservations: json['deliveryObservations'] as String?,
    );

Map<String, dynamic> _$$_PackageToJson(_$_Package instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoice': instance.invoice,
      'recipient': instance.recipient,
      'receivedAt': instance.receivedAt.toIso8601String(),
      'address': instance.address,
      'deliveredTo': instance.deliveredTo,
      'deliveredAt': instance.deliveredAt?.toIso8601String(),
      'deliveredToDocument': instance.deliveredToDocument,
      'observations': instance.observations,
      'deliveryObservations': instance.deliveryObservations,
    };
