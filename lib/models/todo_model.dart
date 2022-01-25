import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:todo/controllers/database.dart';
part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
class Todo with _$Todo {
  const factory Todo(DateTime doingDate, String title, String content,
      [int? id]) = _Todo;
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}

@freezed
class ReasultTodos with _$ReasultTodos {
  const factory ReasultTodos(List<Todo> todos) = _ReasultTodos;
  factory ReasultTodos.fromJson(Map<String, dynamic> json) =>
      _$ReasultTodosFromJson(json);
}

TodosFromDbData convertToDatabaseData(Todo todo) {
  return TodosFromDbData(
    content: todo.content,
    title: todo.title,
    doingDate: todo.doingDate,
    id: todo.id as int,
  );
}
