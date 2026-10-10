import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class DataCheckReportHeader extends StatelessWidget {
  static const double _emblemSize = 56;
  static const double _ringStrokeWidth = 5;

  final DataCheck dataCheck;

  const DataCheckReportHeader({required this.dataCheck, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    final colorScheme = ColorScheme.of(context);
    final colors = DataCheckColors.of(context);

    final Widget emblem = dataCheck.isComplete
        ? DecoratedBox(
            decoration: ShapeDecoration(
              shape: const CircleBorder(),
              color: colors.completeContainer,
            ),
            child: Center(
              child: Icon(
                Symbols.workspace_premium,
                fill: 1,
                size: _emblemSize / 2,
                color: colors.onCompleteContainer,
              ),
            ),
          )
        : Stack(
            alignment: AlignmentDirectional.center,
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                value: dataCheck.totalCount == 0
                    ? 0
                    : dataCheck.passedCount / dataCheck.totalCount,
                strokeWidth: _ringStrokeWidth,
                color: colors.complete,
                backgroundColor: colorScheme.outlineVariant,
              ),
              Center(
                child: Text(
                  '${dataCheck.passedCount}/${dataCheck.totalCount}',
                  style: textTheme.labelLarge,
                ),
              ),
            ],
          );

    return Row(
      spacing: 16,
      children: [
        SizedBox.square(dimension: _emblemSize, child: emblem),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dataCheck.isComplete
                    ? 'البيانات مكتملة'
                    : 'البيانات غير مكتملة',
                style: textTheme.titleMedium,
              ),
              Text(
                dataCheck.userOverride != null
                    ? 'تم تعديلها يدويًا'
                    : 'حسب التحقق التلقائي',
                style: textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
