import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AdminScopeActionButtons extends StatelessWidget {
  const AdminScopeActionButtons({
    required this.onDuplicate,
    required this.onDelete,
    super.key,
  });

  final void Function()? onDuplicate;
  final void Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (onDuplicate != null)
          FilledButton.tonalIcon(
            onPressed: onDuplicate,
            icon: const Icon(Symbols.content_copy),
            label: const Text('نسخ الأمانة'),
          ),
        FilledButton.tonalIcon(
          style: FilledButton.styleFrom(
            backgroundColor: ColorScheme.of(context).errorContainer,
            foregroundColor: ColorScheme.of(context).onErrorContainer,
          ),
          onPressed: onDelete,
          icon: const Icon(Symbols.cancel),
          label: const Text('إزالة الأمانة'),
        ),
      ],
    );
  }
}
