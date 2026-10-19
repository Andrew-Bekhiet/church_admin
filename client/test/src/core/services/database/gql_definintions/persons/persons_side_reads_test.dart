import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_feature_flags_repo.dart';
import 'person_fixtures.dart';

void main() {
  final mina = PersonFixtures.mina;
  final beshoy = PersonFixtures.beshoy;
  final abanoub = PersonFixtures.abanoub;
  final warningDate = DateTime(2026, 9, 10);

  setUp(
    () => initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]),
  );
  tearDown(resetGlobalProviderContainer);

  DatabaseService databaseOf(List<ToJson> rows) {
    final backend = FakeAshBackend([PersonFixtures.personsTable(rows: rows)]);
    addTearDown(backend.dispose);

    return backend.db;
  }

  group('the warnings', () {
    test(
      'name the persons whose last confession is on or before the date, '
      'leaving out those never recorded',
      () async {
        final db = databaseOf([
          PersonRow(mina, serverFields: {'lastConfessionDay': '2026-09-10'}),
          PersonRow(beshoy, serverFields: {'lastConfessionDay': '2026-09-11'}),
          PersonRow(abanoub),
        ]);

        final warned = await db.persons.notificationsQueries
            .getPersonsConfessionWarning(date: warningDate);

        expect(warned.map((p) => p.id), [mina.id]);
      },
    );

    test('name the persons last visited on or before the date', () async {
      final db = databaseOf([
        PersonRow(
          mina,
          serverFields: {'lastVisitAt': '2026-09-01T10:00:00.000Z'},
        ),
        PersonRow(
          beshoy,
          serverFields: {'lastVisitAt': '2026-09-20T10:00:00.000Z'},
        ),
      ]);

      final warned = await db.persons.notificationsQueries
          .getPersonsVisitWarning(date: warningDate);

      expect(warned.map((p) => p.id), [mina.id]);
    });

    test('name the persons whose birthday is the day of the date', () async {
      final db = databaseOf([
        PersonRow(mina, serverFields: {'birthday': '09-10'}),
        PersonRow(beshoy, serverFields: {'birthday': '10-09'}),
      ]);

      final birthdays = await db.persons.notificationsQueries
          .getBirthdayPersons(date: warningDate);

      expect(birthdays.map((p) => p.id), [mina.id]);
    });
  });

  test(
    'the history analysis counts the records in range and finds the latest',
    () async {
      final calls = [
        DateTime(2026, 9, 2, 10),
        DateTime(2026, 9, 5, 18),
      ];
      final db = databaseOf([
        PersonRow(
          mina,
          serverFields: {
            'calls': [
              for (final (index, time) in calls.indexed)
                {
                  'id': 'call-$index',
                  'time': tstzToString(time),
                  '__typename': 'Call',
                },
            ],
          },
        ),
      ]);

      final analysed = await db.persons.getPersonAnalysis(
        personId: mina.id,
        options: PersonAnalysisOptions(
          dateRange: DateTimeRange(
            start: DateTime(2026, 9),
            end: DateTime(2026, 9, 30),
          ),
          visitHistoryAnalysis: false,
        ),
      );

      expect(
        (
          analysed?.callHistoryAggregate?.aggregate.count,
          analysed?.callHistoryAggregate?.aggregate.max?.time,
        ),
        (calls.length, calls.last),
      );
    },
  );

  test(
    'memberships are read with the service of each class and group',
    () async {
      final db = databaseOf([PersonRow(mina)]);

      final memberships = await db.persons.personServicesClassesGroups(
        personId: mina.id,
      );

      expect(
        [
          ...?memberships?.services?.map((s) => s.id),
          ...?memberships?.groups?.map((g) => g.id),
        ],
        [
          ...?mina.services?.map((s) => s.id),
          ...?mina.groups?.map((g) => g.id),
        ],
      );
    },
  );

  test('the map shows every placed person, beyond one page', () async {
    const placed = Address(id: 'address-1', geolocation: Point(30.5, 31.25));
    final persons = [
      for (var index = 0; index <= AshPagination.maxPageSize; index++)
        PersonRow(
          Person(id: 'person-$index', name: 'شخص $index', address: placed),
        ),
    ];

    final layers = await databaseOf(
      persons,
    ).persons.personsGeolocations(getPersons: true);

    expect(
      layers?.persons.map((person) => person.id).toSet(),
      {for (final row in persons) row.person.id},
    );
  });
}
