import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/controllers/database.dart';
import 'package:todo/models/failure.dart';
import 'package:todo/screens/home_page/todolist/widgets/todo_list_tile.dart';
import 'package:todo/models/todo_model.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: context.read<TodoController>().getTodos().asStream(),
      builder:
          (context, AsyncSnapshot<Either<ReasultTodos, Failure>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        if (snapshot.hasData) {
          return snapshot.data!.fold((l) {
            if (l.todos.isNotEmpty) {
              return ListView.builder(
                itemCount: l.todos.length,
                itemBuilder: (ctx, i) => TodoListTile(
                  todo: l.todos[i],
                ),
              );
            } else {
              return const Center(
                child: Text('Please select add some todos!'),
              );
            }
          }, (r) => Text(r.message));
        } else {
          return const Text('Add some todos !!');
        }
      },
    );
  }
}
