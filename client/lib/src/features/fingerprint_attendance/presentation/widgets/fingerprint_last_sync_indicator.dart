import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class FingerprintLastSyncIndicator extends StatefulWidget {
  final FingerprintLastSyncState state;

  const FingerprintLastSyncIndicator({required this.state, super.key});

  @override
  State<FingerprintLastSyncIndicator> createState() =>
      _FingerprintLastSyncIndicatorState();
}

class _FingerprintLastSyncIndicatorState
    extends State<FingerprintLastSyncIndicator> {
  static const Duration _elapsedTimeRefreshInterval = Duration(seconds: 30);
  static const Duration _tooltipShowDuration = Duration(seconds: 4);

  late final Timer _elapsedTimeRefresh;
  late DateTime _now = clock.now();

  @override
  void initState() {
    super.initState();
    _elapsedTimeRefresh = Timer.periodic(
      _elapsedTimeRefreshInterval,
      (_) => setState(_readClock),
    );
  }

  @override
  void didUpdateWidget(FingerprintLastSyncIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    _readClock();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final (textKey, text, details) = switch (widget.state) {
      FingerprintLastSyncLoading() => (
        FingerprintLastSyncIndicatorKeys.loading,
        '…',
        'جارٍ معرفة وقت آخر مزامنة للبصمة',
      ),
      FingerprintLastSyncNever() => (
        FingerprintLastSyncIndicatorKeys.neverSynced,
        'لا مزامنة بعد',
        'لم تتم مزامنة البصمة حتى الآن',
      ),
      FingerprintLastSyncKnown(:final time) => (
        FingerprintLastSyncIndicatorKeys.elapsedSinceLastSync,
        time.toArabicElapsedTimeOrNowIfUnderAMinute(now: _now),
        'آخر مزامنة للبصمة: ${time.toLocalArabicWeekdayDateAndTime()}',
      ),
      FingerprintLastSyncUnavailable() => (
        FingerprintLastSyncIndicatorKeys.unavailable,
        '—',
        'تعذر معرفة وقت آخر مزامنة للبصمة',
      ),
    };

    return Tooltip(
      key: FingerprintLastSyncIndicatorKeys.self,
      message: details,
      triggerMode: .tap,
      showDuration: _tooltipShowDuration,
      child: DecoratedBox(
        decoration: ShapeDecoration(
          shape: const StadiumBorder(),
          color: colorScheme.onSurface.withValues(alpha: 0.07),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 6,
            end: 9,
            top: 4,
            bottom: 4,
          ),
          child: Row(
            mainAxisSize: .min,
            spacing: 3,
            children: [
              Icon(
                Symbols.fingerprint,
                size: 14,
                color: colorScheme.onSurfaceVariant,
              ),
              Text(
                text,
                key: textKey,
                style: TextTheme.of(context).labelSmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  height: 1.1,
                ),
                maxLines: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _readClock() => _now = clock.now();

  @override
  void dispose() {
    _elapsedTimeRefresh.cancel();
    super.dispose();
  }
}

abstract final class FingerprintLastSyncIndicatorKeys extends WidgetKeys {
  static const Key self = ValueKey((FingerprintLastSyncIndicatorKeys, #self));
  static const Key loading = ValueKey(
    (FingerprintLastSyncIndicatorKeys, #loading),
  );
  static const Key neverSynced = ValueKey(
    (FingerprintLastSyncIndicatorKeys, #neverSynced),
  );
  static const Key elapsedSinceLastSync = ValueKey(
    (FingerprintLastSyncIndicatorKeys, #elapsedSinceLastSync),
  );
  static const Key unavailable = ValueKey(
    (FingerprintLastSyncIndicatorKeys, #unavailable),
  );
}
