import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ExportLoadedBody extends StatelessWidget {
  final ViewableObjectListController<Area> areasController;
  final ViewableObjectListController<Service> servicesController;
  final ViewableObjectListController<Class> classesController;
  final ViewableObjectListController<Group> groupsController;

  const ExportLoadedBody({
    required this.areasController,
    required this.servicesController,
    required this.classesController,
    required this.groupsController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        ViewableObjectList<Area>(
          objectsController: areasController,
        ),
        ViewableObjectList<Service>(
          objectsController: servicesController,
        ),
        ViewableObjectList<Class>(
          objectsController: classesController,
        ),
        ViewableObjectList<Group>(
          objectsController: groupsController,
        ),
      ],
    );
  }
}
