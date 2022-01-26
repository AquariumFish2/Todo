// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => _$_Todo(
      json['title'] as String,
      json['content'] as String,
      DateTime.parse(json['doingDate'] as String),
      json['id'] as int?,
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'doingDate': instance.doingDate.toIso8601String(),
      'id': instance.id,
    };

_$_ResultTodos _$$_ResultTodosFromJson(Map<String, dynamic> json) =>
    _$_ResultTodos(
      (json['resultTodos'] as List<dynamic>)
          .map((e) => Todo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultTodosToJson(_$_ResultTodos instance) =>
    <String, dynamic>{
      'resultTodos': instance.resultTodos,
    };
