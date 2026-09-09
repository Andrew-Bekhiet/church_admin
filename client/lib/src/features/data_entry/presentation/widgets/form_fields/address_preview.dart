import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class AddressPreview extends StatelessWidget {
  const AddressPreview({required this.address, super.key});

  final Address address;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final composedText = address.textComposedFromParts;
    final isEmpty = composedText.isEmpty;

    return Card(
      color: theme.colorScheme.surfaceContainerLow,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Icon(Symbols.home_pin, color: theme.colorScheme.primary),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                children: [
                  Text(
                    'معاينة العنوان',
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Text(
                    isEmpty
                        ? 'أدخل بيانات العنوان لتظهر المعاينة'
                        : composedText,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: isEmpty
                          ? theme.colorScheme.onSurfaceVariant
                          : theme.colorScheme.onSurface,
                      fontStyle: isEmpty ? FontStyle.italic : null,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
