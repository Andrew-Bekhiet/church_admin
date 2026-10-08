import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class AddressPreview extends StatelessWidget {
  const AddressPreview({required this.address, super.key});

  final Address address;

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);
    final textTheme = TextTheme.of(context);
    final composedText = address.textComposedFromParts;
    final hasText = composedText.isNotEmpty;

    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: BorderDirectional(
            start: BorderSide(
              color: hasText ? colors.primary : colors.outlineVariant,
              width: 3,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 12,
            top: 2,
            bottom: 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 2,
            children: [
              Row(
                spacing: 4,
                children: [
                  Icon(
                    Symbols.home_pin,
                    color: colors.onSurfaceVariant,
                  ),
                  Text(
                    'معاينة العنوان',
                    style: textTheme.labelMedium?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
              Text(
                hasText ? composedText : 'اكتب العنوان لتظهر المعاينة هنا',
                key: ValueKey(composedText),
                style: hasText
                    ? textTheme.bodyLarge
                    : textTheme.bodyMedium?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
