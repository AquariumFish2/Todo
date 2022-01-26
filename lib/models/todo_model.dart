import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:todo/controllers/database.dart';
import 'package:todo/models/failure.dart';
import 'package:todo/screens/add_todo_screen/widgets/error_dialog.dart';
part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
class Todo with _$Todo {
  const factory Todo(String title, String content, DateTime doingDate,
      [int? id]) = _Todo;
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}

@freezed
class ResultTodos with _$ResultTodos {
  const factory ResultTodos(List<Todo> resultTodos) = _ResultTodos;
  factory ResultTodos.fromJson(Map<String, dynamic> json) =>
      _$ResultTodosFromJson(json);
}

TodosFromDbData convertToDatabaseData(Todo todo) {
  return TodosFromDbData(
    content: todo.content,
    title: todo.title,
    doingDate: todo.doingDate,
    id: todo.id as int,
  );
}

Todo convertToTodo(TodosFromDbData todosFromDbData) {
  return Todo(todosFromDbData.title, todosFromDbData.content,
      todosFromDbData.doingDate, todosFromDbData.id);
}

Either<ResultTodos, Failure> convertDatabaseDataListToResultTodos(
    List<TodosFromDbData> todosFromDb) {
  try {
    List<Todo> convertedTodosFromDbToTodo = [];
    todosFromDb.map((e) {
      print('converted:${convertToTodo(e)}');
      convertedTodosFromDbToTodo.add(
        convertToTodo(e),
      );
    }).toList();
    return Left(ResultTodos(convertedTodosFromDbToTodo));
  } catch (e) {
    print(e);
    return Right(
      Failure(
        e.toString(),
      ),
    );
  }
}
