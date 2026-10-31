import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

class SuggestedAddressCard extends StatelessWidget {
  final Address? suggestedAddress;
  final VoidCallback onUseSuggestion;
  const SuggestedAddressCard({
    required this.suggestedAddress,
    required this.onUseSuggestion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      child: switch (suggestedAddress) {
        final address? => Card(
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
                  [
                    ?address.area?.name,
                    address.toString(),
                  ].where((part) => part.isNotEmpty).join('، '),
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
        null => const SizedBox.shrink(),
      },
    );
  }
}
