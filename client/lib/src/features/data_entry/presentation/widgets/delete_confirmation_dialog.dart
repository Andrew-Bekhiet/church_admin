import 'package:flutter/material.dart';

class DeleteConfirmationDialog extends StatelessWidget {
  final String objectName;

  const DeleteConfirmationDialog({required this.objectName, super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('هل تريد حذف $objectName؟'),
      actions: [
        FilledButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('لا'),
        ),
        FilledButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('نعم'),
        ),
      ],
    );
  }
}
