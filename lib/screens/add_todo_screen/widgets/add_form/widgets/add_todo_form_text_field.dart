import 'package:flutter/material.dart';

class AddTodoFormTextField extends StatelessWidget {
  const AddTodoFormTextField({
    Key? key,
    required this.title,
    required this.addTodoTextEditingController,
    required this.onSaved,
    required this.onValidate,
    required this.multiline,
  }) : super(key: key);
  final String title;
  final TextEditingController addTodoTextEditingController;
  final Function onSaved;
  final Function onValidate;
  final bool multiline;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(width: 1, color: Colors.blue.shade300)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: title,
            border: InputBorder.none,
            errorBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
          ),
          // textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          controller: addTodoTextEditingController,
          maxLines: (multiline) ? 3 : 1,
          key: UniqueKey(),
          onSaved: (v) => onSaved(v),
          validator:(v)=> onValidate(v),
        ),
      ),
    );
  }
}
