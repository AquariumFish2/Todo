import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:todo/models/failure.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({Key? key, required this.failure}) : super(key: key);
  final Failure failure;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: 60.h,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(failure.message),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
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
