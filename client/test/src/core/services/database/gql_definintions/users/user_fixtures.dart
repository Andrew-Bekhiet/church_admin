import 'package:church_admin/church_admin.dart';

import '../../../../../fakes/fake_ash_tables_link.dart';

abstract final class UserFixtures {
  static final DateTime editedAt = DateTime(2026, 3, 4, 5, 6, 7);

  static const Area shubra = Area(id: 'area-1', name: 'شبرا');

  static const Group sundaySchool = Group(id: 'group-1', name: 'مدارس الأحد');

  static final StudyYear firstSecondary = StudyYear(
    order: 10,
    name: 'أولى ثانوي',
  );

  static final Service secondary = Service(
    id: 'service-1',
    name: 'ثانوي',
    studyYearFrom: firstSecondary,
    studyYearTo: firstSecondary,
  );

  static const AdminOnData areaGrant = AdminOnData(
    permissionId: 'grant-area',
    area: shubra,
    areaAllowEdit: true,
    areaAllowExport: false,
    areaAdminOnUsers: true,
  );

  static final AdminOnData serviceGrant = AdminOnData(
    permissionId: 'grant-service',
    service: secondary,
    serviceStudyYearData: firstSecondary,
    serviceGender: true,
    serviceAllowEdit: true,
    serviceAdminOnUsers: false,
  );

  static const AdminOnData groupGrant = AdminOnData(
    permissionId: 'grant-group',
    group: sundaySchool,
    groupAllowEdit: false,
    groupAdminOnUsers: false,
  );

  static const User editor = User(uid: 'user-0', name: 'أبانوب');

  static final Invitation invitation = Invitation(
    id: 'invitation-1',
    userUid: 'user-1',
    code: 'ABC123',
    createdAt: DateTime(2026, 5, 6, 7),
    expiresAt: DateTime(2026, 6, 6, 7),
  );

  static final User mina = User(
    uid: 'user-1',
    name: 'مينا جرجس',
    email: 'mina@example.com',
    currentUserCanManageThisUser: true,
    permissions: const PermissionsSet.fromSet({
      UserPermission.approved,
      UserPermission.readAllData,
    }),
    adminOn: [areaGrant, serviceGrant, groupGrant],
    person: Person(id: 'person-1', name: 'مينا جرجس'),
    invitation: invitation,
    lastEdit: LastRecordedByInfo(time: editedAt, user: editor),
    preferences: UserPreferences(
      uid: 'user-1',
      darkTheme: true,
      greatFeastTheme: false,
      orderByPreferences: const {
        'persons': [
          {'name': 'asc'},
        ],
      },
      updatedAt: editedAt,
    ),
    fcmTokens: [FcmToken(uid: 'user-1', token: 'token-1', createdAt: editedAt)],
  );

  static const User marina = User(
    uid: 'user-2',
    name: 'مارينا سمير',
    email: 'marina@example.org',
    currentUserCanManageThisUser: true,
  );

  static const User bishoy = User(
    uid: 'user-3',
    name: 'بيشوي كامل',
  );

  static FakeAshTable usersTable({Iterable<User>? rows}) {
    final users = rows ?? [mina, marina, bishoy];

    final table = FakeAshTable(typename: 'User', listRoot: 'users');
    for (final user in users) {
      table.add(user);
      table.rows.last['currentUserCanManageThisUser'] =
          user.currentUserCanManageThisUser;
    }

    return table;
  }
}
