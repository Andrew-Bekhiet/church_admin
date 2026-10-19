import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import '../../../../../fakes/fake_feature_flags_repo.dart';

void main() {
  final matchingPerson = Person(id: 'person-1', name: 'Mariam Adel');
  final otherPerson = Person(id: 'person-2', name: 'Youssef Hany');
  const matchingArea = Area(id: 'area-1', name: 'Marg');
  const otherArea = Area(id: 'area-2', name: 'Shoubra');
  const matchingClass = Class(id: 'class-1', name: 'Primary Mar Girgis');
  const otherClass = Class(id: 'class-2', name: 'Secondary');
  const matchingGroup = Group(id: 'group-1', name: 'Marwa choir');
  const otherGroup = Group(id: 'group-2', name: 'Readers');
  const matchingFamily = Family(id: 'family-1', name: 'Family of Marcos');
  const otherFamily = Family(id: 'family-2', name: 'Family of Peter');
  const matchingService = Service(id: 'service-1', name: 'Mar Mina service');
  const otherService = Service(id: 'service-2', name: 'Sunday school');
  const matchingStreet = Street(id: 'street-1', name: 'Omar street');
  const otherStreet = Street(id: 'street-2', name: 'Nile street');
  const matchingStore = Store(id: 'store-1', name: 'Marina market');
  const otherStore = Store(id: 'store-2', name: 'Bakery');

  FakeAshTable tableOf(String typename, String listRoot, List<ToJson> rows) =>
      FakeAshTable(
        typename: typename,
        listRoot: listRoot,
        rows: rows,
        projectsSelections: true,
      );

  List<FakeAshTable> tablesWith({List<Person>? persons}) => [
    tableOf('Person', 'persons', persons ?? [matchingPerson, otherPerson]),
    tableOf('Area', 'areas', [matchingArea, otherArea]),
    tableOf('Class', 'classes', [matchingClass, otherClass]),
    tableOf('Group', 'groups', [matchingGroup, otherGroup]),
    tableOf('Family', 'families', [matchingFamily, otherFamily]),
    tableOf('Service', 'services', [matchingService, otherService]),
    tableOf('Street', 'streets', [matchingStreet, otherStreet]),
    tableOf('Store', 'stores', [matchingStore, otherStore]),
  ];

  late FakeAshBackend backend;

  setUp(() {
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]);
  });

  tearDown(() {
    backend.dispose();
    resetGlobalProviderContainer();
  });

  test(
    'every kind of record whose name contains the text, in any case, is found',
    () async {
      backend = FakeAshBackend(tablesWith());

      final results = await HomeDAO(db: backend.db).searchAll('mar');

      expect(results.persons.map((person) => person.id), [matchingPerson.id]);
      expect(results.areas.map((area) => area.id), [matchingArea.id]);
      expect(results.classes.map((class$) => class$.id), [matchingClass.id]);
      expect(results.groups.map((group) => group.id), [matchingGroup.id]);
      expect(results.families.map((family) => family.id), [matchingFamily.id]);
      expect(
        results.services.map((service) => service.id),
        [matchingService.id],
      );
      expect(results.streets.map((street) => street.id), [matchingStreet.id]);
      expect(results.stores.map((store) => store.id), [matchingStore.id]);
    },
  );

  test('a found record carries the name it is shown with', () async {
    backend = FakeAshBackend(tablesWith());

    final results = await HomeDAO(db: backend.db).searchAll('mar');

    expect(results.persons.single.name, matchingPerson.name);
    expect(results.stores.single.name, matchingStore.name);
  });

  test('at most five records of each kind are found', () async {
    final namesakes = [
      for (var i = 1; i <= 6; i++) Person(id: 'person-$i', name: 'Mariam $i'),
    ];
    backend = FakeAshBackend(tablesWith(persons: namesakes));

    final results = await HomeDAO(db: backend.db).searchAll('mariam');

    expect(
      results.persons.map((person) => person.id),
      namesakes.take(5).map((person) => person.id),
    );
  });

  test('a text matching nothing finds no section', () async {
    backend = FakeAshBackend(tablesWith());

    final results = await HomeDAO(db: backend.db).searchAll('zzz');

    expect(results.sections, isEmpty);
  });
}
