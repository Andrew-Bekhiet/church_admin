import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class DataCheckIndicator extends StatelessWidget {
  static const ValueKey<String> completeBadgeKey = ValueKey(
    'dataCheckIndicator.completeBadge',
  );
  static const ValueKey<String> progressRingKey = ValueKey(
    'dataCheckIndicator.progressRing',
  );
  static const double _ringSize = 20;
  static const double _ringStrokeWidth = 3;
  static const double _overrideDotSize = 8;

  final DataCheck dataCheck;
  final bool canOverride;

  const DataCheckIndicator({
    required this.dataCheck,
    required this.canOverride,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final complete = DataCheckColors.of(context).complete;

    final Widget symbol = dataCheck.isComplete
        ? Icon(
            Symbols.workspace_premium,
            key: completeBadgeKey,
            fill: 1,
            color: complete,
          )
        : SizedBox.square(
            dimension: _ringSize,
            child: CircularProgressIndicator(
              key: progressRingKey,
              value: dataCheck.totalCount == 0
                  ? 0
                  : dataCheck.passedCount / dataCheck.totalCount,
              strokeWidth: _ringStrokeWidth,
              color: complete,
              backgroundColor: colorScheme.outlineVariant,
            ),
          );

    return IconButton(
      visualDensity: VisualDensity.compact,
      tooltip: dataCheck.isComplete
          ? 'البيانات مكتملة'
          : 'اكتمال البيانات: ${dataCheck.passedCount} من ${dataCheck.totalCount}',
      onPressed: () => DataCheckReportDialog.show(
        context,
        dataCheck: dataCheck,
        canOverride: canOverride,
      ),
      icon: Badge(
        isLabelVisible: dataCheck.userOverride != null,
        smallSize: _overrideDotSize,
        backgroundColor: colorScheme.tertiary,
        child: symbol,
      ),
    );
  }
}
