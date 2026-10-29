import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class ExportLoadedBody extends StatelessWidget {
  final ViewableObjectListController<Area> areasController;
  final ViewableObjectListController<Service> servicesController;
  final ViewableObjectListController<Class> classesController;
  final ViewableObjectListController<Group> groupsController;
  final ListSelectionCubit areasSelection;
  final ListSelectionCubit servicesSelection;
  final ListSelectionCubit classesSelection;
  final ListSelectionCubit groupsSelection;

  const ExportLoadedBody({
    required this.areasController,
    required this.servicesController,
    required this.classesController,
    required this.groupsController,
    required this.areasSelection,
    required this.servicesSelection,
    required this.classesSelection,
    required this.groupsSelection,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        ViewableObjectList<Area>(
          objectsController: areasController,
          selection: areasSelection,
        ),
        ViewableObjectList<Service>(
          objectsController: servicesController,
          selection: servicesSelection,
        ),
        ViewableObjectList<Class>(
          objectsController: classesController,
          selection: classesSelection,
        ),
        ViewableObjectList<Group>(
          objectsController: groupsController,
          selection: groupsSelection,
        ),
      ],
    );
  }
}
