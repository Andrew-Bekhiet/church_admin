import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/migrations/migrate_auth_users.dart';
import 'package:church_admin_migrator/models/church_admin_context.dart';
import 'package:church_admin_migrator/models/church_data/models/church_data_user.dart';
import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:church_admin_migrator/models/meetinghelper/models/data/meeting_helper_user.dart';
import 'package:test/test.dart';

void main() {
  late ChurchAdminContext churchAdminContext;

  setUp(() {
    churchAdminContext = ChurchAdminContext();
  });

  void merge({
    List<ChurchDataUser> churchDataUsers = const [],
    List<MeetingHelperUser> meetingHelperUsers = const [],
  }) {
    MigrateAuthUsers.merge(
      churchDataUsers: churchDataUsers,
      churchDataAreaAllowedUsers: const [],
      meetingHelperUsers: meetingHelperUsers,
      meetingHelperClassAllowedUsers: const [],
      churchAdminContext: churchAdminContext,
    );
  }

  test(
    'merge_whenChurchDataUserHasAResolvablePersonRef_linksTheExistingPerson',
    () {
      final existingPerson = Person(id: 'p1', name: 'Existing Person');
      churchAdminContext.persons[IdReference.fromPath('Persons/p1')] =
          existingPerson;

      merge(
        churchDataUsers: [
          ChurchDataUser(
            uid: 'cd1',
            name: 'Servant One',
            approved: true,
            personRef: 'Persons/p1',
          ),
        ],
      );

      final user = churchAdminContext.users.values.single;
      expect(user.person?.id, 'p1');
      expect(
        churchAdminContext.persons[IdReference.fromPath('Persons/p1')]?.uid,
        'cd1',
      );
    },
  );

  test('merge_whenNoPersonResolves_createsAServantPerson', () {
    merge(
      churchDataUsers: [
        ChurchDataUser(uid: 'cd1', name: 'Servant One', approved: true),
      ],
    );

    final user = churchAdminContext.users.values.single;
    expect(user.person, isNotNull);
    expect(user.person!.isServant, isTrue);
    expect(user.person!.uid, 'cd1');
  });

  test(
    'merge_whenSameEmailInBothApps_mergesIntoOneUserKeyedByMeetingHelperPersonId',
    () {
      merge(
        churchDataUsers: [
          ChurchDataUser(
            uid: 'cd1',
            name: 'Church Data Name',
            email: 'Servant@Example.com',
            approved: true,
            write: true,
          ),
        ],
        meetingHelperUsers: [
          MeetingHelperUser(
            uid: 'mh1',
            personId: 'p1',
            name: 'Meeting Helper Name',
            email: 'servant@example.com',
            permissions: {'manageDeleted'},
          ),
        ],
      );

      expect(churchAdminContext.users, hasLength(1));
      final entry = churchAdminContext.users.entries.single;
      expect(entry.key, IdReference.fromPath('Users/p1'));
      expect(entry.value.name, 'Meeting Helper Name');
      expect(entry.value.email, 'servant@example.com');
      expect(
        entry.value.permissions.contains(UserPermission.recoverDeleted),
        isTrue,
      );
    },
  );

  test('merge_whenTwoUsersShareAName_disambiguatesTheSecond', () {
    merge(
      churchDataUsers: [
        ChurchDataUser(uid: 'cd1', name: 'Same Name', approved: true),
        ChurchDataUser(uid: 'cd2', name: 'Same Name', approved: true),
      ],
    );

    final names = churchAdminContext.users.values.map((u) => u.name).toSet();
    expect(names, {'Same Name', 'Same Name (2)'});
  });

  test(
    'merge_whenTwoUsersResolveToTheSamePerson_secondUserGetsAFreshPerson',
    () {
      final sharedPerson = Person(id: 'shared', name: 'Shared Person');
      churchAdminContext.persons[IdReference.fromPath('Persons/shared')] =
          sharedPerson;

      merge(
        churchDataUsers: [
          ChurchDataUser(
            uid: 'cd1',
            name: 'First Claimant',
            approved: true,
            personRef: 'Persons/shared',
          ),
          ChurchDataUser(
            uid: 'cd2',
            name: 'Second Claimant',
            approved: true,
            personRef: 'Persons/shared',
          ),
        ],
      );

      final usersByUid = {
        for (final user in churchAdminContext.users.values) user.uid: user,
      };

      expect(usersByUid['cd1']!.person?.id, 'shared');
      expect(usersByUid['cd2']!.person?.id, isNot('shared'));
      expect(usersByUid['cd2']!.person?.isServant, isTrue);
    },
  );
}
