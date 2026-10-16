import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

class LocationUpdateReminderCard extends StatelessWidget {
  const LocationUpdateReminderCard({
    required this.isShown,
    required this.onUpdateLocation,
    required this.onKeepLocation,
    super.key,
  });

  final bool isShown;
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
      child: isShown
          ? Card(
              key: LocationUpdateReminderCardKeys.card,
              color: colorScheme.surfaceContainerHigh,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: colorScheme.outlineVariant),
              ),
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
                            color: colorScheme.primary,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Icon(
                              Symbols.wrong_location,
                              color: colorScheme.onPrimary,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 2,
                            children: [
                              Text(
                                'هل تم نقل المنزل؟',
                                style: textTheme.titleSmall?.copyWith(
                                  color: colorScheme.onSurface,
                                ),
                              ),
                              Text(
                                'تغيّر العنوان لكن الموقع على الخريطة ما زال '
                                'على المكان القديم',
                                style: textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.onSurface,
                                ),
                              ),
                            ],
                          ),
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
                          style: TextButton.styleFrom(
                            foregroundColor: colorScheme.onSurface,
                          ),
                          child: const Text('الموقع صحيح'),
                        ),
                        FilledButton.icon(
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
            )
          : const SizedBox.shrink(),
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
