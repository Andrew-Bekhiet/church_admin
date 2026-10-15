import 'package:church_admin/church_admin.dart';

abstract final class SearchableDaoListController {
  static ViewableObjectListController<T> Function(Stream<String?>)
  over<T extends ViewableWithID>(StreamableDAO<T> dao) =>
      (search) => ViewableObjectListController<T>(
        objectsPaginatableStream: dao.streamAll(searchQuery: search),
      );
}
