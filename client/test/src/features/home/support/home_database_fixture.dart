import 'package:church_admin/church_admin.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

import '../../../fakes/mock_database_service.dart';

class _MockServicesDAO extends Mock implements ServicesDAO {}

class _MockPersonsDAO extends Mock implements PersonsDAO {}

class _MockAreasDAO extends Mock implements AreasDAO {}

class _MockStreetsDAO extends Mock implements StreetsDAO {}

class _MockFamiliesDAO extends Mock implements FamiliesDAO {}

class _MockStoresDAO extends Mock implements StoresDAO {}

class HomeDatabaseFixture {
  final MockDatabaseService service = MockDatabaseService();
  final Map<Type, List<Filter>> latestFiltersByEntity = {};
  final Set<Type> disposedEntities = {};

  HomeDatabaseFixture({Map<Type, int> totals = const {}}) {
    final services = _MockServicesDAO();
    final persons = _MockPersonsDAO();
    final areas = _MockAreasDAO();
    final streets = _MockStreetsDAO();
    final families = _MockFamiliesDAO();
    final stores = _MockStoresDAO();

    _stubStreamAll<Service>(services, totals[Service]);
    _stubStreamAll<Person>(persons, totals[Person]);
    _stubStreamAll<Area>(areas, totals[Area]);
    _stubStreamAll<Street>(streets, totals[Street]);
    _stubStreamAll<Family>(families, totals[Family]);
    _stubStreamAll<Store>(stores, totals[Store]);

    when(() => service.services).thenReturn(services);
    when(() => service.persons).thenReturn(persons);
    when(() => service.areas).thenReturn(areas);
    when(() => service.streets).thenReturn(streets);
    when(() => service.families).thenReturn(families);
    when(() => service.stores).thenReturn(stores);
  }

  void _stubStreamAll<T extends ViewableWithID>(
    StreamableDAO<T> dao,
    int? total,
  ) {
    when(
      () => dao.streamAll(
        where: any(named: 'where'),
        orderBy: any(named: 'orderBy'),
      ),
    ).thenAnswer((invocation) {
      final where = invocation.namedArguments[#where] as Stream<List<Filter>>?;
      where?.listen((filters) => latestFiltersByEntity[T] = filters);

      return PaginatableStream<T, Object?>.simple(
        factory: (_) => Rx.concat([
          Stream.value(
            PaginatableStreamResponse<T>(data: const [], totalCount: total),
          ),
          NeverStream<PaginatableStreamResponse<T>>(),
        ]).doOnCancel(() => disposedEntities.add(T)),
      );
    });
  }
}
