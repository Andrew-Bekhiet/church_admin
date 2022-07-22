import 'package:flutter/material.dart';

class CAErrorDialog extends StatelessWidget {
  final Object exception;
  const CAErrorDialog({required this.exception, super.key});

  @override
  Widget build(BuildContext context) {
    try {
      return AlertDialog(
        actions: [
          TextButton(
            onPressed: Navigator.of(context).pop,
            child: const Text('حسنًا'),
          ),
        ],
        scrollable: true,
        backgroundColor:
            Theme.of(context).errorColor, //TODO: colorScheme.error ?
        title: const Text('حدث خطأ'),
        content: Text(
          exception is FlutterErrorDetails
              ? (exception as FlutterErrorDetails).exceptionAsString() +
                  (exception as FlutterErrorDetails).toString()
              : exception.toString(),
        ),
      );
    } catch (e, stack) {
      return CAErrorDialog(
        exception: FlutterErrorDetails(exception: e, stack: stack),
      );
    }
  }
}
