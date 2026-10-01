import 'package:flutter/material.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

class CAErrorDialog extends StatelessWidget {
  // ignore: no-object-declaration
  final Object exception;

  const CAErrorDialog({required this.exception, super.key});

  @override
  Widget build(BuildContext context) {
    try {
      final theme = Theme.of(context);

      return PostHogUnmaskWidget(
        child: AlertDialog(
          actions: [
            TextButton(
              onPressed: Navigator.of(context).pop,
              child: Text(
                'حسنًا',
                style: TextStyle(
                  color: theme.colorScheme.onErrorContainer,
                ),
              ),
            ),
          ],
          scrollable: true,
          backgroundColor: theme.colorScheme.errorContainer,
          title: Text(
            'حدث خطأ',
            style: TextStyle(
              color: theme.colorScheme.onErrorContainer,
            ),
          ),
          content: Directionality(
            textDirection: TextDirection.ltr,
            child: Text(
              switch (exception) {
                final FlutterErrorDetails e => '${e.exceptionAsString()}\n$e',
                _ => exception.toString(),
              },
              style: TextStyle(
                color: theme.colorScheme.onErrorContainer,
              ),
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
