import 'package:flutter/material.dart';

class DiscardChangesDialog extends StatelessWidget {
  const DiscardChangesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('هل تريد تجاهل التغييرات؟'),
      actions: [
        FilledButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('البقاء'),
        ),
        FilledButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('تجاهل'),
        ),
      ],
    );
  }
}
