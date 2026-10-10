import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataCheckReportDialog extends StatelessWidget {
  static Future<void> show(
    BuildContext context, {
    required DataCheck dataCheck,
    required bool canOverride,
  }) => showDialog<void>(
    context: context,
    builder: (_) => BlocProvider(
      create: (_) => DataCheckOverrideCubit(dataCheck: dataCheck),
      child: DataCheckReportDialog(canOverride: canOverride),
    ),
  );

  final bool canOverride;

  const DataCheckReportDialog({required this.canOverride, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return BlocBuilder<DataCheckOverrideCubit, DataCheckOverrideState>(
      buildWhen: (previous, current) =>
          previous.dataCheck.isComplete != current.dataCheck.isComplete ||
          previous.dataCheck.userOverride != current.dataCheck.userOverride,
      builder: (context, state) {
        final dataCheck = state.dataCheck;

        return AlertDialog(
          title: const Text('تقرير اكتمال البيانات'),
          scrollable: true,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              DataCheckReportHeader(dataCheck: dataCheck),
              for (final MapEntry(:key, :value)
                  in dataCheck.itemsByGroup.entries)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text(key.label, style: textTheme.titleSmall),
                    for (final item in value) DataCheckItemRow(item: item),
                  ],
                ),
              const Divider(),
              DataCheckOverrideSelector(canOverride: canOverride),
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
                          dataCheck.details.map((i) => i.toJson()).toList(),
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
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('إغلاق'),
            ),
          ],
        );
      },
    );
  }
}
