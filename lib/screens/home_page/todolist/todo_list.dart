import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/controllers/database.dart';
import 'package:todo/models/failure.dart';
import 'package:todo/screens/add_todo_screen/widgets/error_dialog.dart';
import 'package:todo/screens/home_page/myhomepage.dart';
import 'package:todo/screens/home_page/todolist/widgets/todo_list_tile.dart';
import 'package:todo/models/todo_model.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: context.watch<TodoController>().getTodos(),
      builder: (context, AsyncSnapshot snapshot) {
        Widget widget = Text('');
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        if (snapshot.hasData) {
          Either<ResultTodos, Failure> todos =
              convertDatabaseDataListToResultTodos(snapshot.data).fold(
            (l) {
              print('return result');
              return Left(l);
            },
            (r) {
              print('return failure');
              return Right(r);
            },
          );
          todos.fold((l) {
            if (l.resultTodos.isNotEmpty) {
              widget = ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (ctx, i) => TodoListTile(
                  todo: l.resultTodos[i],
                ),
              );
            }
            if (l.resultTodos.isEmpty) {
              widget = Center(
                child: Text('${l.resultTodos.isEmpty}'),
              );
            }
          }, (r) {
            return widget = Center(
              child: Text(r.message),
            );
          });
        } else
          return widget = Text('data');
        return widget;
      },
    );
  }
}
