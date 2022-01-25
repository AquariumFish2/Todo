import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart ' as p;
import 'package:todo/models/failure.dart';
import 'package:todo/models/todo_model.dart';
// assuming that your file is called filename.dart. This will give an error at first,
// but it's needed for drift to know about the generated code
part 'database.g.dart';

// this will generate a table called "todos" for us. The rows of that table will
// be represented by a class called "Todo".
class TodosFromDb extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get content => text().named('body')();
  DateTimeColumn get doingDate => dateTime()();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [TodosFromDb])
class TodoController extends _$TodoController {
  TodoController() : super(_openConnection());
  late ReasultTodos _allTodos;
  ReasultTodos get allTodos => _allTodos;
  @override
  int get schemaVersion => 1;
  getTodos() {
    try {
      final ReasultTodos todoListConvertedFromdb = ReasultTodos([]);
      final todoListFromdb = select(todosFromDb).watch();
      return todoListFromdb;
    } catch (e) {
      Failure(e.toString());
    }
  }

  Todo convertToTodo(TodosFromDbData todosFromDbData) {
    return Todo(todosFromDbData.doingDate, todosFromDbData.title,
        todosFromDbData.content, todosFromDbData.id);
  }

  Stream watchEntriesInCategory(Todo c) {
    return (select(todosFromDb)).watch();
  }

  Future<Either<int, Failure>> addTodoTodb(TodosFromDbCompanion todo) async {
    try {
      int response = await into(todosFromDb).insert((todo));

      return Left(response);
    } catch (e) {
      return Right(
        Failure(
          e.toString(),
        ),
      );
    }
  }

  Future<Either<int, Failure>> removeTodoFromDb(
      TodosFromDbData todosFromDbData) async {
    try {
      int response = await delete(todosFromDb).delete(todosFromDbData);
      return Left(response);
    } catch (e) {
      return Right(
        Failure(
          e.toString(),
        ),
      );
    }
  }

  Future<Either<bool, Failure>> updateTodo(
      TodosFromDbData todosFromDbData) async {
    try {
      bool response = await update(todosFromDb).replace(todosFromDbData);
      return Left(response);
    } catch (e) {
      return Right(
        Failure(
          e.toString(),
        ),
      );
    }
  }
}
