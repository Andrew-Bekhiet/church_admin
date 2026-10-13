import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class LocationUpdateReminderCard extends StatelessWidget {
  const LocationUpdateReminderCard({
    required this.changedPlaceParts,
    required this.onUpdateLocation,
    required this.onKeepLocation,
    super.key,
  });

  final Set<AddressPlacePart> changedPlaceParts;
  final VoidCallback onUpdateLocation;
  final VoidCallback onKeepLocation;

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final textTheme = TextTheme.of(context);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      switchInCurve: Curves.easeOutCubic,
      switchOutCurve: Curves.easeInCubic,
      transitionBuilder: (child, animation) => SizeTransition(
        sizeFactor: animation,
        child: FadeTransition(opacity: animation, child: child),
      ),
      child: changedPlaceParts.isEmpty
          ? const SizedBox.shrink()
          : Card(
              key: LocationUpdateReminderCardKeys.card,
              color: colorScheme.tertiaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: 8,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 12,
                      children: [
                        DecoratedBox(
                          decoration: ShapeDecoration(
                            shape: const CircleBorder(),
                            color: colorScheme.tertiary,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Icon(
                              Symbols.wrong_location,
                              color: colorScheme.onTertiary,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 2,
                            children: [
                              Text(
                                'هل انتقل المنزل؟',
                                style: textTheme.titleSmall?.copyWith(
                                  color: colorScheme.onTertiaryContainer,
                                ),
                              ),
                              Text(
                                'تغيّر العنوان لكن الموقع على الخريطة ما زال '
                                'على المكان القديم',
                                style: textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.onTertiaryContainer,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: [
                        for (final part in changedPlaceParts)
                          Chip(
                            avatar: const Icon(Symbols.edit, size: 16),
                            label: Text(part.label),
                            visualDensity: VisualDensity.compact,
                          ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      spacing: 8,
                      children: [
                        TextButton(
                          key: LocationUpdateReminderCardKeys.keepLocation,
                          onPressed: onKeepLocation,
                          child: const Text('الموقع صحيح'),
                        ),
                        FilledButton.tonalIcon(
                          key: LocationUpdateReminderCardKeys.updateLocation,
                          onPressed: onUpdateLocation,
                          icon: const Icon(Symbols.edit_location_alt),
                          label: const Text('تحديث الموقع'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

abstract final class LocationUpdateReminderCardKeys {
  static const Key card = ValueKey('Location Update Reminder Card Key');
  static const Key updateLocation = ValueKey(
    'Location Update Reminder Update Button Key',
  );
  static const Key keepLocation = ValueKey(
    'Location Update Reminder Keep Button Key',
  );
}
