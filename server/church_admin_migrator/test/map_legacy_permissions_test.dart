import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/migrations/map_legacy_permissions.dart';
import 'package:church_admin_migrator/models/church_data/models/church_data_user.dart';
import 'package:church_admin_migrator/models/meetinghelper/models/data/meeting_helper_user.dart';
import 'package:test/test.dart';

void main() {
  const area = Area(id: 'a1', name: 'Area 1');
  const service = Service(id: 's1', name: 'Service 1');
  final studyYear = StudyYear(order: 3, name: 'Year 3');

  LegacyPermissionFlags emptyFlags({
    bool approved = false,
    bool superAccess = false,
    bool write = false,
    bool manageUsers = false,
    bool manageAllowedUsers = false,
    bool export = false,
    bool recordAttendance = false,
    bool recordServantsAttendance = false,
    Set<String> droppedFlags = const {},
  }) => (
    approved: approved,
    superAccess: superAccess,
    write: write,
    manageUsers: manageUsers,
    manageAllowedUsers: manageAllowedUsers,
    export: export,
    recordAttendance: recordAttendance,
    recordServantsAttendance: recordServantsAttendance,
    droppedFlags: droppedFlags,
  );

  test(
    'mapLegacyPermissions_whenUserHasSuperAccessAndWrite_grantsGlobalWriteAllData',
    () {
      final result = MapLegacyPermissions.mapLegacyPermissions(
        userId: 'u1',
        flags: emptyFlags(approved: true, superAccess: true, write: true),
        scopes: const [],
      );

      expect(result.permissions.contains(UserPermission.writeAllData), isTrue);
      expect(result.permissions.contains(UserPermission.readAllData), isTrue);
    },
  );

  test(
    'mapLegacyPermissions_whenUserLacksSuperAccess_stampsAllowEditOnScopeRowsOnly',
    () {
      final result = MapLegacyPermissions.mapLegacyPermissions(
        userId: 'u1',
        flags: emptyFlags(approved: true, write: true),
        scopes: [MapLegacyPermissions.areaGrant(area)],
      );

      expect(result.permissions.contains(UserPermission.writeAllData), isFalse);
      expect(result.adminOnRows, hasLength(1));
      expect(result.adminOnRows.single.areaAllowEdit, isTrue);
    },
  );

  test(
    'mapLegacyPermissions_whenUserHasManageAllUsers_closesOverRequiredPermissions',
    () {
      final result = MapLegacyPermissions.mapLegacyPermissions(
        userId: 'u1',
        flags: emptyFlags(approved: true, manageUsers: true),
        scopes: const [],
      );

      expect(
        result.permissions.contains(UserPermission.manageAllUsers),
        isTrue,
      );
      expect(result.permissions.contains(UserPermission.writeAllData), isTrue);
      expect(result.permissions.contains(UserPermission.readAllData), isTrue);
      expect(result.permissions.contains(UserPermission.approved), isTrue);
    },
  );

  test(
    'mapLegacyPermissions_whenUserHasManageAllowedUsers_setsAdminOnUsersAndForcesAllowEdit',
    () {
      final result = MapLegacyPermissions.mapLegacyPermissions(
        userId: 'u1',
        flags: emptyFlags(approved: true, manageAllowedUsers: true),
        scopes: [MapLegacyPermissions.areaGrant(area)],
      );

      final row = result.adminOnRows.single;
      expect(row.areaAdminOnUsers, isTrue);
      expect(row.areaAllowEdit, isTrue);
    },
  );

  test(
    'mapLegacyPermissions_whenUserAllowedOnTwoClassesOfSameServiceYearAndGender_emitsOneRow',
    () {
      final result = MapLegacyPermissions.mapLegacyPermissions(
        userId: 'u1',
        flags: emptyFlags(approved: true, write: true),
        scopes: [
          MapLegacyPermissions.serviceGrant(
            service,
            studyYear: studyYear,
            gender: true,
          ),
          MapLegacyPermissions.serviceGrant(
            service,
            studyYear: studyYear,
            gender: true,
          ),
        ],
      );

      expect(result.adminOnRows, hasLength(1));
    },
  );

  test(
    'mapLegacyPermissions_whenUserHasUnmappableFlags_dropsThemFromResult',
    () {
      final result = MapLegacyPermissions.mapLegacyPermissions(
        userId: 'u1',
        flags: emptyFlags(
          approved: true,
          droppedFlags: {'approveLocations', 'birthdayNotify'},
        ),
        scopes: const [],
      );

      expect(result.droppedFlags, {'approveLocations', 'birthdayNotify'});
      expect(result.permissions.length, 1);
      expect(result.permissions.single, UserPermission.approved);
    },
  );

  test('mergeLegacyUsers_whenSameEmailInBothApps_unionsPermissions', () {
    final churchDataUser = ChurchDataUser(
      uid: 'cd1',
      name: 'Church Data Name',
      email: 'servant@example.com',
      approved: true,
      write: true,
    );
    final meetingHelperUser = MeetingHelperUser(
      uid: 'mh1',
      personId: 'p1',
      name: 'Meeting Helper Name',
      email: 'servant@example.com',
      permissions: {'manageUsers'},
    );

    final result = MapLegacyPermissions.mergeLegacyUsers(
      userId: 'u1',
      churchDataUser: churchDataUser,
      meetingHelperUser: meetingHelperUser,
    );

    expect(result.name, 'Meeting Helper Name');
    expect(result.mapped.permissions.contains(UserPermission.approved), isTrue);
    expect(
      result.mapped.permissions.contains(UserPermission.manageAllUsers),
      isTrue,
    );
  });
}
