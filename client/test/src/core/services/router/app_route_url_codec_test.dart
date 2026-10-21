import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const codec = AppRouteUrlCodec();
  final person = Person(id: 'person-id', name: 'مينا');
  const area = Area(id: 'area-id', name: 'منطقة');
  const home = HomeScreenRoute();

  String addressOf(AppRoute route) => codec.encode([route]).toString();

  List<AppRoute>? stackFor(String address) => codec.decode(Uri.parse(address));

  group('the address of a screen', () {
    test('is its path when the screen carries no data', () {
      expect(addressOf(const SettingsRoute()), '/settings');
    });

    test("carries only a record's id on the record's page", () {
      expect(
        addressOf(ViewPersonRoute(id: person.id, person: person)),
        '/view_person?id=${person.id}',
      );
    });

    test('carries only the id of the record being edited', () {
      expect(
        addressOf(EditPersonRoute(intent: UpdatePerson(person: person))),
        '/edit_person?id=${person.id}',
      );
    });

    test('carries no data for a blank create form', () {
      expect(addressOf(const EditPersonRoute()), '/edit_person');
    });

    test('carries the screen that local authentication unlocks', () {
      expect(
        addressOf(const BiometricsAuthRoute(next: ManageUsersRoute())),
        '/biometrics_auth?next=%2Fmanage_users',
      );
    });

    test("of local authentication keeps the unlocked screen's record", () {
      const unlocking = BiometricsAuthRoute(
        next: ViewPersonRoute(id: 'person-id'),
      );

      expect(codec.decode(codec.encode([unlocking])), [unlocking]);
    });

    test('of the not-found page is the address that was not found', () {
      final address = Uri.parse('/view_person?id=%FF');

      expect(codec.encode(codec.decode(address)), address);
    });

    test('is the top screen of the stack', () {
      expect(
        codec.encode([home, const SettingsRoute()]).toString(),
        '/settings',
      );
    });
  });

  group('opening an address', () {
    test("opens a record's page above home", () {
      expect(stackFor('/view_person?id=${person.id}'), [
        home,
        ViewPersonRoute(id: person.id),
      ]);
    });

    test('of an edit screen opens the page of the record being edited', () {
      expect(stackFor('/edit_area?id=${area.id}'), [
        home,
        ViewAreaRoute(id: area.id),
      ]);
    });

    test('of a blank create form reopens a blank form', () {
      expect(stackFor('/edit_area'), [home, const EditAreaRoute()]);
    });

    test("of a person's analysis opens that person's page", () {
      expect(stackFor('/person_analysis?id=${person.id}'), [
        home,
        ViewPersonRoute(id: person.id),
      ]);
    });

    test('of a screen whose data has no page of its own returns home', () {
      expect(stackFor('/record_attendance'), [home]);
    });

    test('of local authentication keeps the screen it unlocks', () {
      expect(stackFor('/biometrics_auth?next=%2Fmanage_users'), [
        const BiometricsAuthRoute(next: ManageUsersRoute()),
      ]);
    });

    test('that is unknown shows the not-found page above home', () {
      final address = Uri.parse('/no_such_page');

      expect(codec.decode(address), [home, NotFoundRoute(address)]);
    });

    test("of a record's page without its id shows the not-found page", () {
      final address = Uri.parse('/view_person');

      expect(codec.decode(address), [home, NotFoundRoute(address)]);
    });

    test('whose query is not valid UTF-8 shows the not-found page', () {
      final address = Uri.parse('/view_person?id=%FF');

      expect(codec.decode(address), [home, NotFoundRoute(address)]);
    });
  });

  final screensWithoutData = <AppRoute>[
    home,
    const LoginRoute(),
    const ForgotPasswordRoute(),
    const EmailVerificationRoute(),
    const UnapprovedUserRoute(),
    const UpdateUserSpiritDataRoute(),
    const ForceUpdateRoute(),
    const UnderMaintenanceRoute(),
    const OutdatedFeatureRoute(),
    const DownloadAppRoute(),
    const SettingsRoute(),
    const VisitsMapRoute(),
    const MyAccountRoute(),
    const ManageUsersRoute(),
    const ExportEntitiesSelectionRoute(),
    const AdvancedSearchRoute(),
    const EditPersonRoute(),
    const EditAreaRoute(),
    const EditServiceRoute(),
    const EditClassRoute(),
    const EditGroupRoute(),
    const EditFamilyRoute(),
    const EditStreetRoute(),
    const EditStoreRoute(),
    const EditUserRoute(intent: CreateUser()),
    const ViewUserRoute(uid: 'user-id'),
    const ViewServiceRoute(id: 'service-id'),
    const ViewGroupRoute(id: 'group-id'),
    const ViewClassRoute(id: 'class-id'),
    const ViewFamilyRoute(id: 'family-id'),
    const ViewStreetRoute(id: 'street-id'),
    const ViewStoreRoute(id: 'store-id'),
    const BiometricsAuthRoute(),
  ];

  for (final route in screensWithoutData) {
    test('reopening the address of $route restores the same screen', () {
      expect(codec.decode(codec.encode([route])), route.breadcrumbs);
    });
  }

  const user = User(uid: 'user-id', name: 'خادم');
  const service = Service(id: 'service-id', name: 'خدمة');
  const sampleGroup = Group(
    id: 'group-id',
    name: 'مجموعة',
    service: service,
  );
  final class$ = Class(
    id: 'class-id',
    name: 'فصل',
    service: service,
    studyYear: StudyYear(order: 1, name: 'أولى'),
  );
  const family = Family(id: 'family-id', name: 'أسرة');
  const street = Street(id: 'street-id', name: 'شارع');
  const store = Store(id: 'store-id', name: 'محل');
  const meeting = Meeting(
    id: 'meeting-id',
    name: 'اجتماع',
    audience: MeetingAudience.personsAndServants,
    isArchived: false,
  );

  final screensWithData = <(AppRoute, List<AppRoute>)>[
    (
      PersonAnalysisRoute(person: person),
      [home, ViewPersonRoute(id: person.id)],
    ),
    (
      const UserAnalysisRoute(user: user),
      [home, ViewUserRoute(uid: user.uid)],
    ),
    (
      MeetingsAnalysisRoute(
        title: 'تحليل',
        initialRangePreset: PastMonthDateTimeRangePreset(),
        subject: const GroupAnalysisSubject(sampleGroup),
      ),
      [home],
    ),
    (const RecordAttendanceRoute(meeting: meeting), [home]),
    (
      const EditAreaRoute(area: area),
      [home, ViewAreaRoute(id: area.id)],
    ),
    (
      const EditServiceRoute(service: service),
      [home, ViewServiceRoute(id: service.id)],
    ),
    (
      EditClassRoute(class$: class$),
      [home, ViewClassRoute(id: class$.id)],
    ),
    (
      const EditGroupRoute(group: sampleGroup),
      [home, ViewGroupRoute(id: sampleGroup.id)],
    ),
    (
      const EditFamilyRoute(family: family),
      [home, ViewFamilyRoute(id: family.id)],
    ),
    (
      const EditStreetRoute(street: street),
      [home, ViewStreetRoute(id: street.id)],
    ),
    (
      const EditStoreRoute(store: store),
      [home, ViewStoreRoute(id: store.id)],
    ),
    (
      const EditUserRoute(intent: UpdateUser(user: user)),
      [home, ViewUserRoute(uid: user.uid)],
    ),
  ];

  for (final (route, expectedStack) in screensWithData) {
    test(
      'reopening the address of ${route.path} opens ${expectedStack.last}',
      () {
        expect(codec.decode(codec.encode([route])), expectedStack);
      },
    );
  }
}
