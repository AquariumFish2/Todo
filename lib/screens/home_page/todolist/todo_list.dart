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
      stream: context.read<TodoController>().getTodos(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        if (snapshot.hasData) {
          List<Todo> todos = [];
          (snapshot.data as List).forEach((e) {
            todos.add(Provider.of<TodoController>(context).convertToTodo(e));
          });
          if (todos.isNotEmpty) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (ctx, i) => TodoListTile(
                todo: todos[i],
              ),
            );
          } else {
            return const Center(
              child: Text('Please select add some todos!'),
            );
          }
        } else {
          return const Center(
            child: Text('Please select add some todos!'),
          );
        }
      },
    );
  }
}
