import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeFloatingActionButton extends StatelessWidget {
  final bool isSundaySchool;

  const HomeFloatingActionButton({required this.isSundaySchool, super.key});

  @override
  Widget build(BuildContext context) {
    final TabController _tabController = DefaultTabController.of(context);

    return SwitchingFloatingActionButton(
      tabController: _tabController,
      icons: [
        const Icon(Symbols.add_location),
        if (isSundaySchool)
          const Icon(Symbols.add)
        else ...[
          const Icon(Symbols.add_road),
          const Icon(Symbols.group_add),
          const Icon(Symbols.add_business),
        ],
        const Icon(Symbols.person_add),
      ].asMap(),
      onTap: (i) {
        context.push(
          '/' +
              [
                EditArea.route.path,
                if (isSundaySchool)
                  EditService.route.path
                else ...[
                  EditStreet.route.path,
                  EditFamily.route.path,
                  EditStore.route.path,
                ],
                EditPerson.route.path,
              ][i],
        );
      },
    );
  }
}
