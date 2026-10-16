import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class TabbedTotalCountLabel extends StatelessWidget {
  final TabController tabController;
  final Map<ViewableObjectListController<Viewable>, String> unitByController;

  const TabbedTotalCountLabel({
    required this.tabController,
    required this.unitByController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tabs = unitByController.entries.toList();

    return TotalCountLabel(
      countStream: tabController.animation!.asStream().switchMap((index) {
        final MapEntry(key: controller, value: unit) = tabs[index.round()];

        return controller.totalCountStream.map((count) => '$count $unit');
      }),
    );
  }
}
