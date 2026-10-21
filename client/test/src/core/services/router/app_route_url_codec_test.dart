import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const codec = AppRouteUrlCodec();
  final person = Person(id: 'person-id', name: 'مينا');
  const area = Area(id: 'area-id', name: 'منطقة');
  const meeting = Meeting(
    id: 'meeting-id',
    name: 'اجتماع',
    audience: MeetingAudience.personsAndServants,
    isArchived: false,
  );
  final home = AppRoute.home;

  List<AppRoute> reopen(AppRoute route) => codec.decode(codec.encode([route]));

  group('the address of a screen', () {
    test('is its path when the screen carries no data', () {
      expect(
        codec.encode([const SettingsRoute()]),
        Uri(path: SettingsRoute.routePath),
      );
    });

    test("carries only a record's id on the record's page", () {
      expect(
        codec.encode([ViewPersonRoute(id: person.id, person: person)]),
        Uri(
          path: ViewPersonRoute.routePath,
          queryParameters: {'id': person.id},
        ),
      );
    });

    test('carries only the id of the record being edited', () {
      expect(
        codec.encode([EditPersonRoute(intent: UpdatePerson(person: person))]),
        Uri(
          path: EditPersonRoute.routePath,
          queryParameters: {'id': person.id},
        ),
      );
    });

    test('carries no data for a blank create form', () {
      expect(
        codec.encode([const EditPersonRoute()]),
        Uri(path: EditPersonRoute.routePath),
      );
    });

    test('of the not-found page is the address that was not found', () {
      final address = Uri.parse('${ViewPersonRoute.routePath}?id=%FF');

      expect(codec.encode(codec.decode(address)), address);
    });

    test('is the top screen of the stack', () {
      expect(
        codec.encode([home, const SettingsRoute()]),
        Uri(path: SettingsRoute.routePath),
      );
    });
  });

  group('reopening the address of', () {
    test('a screen that carries no data restores it above home', () {
      expect(reopen(const SettingsRoute()), [home, const SettingsRoute()]);
    });

    test("a record's page restores that page above home", () {
      expect(reopen(ViewPersonRoute(id: person.id, person: person)), [
        home,
        ViewPersonRoute(id: person.id),
      ]);
    });

    test('an edit screen opens the page of the record being edited', () {
      expect(reopen(const EditAreaRoute(area: area)), [
        home,
        ViewAreaRoute(id: area.id),
      ]);
    });

    test('a blank create form reopens a blank form', () {
      expect(reopen(const EditAreaRoute()), [home, const EditAreaRoute()]);
    });

    test("a person's analysis opens that person's page", () {
      expect(reopen(PersonAnalysisRoute(person: person)), [
        home,
        ViewPersonRoute(id: person.id),
      ]);
    });

    test('a screen whose data has no page of its own returns home', () {
      expect(reopen(const RecordAttendanceRoute(meeting: meeting)), [home]);
    });

    test('local authentication keeps the screen it unlocks', () {
      const unlocking = BiometricsAuthRoute(next: ManageUsersRoute());

      expect(reopen(unlocking), [unlocking]);
    });

    test("local authentication keeps the unlocked screen's record", () {
      final unlocking = BiometricsAuthRoute(
        next: ViewPersonRoute(id: person.id),
      );

      expect(reopen(unlocking), [unlocking]);
    });
  });

  group('opening an address', () {
    test('that is unknown shows the not-found page above home', () {
      final address = Uri(path: '/no_such_page');

      expect(codec.decode(address), [home, NotFoundRoute(address)]);
    });

    test("of a record's page without its id shows the not-found page", () {
      final address = Uri(path: ViewPersonRoute.routePath);

      expect(codec.decode(address), [home, NotFoundRoute(address)]);
    });

    test('of local authentication for an unknown screen unlocks nothing', () {
      final address = Uri(
        path: BiometricsAuthRoute.routePath,
        queryParameters: {'next': '/no_such_page'},
      );

      expect(codec.decode(address), [const BiometricsAuthRoute()]);
    });

    test(
      'of local authentication that unlocks another lock screen unlocks nothing',
      () {
        final address = Uri(
          path: BiometricsAuthRoute.routePath,
          queryParameters: {
            'next': codec.encode([
              const BiometricsAuthRoute(next: ManageUsersRoute()),
            ]).toString(),
          },
        );

        expect(codec.decode(address), [const BiometricsAuthRoute()]);
      },
    );

    test('whose query is not valid UTF-8 shows the not-found page', () {
      final address = Uri.parse('${ViewPersonRoute.routePath}?id=%FF');

      expect(codec.decode(address), [home, NotFoundRoute(address)]);
    });
  });
}
