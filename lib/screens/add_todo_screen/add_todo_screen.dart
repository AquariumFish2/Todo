import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/controllers/database.dart';
import 'package:todo/models/todo_model.dart';
import 'package:todo/screens/add_todo_screen/widgets/add_form/add_form.dart';
import 'package:todo/screens/add_todo_screen/widgets/error_dialog.dart';
import 'package:todo/screens/home_page/myhomepage.dart';

// ignore: must_be_immutable
class AddTodoScreen extends StatelessWidget {
  AddTodoScreen({Key? key, this.todo}) : super(key: key);
  Todo? todo;
  @override
  Widget build(BuildContext context) {
    final todoDatabaseController = Provider.of<TodoController>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (todo != null)
            IconButton(
              onPressed: () {
                todoDatabaseController
                    .removeTodoFromDb(convertToDatabaseData(todo as Todo))
                    .then(
                      (resultFromRemoving) => resultFromRemoving.fold(
                        (l) => null,
                        (r) => showDialog(
                          context: context,
                          builder: (context) => ErrorDialog(
                            failure: r,
                          ),
                        ),
                      ),
                    );
                Navigator.pop(context);

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ),
                );
              },
              icon: const Icon(Icons.delete),
            ),
        ],
        title: const Text('Add Todo'),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const MyHomePage(),
              ),
            );
          },
        ),
        centerTitle: true,
      ),
      body: AddTodoForm(
        todo: todo,
      ),
    );
  }
}
