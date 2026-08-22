import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class SuggestedAddressCard extends StatelessWidget {
  const SuggestedAddressCard({
    required this.suggestedAddress,
    required this.onUseSuggestion,
    super.key,
  });

  final Address? suggestedAddress;
  final VoidCallback onUseSuggestion;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      child: suggestedAddress != null
          ? Card(
              color: theme.colorScheme.surfaceContainerLow,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'تم إيجاد عنوان مقترح',
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        TextButton.icon(
                          onPressed: onUseSuggestion,
                          icon: const Icon(Symbols.done),
                          label: const Text('استخدام العنوان المقترح'),
                        ),
                      ],
                    ),
                    Text(
                      suggestedAddress.toString(),
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
