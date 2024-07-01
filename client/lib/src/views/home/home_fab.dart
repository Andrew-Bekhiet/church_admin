import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    final TabController _tabController = DefaultTabController.of(context);

    return SwitchingFloatingActionButton(
      tabController: _tabController,
      icons: const {
        0: Icon(Symbols.person_add),
        1: Icon(Symbols.add),
        2: Icon(Symbols.add_location),
      },
      onTap: (i) {
        if (i == 0) {
          context.push('/editPerson');
        } else if (i == 1) {
          context.push('/editService');
        } else if (i == 2) {
          context.push('/editArea');
        }
      },
    );
  }
}
