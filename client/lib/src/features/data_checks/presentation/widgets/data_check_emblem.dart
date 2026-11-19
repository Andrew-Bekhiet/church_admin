import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class DataCheckEmblem extends StatelessWidget {
  static const double _ringStrokeRatio = 0.15;
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
      child: dataCheck.isComplete
          ? Icon(
              Symbols.workspace_premium,
              key: DataCheckEmblemKeys.completeBadge,
              fill: 1,
              size: size,
              color: complete,
            )
          : SizedBox.square(
              dimension: size,
              child: CircularProgressIndicator(
                key: DataCheckEmblemKeys.progressRing,
                value: dataCheck.completenessPercent / _percentFull,
                strokeWidth: size * _ringStrokeRatio,
                color: complete,
                backgroundColor: colorScheme.outlineVariant,
              ),
            ),
    );
  }
}

abstract final class DataCheckEmblemKeys extends WidgetKeys {
  static const Key completeBadge = ValueKey((
    DataCheckEmblemKeys,
    #completeBadge,
  ));
  static const Key progressRing = ValueKey((
    DataCheckEmblemKeys,
    #progressRing,
  ));
}
