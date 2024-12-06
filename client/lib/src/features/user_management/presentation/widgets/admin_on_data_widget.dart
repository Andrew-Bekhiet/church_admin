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
          minVerticalPadding: 0,
          title: Text(
            'المناطق المسؤول عنها',
            style: themeData.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final adminOnData in adminOn.where((a) => a.area != null))
                ViewableObjectWidget(
                  adminOnData.area!,
                  wrapInCard: true,
                  forceShowSecondLine: false,
                  trailing: AdminOnDataIndicator(adminOnData: adminOnData),
                ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        ListTile(
          minVerticalPadding: 0,
          title: Text(
            'الخدمات المسؤول عنها',
            style: themeData.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final MapEntry(:key, :value) in adminOn
                  .where((a) => a.service != null)
                  .groupListsBy((a) => a.service!)
                  .entries)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Card(
                    child: AdminOnServiceWidget(serviceData: (key, value)),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        ListTile(
          minVerticalPadding: 0,
          title: Text(
            'المجموعات المسؤول عنها',
            style: themeData.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final adminOnData in adminOn.where((a) => a.group != null))
                ViewableObjectWidget(
                  adminOnData.group!,
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
