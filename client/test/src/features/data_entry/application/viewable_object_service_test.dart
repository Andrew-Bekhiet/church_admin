import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaisel/kaisel.dart';

void main() {
  const service = Service(id: 'service-id', name: 'خدمة');
  const user = User(uid: 'user-id', name: 'خادم');
  final person = Person(id: 'person-id', name: 'مينا');
  const group = Group(id: 'group-id', name: 'مجموعة', service: service);
  final class$ = Class(
    id: 'class-id',
    name: 'فصل',
    service: service,
    studyYear: StudyYear(order: 1, name: 'أولى'),
  );
  const area = Area(id: 'area-id', name: 'منطقة');
  const street = Street(id: 'street-id', name: 'شارع');
  const family = Family(id: 'family-id', name: 'أسرة');
  const store = Store(id: 'store-id', name: 'محل');

  late KaiselRouter<AppRoute> router;
  late ViewableObjectService viewableObjects;

  setUp(() {
    router = KaiselRouter<AppRoute>(initial: const HomeScreenRoute());
    viewableObjects = ViewableObjectService(router: router);
  });

  tearDown(() => router.dispose());

  final cases = <(String, Viewable, AppRoute)>[
    ('a person', person, ViewPersonRoute(id: person.id, person: person)),
    (
      'a service',
      service,
      ViewServiceRoute(id: service.id, service: service),
    ),
    ('a group', group, ViewGroupRoute(id: group.id, group: group)),
    ('a class', class$, ViewClassRoute(id: class$.id, $class: class$)),
    ('an area', area, ViewAreaRoute(id: area.id, area: area)),
    ('a street', street, ViewStreetRoute(id: street.id, street: street)),
    ('a family', family, ViewFamilyRoute(id: family.id, family: family)),
    ('a store', store, ViewStoreRoute(id: store.id, store: store)),
    ('a user', user, ViewUserRoute(uid: user.uid, user: user)),
    (
      'a recorded-by entry',
      LastRecordedByInfo(recordedBy: user.uid, user: user),
      ViewUserRoute(uid: user.uid, user: user),
    ),
  ];

  for (final (description, object, expectedRoute) in cases) {
    test('tapping $description opens its page above the current one', () async {
      viewableObjects.onTap(object);
      await pumpEventQueue();

      expect(router.stack, [const HomeScreenRoute(), expectedRoute]);
    });
  }
}
