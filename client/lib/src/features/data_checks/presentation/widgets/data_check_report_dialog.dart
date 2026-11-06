import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class DataCheckReportDialog extends StatelessWidget {
  static Future<void> show(
    BuildContext context, {
    required DataCheck dataCheck,
    required bool canChangeDataCheck,
  }) {
    AnalyticsService.I.track(DataCheckReportOpen(dataCheck));

    return showDialog<void>(
      context: context,
      builder: (_) => BlocProvider(
        create: (_) => DataCheckOverrideCubit(dataCheck: dataCheck),
        child: DataCheckReportDialog(canChangeDataCheck: canChangeDataCheck),
      ),
    );
  }

  final bool canChangeDataCheck;

  const DataCheckReportDialog({required this.canChangeDataCheck, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return BlocBuilder<DataCheckOverrideCubit, DataCheckOverrideState>(
      builder: (context, state) {
        final dataCheck = state.dataCheck;

        return PopScope(
          canPop: !state.isSaving,
          child: AlertDialog(
            title: const Text('تقرير اكتمال البيانات'),
            scrollable: true,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                DataCheckReportHeader(dataCheck: dataCheck),
                for (final MapEntry(:key, :value)
                    in dataCheck.groupedChecks.entries)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      Text(key.label, style: textTheme.titleSmall),
                      for (final detail in value)
                        DataCheckDetailRow(detail: detail),
                    ],
                  ),
                if (canChangeDataCheck) ...[
                  const Divider(),
                  const DataCheckOverrideSelector(),
                ],
                if (kDebugMode)
                  ExpansionTile(
                    title: const Text('التفاصيل الكاملة'),
                    children: [
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: SelectableText(
                          const JsonEncoder.withIndent(
                            '  ',
                          ).convert(
                            dataCheck.checksDetails
                                .map((i) => i.toJson())
                                .toList(),
                          ),
                          style: textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: state.isSaving
                    ? null
                    : () => Navigator.of(context).pop(),
                child: const Text('إغلاق'),
              ),
            ],
          ),
        );
      },
    );
  }
}
