import 'package:flutter/material.dart';
import 'package:todo/screens/add_todo_screen/add_todo_screen.dart';
import 'package:todo/screens/home_page/todolist/todo_list.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Todos!'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => AddTodoScreen(),
            ),
          );
        },
      ),
      body: const TodoList(),
    );
  }
}
