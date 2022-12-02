import 'package:flutter/material.dart';

class CAErrorDialog extends StatelessWidget {
  // ignore: no-object-declaration
  final Object exception;
  const CAErrorDialog({required this.exception, super.key});

  @override
  Widget build(BuildContext context) {
    try {
      return AlertDialog(
        actions: [
          TextButton(
            onPressed: Navigator.of(context).pop,
            child: Text(
              'حسنًا',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onErrorContainer,
              ),
            ),
          ),
        ],
        scrollable: true,
        backgroundColor: Theme.of(context).colorScheme.errorContainer,
        title: Text(
          'حدث خطأ',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onErrorContainer,
          ),
        ),
        content: Directionality(
          textDirection: TextDirection.ltr,
          child: Text(
            exception is FlutterErrorDetails
                ? (exception as FlutterErrorDetails).exceptionAsString() +
                    (exception as FlutterErrorDetails).toString()
                : exception.toString(),
            style: TextStyle(
              color: Theme.of(context).colorScheme.onErrorContainer,
            ),
          ),
        ),
      );
    } catch (e, stack) {
      return CAErrorDialog(
        exception: FlutterErrorDetails(exception: e, stack: stack),
      );
    }
  }
}
