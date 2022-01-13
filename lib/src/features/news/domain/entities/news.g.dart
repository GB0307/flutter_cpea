// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$$_NewsFromJson(Map<String, dynamic> json) => _$_News(
      id: json['id'] as String,
      title: json['title'] as String,
      text: json['text'] as String,
      publishDate: DateTime.parse(json['publishDate'] as String),
      headerImage: json['headerImage'] as String?,
    );

Map<String, dynamic> _$$_NewsToJson(_$_News instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'text': instance.text,
      'publishDate': instance.publishDate.toIso8601String(),
      'headerImage': instance.headerImage,
    };
