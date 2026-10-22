import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const primarySchool = Service(id: 'primary', name: 'ابتدائي');
  const kindergarten = Service(id: 'kg', name: 'حضانة');
  final firstGrade = StudyYear(order: 1, name: 'الأولى');
  final secondGrade = StudyYear(order: 2, name: 'الثانية');
  const shubra = Area(id: 'shubra', name: 'شبرا');
  const maadi = Area(id: 'maadi', name: 'المعادي');

  User userWith({
    List<AdminOnData>? adminOn,
    Set<UserPermission> permissions = const {},
    Person? person,
  }) => User(
    uid: 'me',
    name: 'خادم',
    adminOn: adminOn,
    permissions: PermissionsSet.fromSet(permissions),
    person: person,
  );

  AdminOnData serviceAdmin(
    Service service, {
    StudyYear? studyYear,
    bool? gender,
  }) => AdminOnData(
    permissionId: 'p-${service.id}',
    service: service,
    serviceStudyYearData: studyYear,
    serviceGender: gender,
  );

  bool hides(User user, ViewableWithID before, ViewableWithID after) =>
      OutOfSightAfterSave(user).isMovedOutOfSight(before, after);

  group('person =>', () {
    test(
      'moving a child from the only service the servant serves to another service hides the child',
      () {
        final child = Person(
          id: 'child',
          name: 'طفل',
          services: const [primarySchool],
        );
        final user = userWith(adminOn: [serviceAdmin(primarySchool)]);

        expect(
          hides(user, child, child.copyWith(services: [kindergarten])),
          isTrue,
        );
      },
    );

    test(
      'a servant of all study years keeps a child whose study year changes',
      () {
        final child = Person(
          id: 'child',
          name: 'طفل',
          services: const [primarySchool],
          studyYear: firstGrade,
        );
        final user = userWith(adminOn: [serviceAdmin(primarySchool)]);

        expect(
          hides(user, child, child.copyWith(studyYear: secondGrade)),
          isFalse,
        );
      },
    );

    test(
      'a servant of one study year loses a child moved to another study year',
      () {
        final child = Person(
          id: 'child',
          name: 'طفل',
          services: const [primarySchool],
          studyYear: firstGrade,
        );
        final user = userWith(
          adminOn: [serviceAdmin(primarySchool, studyYear: firstGrade)],
        );

        expect(
          hides(user, child, child.copyWith(studyYear: secondGrade)),
          isTrue,
        );
      },
    );

    test('a servant of boys loses a child whose gender changes to girl', () {
      final child = Person(
        id: 'child',
        name: 'طفل',
        services: const [primarySchool],
      );
      final user = userWith(
        adminOn: [serviceAdmin(primarySchool, gender: true)],
      );

      expect(hides(user, child, child.copyWith(gender: false)), isTrue);
    });

    test('adding a service keeps a child visible through the old one', () {
      final child = Person(
        id: 'child',
        name: 'طفل',
        services: const [primarySchool],
      );
      final user = userWith(adminOn: [serviceAdmin(primarySchool)]);

      expect(
        hides(
          user,
          child,
          child.copyWith(services: [primarySchool, kindergarten]),
        ),
        isFalse,
      );
    });

    test(
      'a child moved to a service another grant of the servant covers stays visible',
      () {
        final child = Person(
          id: 'child',
          name: 'طفل',
          services: const [primarySchool],
        );
        final user = userWith(
          adminOn: [serviceAdmin(primarySchool), serviceAdmin(kindergarten)],
        );

        expect(
          hides(user, child, child.copyWith(services: [kindergarten])),
          isFalse,
        );
      },
    );

    test('a group admin loses a person removed from the group', () {
      const choir = Group(id: 'choir', name: 'كورال');
      final member = Person(id: 'member', name: 'عضو', groups: const [choir]);
      final user = userWith(
        adminOn: [const AdminOnData(permissionId: 'g', group: choir)],
      );

      expect(hides(user, member, member.copyWith(groups: [])), isTrue);
    });

    test('an area admin loses a person moved to another area', () {
      final person = Person(
        id: 'person',
        name: 'فرد',
        address: const Address(area: shubra),
      );
      final user = userWith(
        adminOn: [const AdminOnData(permissionId: 'a', area: shubra)],
      );

      expect(
        hides(
          user,
          person,
          person.copyWith(address: const Address(area: maadi)),
        ),
        isTrue,
      );
    });

    test('a user with write-all-data never loses anything', () {
      final child = Person(
        id: 'child',
        name: 'طفل',
        services: const [primarySchool],
      );
      final user = userWith(
        adminOn: [serviceAdmin(primarySchool)],
        permissions: {UserPermission.writeAllData},
      );

      expect(
        hides(user, child, child.copyWith(services: [kindergarten])),
        isFalse,
      );
    });

    test('a user keeps their own person whatever changes', () {
      final me = Person(
        id: 'me-person',
        name: 'أنا',
        uid: 'me',
        services: const [primarySchool],
      );
      final user = userWith(adminOn: [serviceAdmin(primarySchool)]);

      expect(hides(user, me, me.copyWith(services: [kindergarten])), isFalse);
    });

    test(
      'changing a person the user sees through no modelled rule warns about nothing',
      () {
        final child = Person(
          id: 'child',
          name: 'طفل',
          services: const [primarySchool],
        );
        final user = userWith(adminOn: [serviceAdmin(kindergarten)]);

        expect(hides(user, child, child.copyWith(services: [])), isFalse);
      },
    );
  });

  group('family =>', () {
    test('an area admin moving a family to another area loses it', () {
      const family = Family(
        id: 'family',
        name: 'عائلة',
        address: Address(area: shubra),
      );
      final user = userWith(
        adminOn: [const AdminOnData(permissionId: 'a', area: shubra)],
      );

      expect(
        hides(
          user,
          family,
          family.copyWith(address: const Address(area: maadi)),
        ),
        isTrue,
      );
    });

    test('an area admin keeps a family renamed within the area', () {
      const family = Family(
        id: 'family',
        name: 'عائلة',
        address: Address(area: shubra),
      );
      final user = userWith(
        adminOn: [const AdminOnData(permissionId: 'a', area: shubra)],
      );

      expect(hides(user, family, family.copyWith(name: 'اسم جديد')), isFalse);
    });

    test('a user keeps their own family when its area changes', () {
      const family = Family(
        id: 'family',
        name: 'عائلة',
        address: Address(area: shubra),
      );
      final user = userWith(
        adminOn: [const AdminOnData(permissionId: 'a', area: shubra)],
        person: Person(id: 'me-person', name: 'أنا', family: family),
      );

      expect(
        hides(
          user,
          family,
          family.copyWith(address: const Address(area: maadi)),
        ),
        isFalse,
      );
    });

    test('a user with write-all-data never loses a family', () {
      const family = Family(
        id: 'family',
        name: 'عائلة',
        address: Address(area: shubra),
      );
      final user = userWith(
        adminOn: [const AdminOnData(permissionId: 'a', area: shubra)],
        permissions: {UserPermission.writeAllData},
      );

      expect(
        hides(
          user,
          family,
          family.copyWith(address: const Address(area: maadi)),
        ),
        isFalse,
      );
    });
  });

  group('store =>', () {
    const store = Store(
      id: 'store',
      name: 'متجر',
      address: Address(area: shubra),
    );

    test('an area admin moving a store to another area loses it', () {
      final user = userWith(
        adminOn: [const AdminOnData(permissionId: 'a', area: shubra)],
      );

      expect(
        hides(user, store, store.copyWith(address: const Address(area: maadi))),
        isTrue,
      );
    });

    test('an area admin keeps a store renamed within the area', () {
      final user = userWith(
        adminOn: [const AdminOnData(permissionId: 'a', area: shubra)],
      );

      expect(hides(user, store, store.copyWith(name: 'اسم جديد')), isFalse);
    });

    test('an area admin of both areas keeps a store moved between them', () {
      final user = userWith(
        adminOn: [
          const AdminOnData(permissionId: 'a', area: shubra),
          const AdminOnData(permissionId: 'b', area: maadi),
        ],
      );

      expect(
        hides(user, store, store.copyWith(address: const Address(area: maadi))),
        isFalse,
      );
    });

    test('a user with read-all-data never loses a store', () {
      final user = userWith(permissions: {UserPermission.readAllData});

      expect(
        hides(user, store, store.copyWith(address: const Address(area: maadi))),
        isFalse,
      );
    });
  });

  group('person changes other than the address =>', () {
    bool hidesIgnoringAddress(User user, Person before, Person after) =>
        OutOfSightAfterSave(user).isMovedOutOfSightIgnoringAddress(
          before,
          after,
        );

    const shubraFamily = Family(
      id: 'shubra-family',
      name: 'عائلة شبرا',
      address: Address(area: shubra),
    );
    const maadiFamily = Family(
      id: 'maadi-family',
      name: 'عائلة المعادي',
      address: Address(area: maadi),
    );
    final child = Person(
      id: 'child',
      name: 'طفل',
      services: const [primarySchool],
      family: shubraFamily,
      address: shubraFamily.address,
    );

    test(
      'changing only the address of a person keeps it out of the verdict',
      () {
        final user = userWith(
          adminOn: [const AdminOnData(permissionId: 'a', area: shubra)],
        );

        expect(
          hidesIgnoringAddress(
            user,
            child,
            child.copyWith(address: const Address(area: maadi)),
          ),
          isFalse,
        );
      },
    );

    test(
      'moving a child to another service counts even while the address changes too',
      () {
        final user = userWith(adminOn: [serviceAdmin(primarySchool)]);

        expect(
          hidesIgnoringAddress(
            user,
            child,
            child.copyWith(
              services: const [kindergarten],
              address: const Address(area: maadi),
            ),
          ),
          isTrue,
        );
      },
    );

    test(
      'a move that another grant of the servant covers does not count while the address changes',
      () {
        final user = userWith(
          adminOn: [serviceAdmin(primarySchool), serviceAdmin(kindergarten)],
        );

        expect(
          hidesIgnoringAddress(
            user,
            child,
            child.copyWith(
              services: const [kindergarten],
              address: const Address(area: maadi),
            ),
          ),
          isFalse,
        );
      },
    );

    test('choosing a family in another area counts as a move out of sight', () {
      final user = userWith(
        adminOn: [const AdminOnData(permissionId: 'a', area: shubra)],
      );

      expect(
        hidesIgnoringAddress(
          user,
          child,
          child.copyWith(family: maadiFamily, address: maadiFamily.address),
        ),
        isTrue,
      );
    });
  });
}
