import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:todo/models/failure.dart';
import 'package:todo/screens/home_page/myhomepage.dart';

class ErrorDialog extends StatelessWidget {
  ErrorDialog({Key? key, required this.failure}) : super(key: key);
  final Failure failure;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SingleChildScrollView(
        child: SizedBox(
          height: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(failure.message),
              TextButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: const Text('ok'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
