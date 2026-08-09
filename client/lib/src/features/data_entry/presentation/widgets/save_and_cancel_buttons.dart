import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class SaveAndCancelButtonRow extends StatelessWidget {
  final void Function() onSave;
  final void Function() onCancel;
  const SaveAndCancelButtonRow({
    required this.onSave,
    required this.onCancel,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        Expanded(
          child: FilledButton.icon(
            icon: const Icon(Symbols.save),
            label: const Text(
              'حــفــظ',
            ),
            onPressed: onSave,
          ),
        ),
        Expanded(
          child: FilledButton.icon(
            icon: const Icon(Symbols.cancel_rounded),
            label: const Text(
              'الــــغـــــاء',
            ),
            onPressed: onCancel,
          ),
        ),
      ],
    );
  }
}
