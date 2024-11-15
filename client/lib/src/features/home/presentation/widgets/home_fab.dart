import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeFloatingActionButton extends StatelessWidget {
  final HomeController homeController;

  const HomeFloatingActionButton({
    required this.homeController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HomeMode>(
      initialData: homeController.currentMode,
      stream: homeController.modeStream,
      builder: (context, modeSnapshot) {
        final isSundaySchool = modeSnapshot.data == HomeMode.sundaySchool;

        return SwitchingFloatingActionButton(
          tabController: homeController.tabController!,
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
              [
                const EditAreaRoute().location,
                if (isSundaySchool)
                  const EditServiceRoute().location
                else ...[
                  const EditStreetRoute().location,
                  const EditFamilyRoute().location,
                  const EditStoreRoute().location,
                ],
                const EditPersonRoute().location,
              ][i],
            );
          },
        );
      },
    );
  }
}
