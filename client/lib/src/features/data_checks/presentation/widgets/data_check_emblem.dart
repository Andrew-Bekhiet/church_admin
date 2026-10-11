import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class DataCheckEmblem extends StatelessWidget {
  static const ValueKey<String> completeBadgeKey = ValueKey(
    'dataCheckEmblem.completeBadge',
  );
  static const ValueKey<String> progressRingKey = ValueKey(
    'dataCheckEmblem.progressRing',
  );
  static const double _ringStrokeRatio = 0.15;
  static const double _overrideDotSize = 8;
  static const int _percentFull = 100;

  final DataCheck dataCheck;
  final double size;

  const DataCheckEmblem({
    required this.dataCheck,
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final complete = DataCheckColors.of(context).complete;

    return Tooltip(
      message: dataCheck.completenessLabel,
      child: Badge(
        isLabelVisible: dataCheck.userOverride != null,
        smallSize: _overrideDotSize,
        backgroundColor: colorScheme.tertiary,
        child: dataCheck.isComplete
            ? Icon(
                Symbols.workspace_premium,
                key: completeBadgeKey,
                fill: 1,
                size: size,
                color: complete,
              )
            : SizedBox.square(
                dimension: size,
                child: CircularProgressIndicator(
                  key: progressRingKey,
                  value: dataCheck.completenessPercent / _percentFull,
                  strokeWidth: size * _ringStrokeRatio,
                  color: complete,
                  backgroundColor: colorScheme.outlineVariant,
                ),
              ),
      ),
    );
  }
}
