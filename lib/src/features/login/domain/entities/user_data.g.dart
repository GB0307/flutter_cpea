// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      id: json['id'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      lote: json['lote'] as String,
      celular: json['celular'] as int,
      telefone: json['telefone'] as int?,
      nascimento: json['nascimento'] as String,
      cpf: json['cpf'] as String,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'lote': instance.lote,
      'celular': instance.celular,
      'telefone': instance.telefone,
      'nascimento': instance.nascimento,
      'cpf': instance.cpf,
      'photoUrl': instance.photoUrl,
    };
