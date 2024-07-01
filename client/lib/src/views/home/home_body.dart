import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    required this.servicesListTypeStream,
    required this.areasController,
    required this.personsController,
    required this.servicesController,
    super.key,
  });

  final Stream<ViewableObjectListType> servicesListTypeStream;
  final ViewableObjectListController<Person> Function() personsController;
  final ViewableObjectListController<Service> Function() servicesController;
  final ViewableObjectListController<Area> Function() areasController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        LazyTabPage(
          index: 0,
          builder: (context) => ViewableObjectList<Person>(
            key: const PageStorageKey('_HomeBody => PersonsTab'),
            objectsController: personsController(),
          ),
        ),
        LazyTabPage(
          index: 1,
          builder: (context) => ServicesHierarchyList(
            key: const PageStorageKey('_HomeBody => ServicesTab'),
            type: servicesListTypeStream,
            listController: servicesController(),
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
        ),
        LazyTabPage(
          index: 2,
          builder: (context) => ViewableObjectList<Area>(
            key: const PageStorageKey('_HomeBody => AreasTab'),
            objectsController: areasController(),
            viewableObjectWidgetConfig: const ViewableObjectWidgetConfig(
              forceShowSecondLine: false,
            ),
          ),
        ),
      ],
    );
  }
}
