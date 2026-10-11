import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class DataCheckReportHeader extends StatelessWidget {
  static const double _emblemSize = 56;

  final DataCheck dataCheck;

  const DataCheckReportHeader({required this.dataCheck, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return Row(
      spacing: 16,
      children: [
        DataCheckEmblem(dataCheck: dataCheck, size: _emblemSize),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(dataCheck.completenessLabel, style: textTheme.titleMedium),
              Text(
                dataCheck.userOverride != null
                    ? 'تم تعديلها يدويًا'
                    : 'حسب التحقق التلقائي',
                style: textTheme.bodySmall,
              ),
              Text(
                'اجتاز ${dataCheck.passedChecksCount} من ${dataCheck.totalChecksCount} فحوصات',
                style: textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
