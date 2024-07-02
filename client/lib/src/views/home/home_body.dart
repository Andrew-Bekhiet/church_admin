import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    required this.servicesListTypeStream,
    required this.isSundaySchool,
    required this.areasController,
    required this.streetsController,
    required this.familiesController,
    required this.storesController,
    required this.servicesController,
    required this.personsController,
    super.key,
  });

  final bool isSundaySchool;

  final Stream<ViewableObjectListType> servicesListTypeStream;

  final ViewableObjectListController<Area> Function() areasController;
  final ViewableObjectListController<Street> Function() streetsController;
  final ViewableObjectListController<Family> Function() familiesController;
  final ViewableObjectListController<Store> Function() storesController;
  final ViewableObjectListController<Service> Function() servicesController;
  final ViewableObjectListController<Person> Function() personsController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        LazyTabPage(
          index: 0,
          builder: (context) => ViewableObjectList<Area>(
            key: const PageStorageKey('_HomeBody => AreasTab'),
            objectsController: areasController(),
            viewableObjectWidgetConfig: const ViewableObjectWidgetConfig(
              forceShowSecondLine: false,
            ),
          ),
        ),
        if (isSundaySchool)
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
          )
        else ...[
          LazyTabPage(
            index: 1,
            builder: (context) => ViewableObjectList<Street>(
              key: const PageStorageKey('_HomeBody => StreetsTab'),
              objectsController: streetsController(),
            ),
          ),
          LazyTabPage(
            index: 2,
            builder: (context) => ViewableObjectList<Family>(
              key: const PageStorageKey('_HomeBody => FamiliesTab'),
              objectsController: familiesController(),
            ),
          ),
          LazyTabPage(
            index: 3,
            builder: (context) => ViewableObjectList<Store>(
              key: const PageStorageKey('_HomeBody => StoresTab'),
              objectsController: storesController(),
            ),
          ),
        ],
        LazyTabPage(
          index: isSundaySchool ? 2 : 4,
          builder: (context) => ViewableObjectList<Person>(
            key: const PageStorageKey('_HomeBody => PersonsTab'),
            objectsController: personsController(),
          ),
        ),
      ],
    );
  }
}
