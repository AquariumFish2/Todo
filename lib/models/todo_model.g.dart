// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => _$_Todo(
      DateTime.parse(json['doingDate'] as String),
      json['title'] as String,
      json['content'] as String,
      json['id'] as int?,
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'doingDate': instance.doingDate.toIso8601String(),
      'title': instance.title,
      'content': instance.content,
      'id': instance.id,
    };
