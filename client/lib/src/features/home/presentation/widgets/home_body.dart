import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    required this.homeController,
    super.key,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HomeMode>(
      initialData: homeController.currentMode,
      stream: homeController.modeStream,
      builder: (context, modeSnapshot) {
        final tabController = homeController.tabController;

        return TabBarView(
          controller: tabController,
          children: [
            HomeModeSelector(onModeChanged: homeController.onModeChanged),
            if (modeSnapshot.data == HomeMode.sundaySchool)
              LazyTabPage(
                tabController: tabController,
                index: 1,
                builder: (context) => ServicesHierarchyList(
                  key: const PageStorageKey('_HomeBody => ServicesTab'),
                  type: homeController.servicesListTypeSubject,
                  listController: homeController.servicesController,
                  serviceTrailingBuilder: (
                    context,
                    s, {
                    onLongPress,
                    onTap,
                    subtitle,
                    trailing,
                  }) =>
                      IconButton(
                    onPressed: onTap != null ? () => onTap(s) : null,
                    icon: const Icon(Symbols.info),
                  ),
                ),
              )
            else ...[
              LazyTabPage(
                tabController: tabController,
                index: 1,
                builder: (context) => ViewableObjectList<Area>(
                  key: const PageStorageKey('_HomeBody => AreasTab'),
                  objectsController: homeController.areasController,
                  viewableObjectWidgetConfig: const ViewableObjectWidgetConfig(
                    forceShowSecondLine: false,
                  ),
                ),
              ),
              LazyTabPage(
                tabController: tabController,
                index: 2,
                builder: (context) => ViewableObjectList<Street>(
                  key: const PageStorageKey('_HomeBody => StreetsTab'),
                  objectsController: homeController.streetsController,
                ),
              ),
              LazyTabPage(
                tabController: tabController,
                index: 3,
                builder: (context) => ViewableObjectList<Family>(
                  key: const PageStorageKey('_HomeBody => FamiliesTab'),
                  objectsController: homeController.familiesController,
                ),
              ),
              LazyTabPage(
                tabController: tabController,
                index: 4,
                builder: (context) => ViewableObjectList<Store>(
                  key: const PageStorageKey('_HomeBody => StoresTab'),
                  objectsController: homeController.storesController,
                ),
              ),
            ],
            LazyTabPage(
              tabController: tabController,
              index: modeSnapshot.data == HomeMode.sundaySchool ? 2 : 5,
              builder: (context) => ViewableObjectList<Person>(
                key: const PageStorageKey('_HomeBody => PersonsTab'),
                objectsController: homeController.personsController,
              ),
            ),
          ],
        );
      },
    );
  }
}
