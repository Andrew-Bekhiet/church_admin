import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class AdminOnDataWidget extends StatelessWidget {
  const AdminOnDataWidget({required this.adminOn, super.key});

  final List<AdminOnData> adminOn;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(
            'أمين على مناطق',
            style: themeData.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final adminOnData in adminOn.where((a) => a.area != null))
                Card.outlined(
                  color: themeData.colorScheme.surfaceContainerLow,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: themeData.colorScheme.outline),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ViewableObjectWidget(
                    adminOnData.area!,
                    wrapInCard: false,
                    forceShowSecondLine: false,
                    trailing: AdminOnDataIndicator(adminOnData: adminOnData),
                  ),
                ),
            ],
          ),
        ),
        ListTile(
          title: Text(
            'أمين على خدمات',
            style: themeData.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Card.outlined(
            color: themeData.colorScheme.surfaceContainerLow,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: themeData.colorScheme.outline),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final MapEntry(:key, :value)
                    in adminOn
                        .where((a) => a.service != null)
                        .groupListsBy((a) => a.service!)
                        .entries)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: AdminOnServiceWidget(serviceData: (key, value)),
                  ),
              ],
            ),
          ),
        ),
        ListTile(
          title: Text(
            'أمين على مجموعات',
            style: themeData.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final adminOnData in adminOn.where((a) => a.group != null))
                Card.outlined(
                  color: themeData.colorScheme.surfaceContainerLow,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: themeData.colorScheme.outline),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ViewableObjectWidget(
                    adminOnData.group!,
                    wrapInCard: false,
                    forceShowSecondLine: false,
                    trailing: AdminOnDataIndicator(adminOnData: adminOnData),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
