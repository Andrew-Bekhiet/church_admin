import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class AdminOnDataWidget extends StatelessWidget {
  final List<AdminOnData> adminOn;
  const AdminOnDataWidget({required this.adminOn, super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final textStyle = themeData.textTheme.titleSmall;

    final areas = adminOn.where((a) => a.area != null);
    final groupedServices = adminOn
        .where((a) => a.service != null)
        .groupListsBy((a) => a.service!)
        .entries;
    final groups = adminOn.where((a) => a.group != null);

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
          subtitle: areas.isEmpty
              ? Text(
                  'لا يوجد مناطق محددة',
                  style: textStyle,
                )
              : null,
        ),
        if (areas.isNotEmpty)
          Card.outlined(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            color: themeData.colorScheme.surfaceContainerLow,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: themeData.colorScheme.outline),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final adminOnData in areas)
                  ViewableObjectWidget(
                    adminOnData.area!,
                    wrapInCard: false,
                    forceShowSecondLine: false,
                    trailing: AdminOnDataIndicator(
                      adminOnData: adminOnData,
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
          subtitle: groupedServices.isEmpty
              ? Text(
                  'لا يوجد خدمات محددة',
                  style: textStyle,
                )
              : null,
        ),
        if (groupedServices.isNotEmpty)
          Card.outlined(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            color: themeData.colorScheme.surfaceContainerLow,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: themeData.colorScheme.outline),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final MapEntry(:key, :value) in groupedServices)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: AdminOnServiceWidget(serviceData: (key, value)),
                  ),
              ],
            ),
          ),
        ListTile(
          title: Text(
            'أمين على مجموعات',
            style: themeData.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: groups.isEmpty
              ? Text(
                  'لا يوجد مجموعات محددة',
                  style: textStyle,
                )
              : null,
        ),
        if (groups.isNotEmpty)
          Card.outlined(
            color: themeData.colorScheme.surfaceContainerLow,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: themeData.colorScheme.outline),
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final adminOnData in groups)
                  ViewableObjectWidget(
                    adminOnData.group!,
                    wrapInCard: false,
                    forceShowSecondLine: false,
                    trailing: AdminOnDataIndicator(adminOnData: adminOnData),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}
