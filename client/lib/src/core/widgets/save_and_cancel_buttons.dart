import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class SaveAndCancelButtonRow extends StatelessWidget {
  const SaveAndCancelButtonRow({
    required this.onSave,
    required this.onCancel,
    super.key,
  });

  final void Function() onSave;
  final void Function() onCancel;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        Expanded(
          child: FilledButton.icon(
            icon: const Icon(Symbols.save),
            label: Text(
              'حــفــظ',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
            onPressed: onSave,
            style: ButtonStyle(
              shape: WidgetStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              backgroundColor: WidgetStateProperty.all(
                Theme.of(context).colorScheme.primaryContainer,
              ),
            ),
          ),
        ),
        Expanded(
          child: FilledButton.icon(
            icon: const Icon(Symbols.cancel_rounded),
            label: Text(
              'الــــغـــــاء',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
            onPressed: onCancel,
            style: ButtonStyle(
              shape: WidgetStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              backgroundColor: WidgetStateProperty.all(
                Theme.of(context).colorScheme.primaryContainer,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
