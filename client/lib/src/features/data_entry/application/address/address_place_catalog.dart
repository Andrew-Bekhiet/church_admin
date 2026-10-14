import 'package:church_admin/church_admin.dart';
import 'package:uuid/uuid.dart' show Uuid;

class AddressPlaceCatalog {
  final AreasDAO _areas;
  final StreetsDAO _streets;
  final DistrictsDAO _districts;

  const AddressPlaceCatalog({
    required this._areas,
    required this._streets,
    required this._districts,
  });

  ViewableObjectListController<District> districtsMatching(
    Stream<String?> search,
  ) => _listControllerOf(_districts, search);

  ViewableObjectListController<Street> streetsMatching(
    Stream<String?> search, {
    Area? inArea,
  }) => _listControllerOf(
    _streets,
    search,
    where: [
      if (inArea != null)
        Filter(
          StreetFields().areasRel.redirectTo(AreasStreetsFields().areaId),
          PrimitiveOperator.eq,
          inArea.id,
        ),
    ],
  );

  ViewableObjectListController<Area> areasMatching(
    Stream<String?> search, {
    Street? ofStreet,
  }) => _listControllerOf(
    _areas,
    search,
    where: [
      if (ofStreet != null)
        Filter(
          AreaFields().streets.redirectTo(StreetFields().id),
          PrimitiveOperator.eq,
          ofStreet.id,
        ),
    ],
  );

  Future<District> createDistrictNamed(String name) => _districts.createObject(
    newObject: District(id: const Uuid().v4(), name: name),
  );

  ViewableObjectListController<T> _listControllerOf<T extends ViewableWithID>(
    StreamableDAO<T> dao,
    Stream<String?> search, {
    List<Filter> where = const [],
  }) => ViewableObjectListController<T>(
    objectsPaginatableStream: dao.streamAll(
      searchQuery: search,
      where: Stream.value(where),
    ),
  );
}
