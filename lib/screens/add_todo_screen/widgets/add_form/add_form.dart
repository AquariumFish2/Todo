import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:todo/controllers/database.dart';
import 'package:todo/models/todo_model.dart';
import 'package:todo/screens/add_todo_screen/widgets/add_form/widgets/add_todo_form_text_field.dart';
import 'package:todo/screens/home_page/myhomepage.dart';

import '../error_dialog.dart';

// ignore: must_be_immutable
class AddTodoForm extends StatefulWidget {
  AddTodoForm({Key? key, this.todo}) : super(key: key);
  Todo? todo;
  @override
  State<AddTodoForm> createState() => _AddTodoFormState();
}

class _AddTodoFormState extends State<AddTodoForm> {
  String title = '';

  String content = '';

  DateTime? doingDate;

  final addTodoFormKey = GlobalKey<FormState>();

  final titleController = TextEditingController();

  final contentController = TextEditingController();

  save(BuildContext context) {
    if (addTodoFormKey.currentState!.validate() && doingDate != null) {
      addTodoFormKey.currentState!.save();
      final todoDatabase = Provider.of<TodoController>(context, listen: false);
      Todo todo = Todo(doingDate as DateTime, title, content);
      if (widget.todo == null) {
        todoDatabase
            .addTodoTodb(
              TodosFromDbCompanion(
                content: drift.Value(todo.content),
                title: drift.Value(todo.title),
                doingDate: drift.Value(todo.doingDate),
              ),
            )
            .then(
              (addingResult) => addingResult.fold(
                (l) => null,
                (r) => showDialog(
                  context: context,
                  builder: (context) => ErrorDialog(failure: r),
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
      } else {
        todoDatabase
            .updateTodo(
              convertToDatabaseData(
                widget.todo!.copyWith(
                    content: content,
                    title: title,
                    doingDate: doingDate as DateTime,
                    id: widget.todo!.id),
              ),
            )
            .then(
              (addingResult) => addingResult.fold(
                (l) => null,
                (r) => showDialog(
                  context: context,
                  builder: (context) => ErrorDialog(failure: r),
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
      }
    }
  }

  @override
  void initState() {
    //checking if we are editing then fetching data
    if (widget.todo != null) {
      title = titleController.text = widget.todo!.title;
      content = contentController.text = widget.todo!.content;
      doingDate = widget.todo!.doingDate;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: addTodoFormKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AddTodoFormTextField(
              multiline: false,
              title: 'Todo Title',
              addTodoTextEditingController: titleController,
              onSaved: (v) {
                title = v;
              },
              onValidate: (String v) {
                if (v.isEmpty) return 'enter title';
              },
            ),
            AddTodoFormTextField(
              multiline: true,
              title: 'Todo content',
              addTodoTextEditingController: contentController,
              onSaved: (v) {
                content = v;
              },
              onValidate: (String v) {
                if (v.isEmpty) return 'enter some content';
              },
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    child: const Text('date'),
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2030),
                      ).then(
                        (date) {
                          setState(
                            () {
                              doingDate = date;
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: (doingDate != null)
                      ? Text(
                          DateFormat.yMMMEd().format(doingDate as DateTime),
                          textAlign: TextAlign.end,
                        )
                      : Container(),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              child: const Text('save'),
              onPressed: () => save(context),
            )
          ],
        ),
      ),
    );
  }
}
