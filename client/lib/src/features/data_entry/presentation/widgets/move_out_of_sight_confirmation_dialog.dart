import 'package:flutter/material.dart';

class MoveOutOfSightConfirmationDialog extends StatelessWidget {
  const MoveOutOfSightConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('لن تتمكن من رؤية البيانات بعد الحفظ'),
      content: const Text(
        'بعد الحفظ ستصبح هذه البيانات خارج المناطق والخدمات '
        'التي تتابعها، ولن تتمكن من رؤيتها أو تعديلها.',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('إلغاء'),
        ),
        FilledButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('حفظ'),
        ),
      ],
    );
  }
}
