import 'package:church_admin/church_admin.dart';

class HomeListControllers {
  final DatabaseService _databaseService;
  final Stream<HomeContainerVisibility> _visibility;
  final Map<Type, ViewableObjectListController> _controllersByEntity = {};

  HomeListControllers({
    required this._databaseService,
    required this._visibility,
  });

  ViewableObjectListController? forTab(HomeTab tab) => switch (tab) {
    HomeTab.summary => null,
    HomeTab.services => _controllerOf<Service>(
      () => _databaseService.services.streamAll(
        where: _visibility.map((visibility) => visibility.serviceFilters),
      ),
    ),
    HomeTab.areas => _controllerOf<Area>(
      () => _databaseService.areas.streamAll(
        where: _visibility.map((visibility) => visibility.areaFilters),
      ),
    ),
    HomeTab.streets => _controllerOf<Street>(
      () => _databaseService.streets.streamAll(
        where: _visibility.map((visibility) => visibility.streetFilters),
      ),
    ),
    HomeTab.families => _controllerOf<Family>(
      () => _databaseService.families.streamAll(),
    ),
    HomeTab.stores => _controllerOf<Store>(
      () => _databaseService.stores.streamAll(),
    ),
    HomeTab.sundaySchoolPersons ||
    HomeTab.churchDataPersons => _controllerOf<Person>(
      () => _databaseService.persons.streamAll(),
    ),
  };

  ViewableObjectListController<T> _controllerOf<T extends Viewable>(
    PaginatableStreamBase<T> Function() createStream,
  ) {
    final controller = _controllersByEntity.putIfAbsent(
      T,
      () => ViewableObjectListController<T>(
        objectsPaginatableStream: createStream(),
      ),
    );

    return controller as ViewableObjectListController<T>;
  }

  Future<void> dispose() async {
    final controllers = _controllersByEntity.values.toList();
    _controllersByEntity.clear();

    await Future.wait(controllers.map((controller) => controller.dispose()));
  }
}
