import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class FingerprintLastSyncLine extends StatelessWidget {
  final FingerprintLastSyncState state;

  const FingerprintLastSyncLine({required this.state, super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final (textKey, text) = switch (state) {
      FingerprintLastSyncLoading() => (
        FingerprintLastSyncLineKeys.loading,
        'آخر مزامنة للبصمة: …',
      ),
      FingerprintNeverSynced() => (
        FingerprintLastSyncLineKeys.neverSynced,
        'لم تتم مزامنة البصمة حتى الآن',
      ),
      FingerprintLastSyncedAt(:final time) => (
        FingerprintLastSyncLineKeys.lastSyncedAt,
        'آخر مزامنة للبصمة: ${time.toLocalArabicWeekdayDateAndTime()}',
      ),
      FingerprintLastSyncUnavailable() => (
        FingerprintLastSyncLineKeys.unavailable,
        'تعذر معرفة وقت آخر مزامنة للبصمة',
      ),
    };

    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 16,
        vertical: 6,
      ),
      child: Row(
        mainAxisAlignment: .center,
        spacing: 6,
        children: [
          Icon(
            Symbols.fingerprint,
            size: 16,
            color: colorScheme.onSurfaceVariant,
          ),
          Flexible(
            child: Text(
              text,
              key: textKey,
              style: TextTheme.of(
                context,
              ).labelMedium?.copyWith(color: colorScheme.onSurfaceVariant),
              maxLines: 1,
              overflow: .ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

abstract final class FingerprintLastSyncLineKeys extends WidgetKeys {
  static const Key loading = ValueKey((FingerprintLastSyncLineKeys, #loading));
  static const Key neverSynced = ValueKey(
    (FingerprintLastSyncLineKeys, #neverSynced),
  );
  static const Key lastSyncedAt = ValueKey(
    (FingerprintLastSyncLineKeys, #lastSyncedAt),
  );
  static const Key unavailable = ValueKey(
    (FingerprintLastSyncLineKeys, #unavailable),
  );
}
