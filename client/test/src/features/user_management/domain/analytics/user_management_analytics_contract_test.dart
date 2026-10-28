import 'package:church_admin/church_admin.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('user management analytics contract', () {
    const area = Area(id: 'a1', name: 'منطقة');
    const service = Service(id: 's1', name: 'خدمة');
    const group = Group(id: 'g1', name: 'مجموعة');
    final linkedPerson = Person(id: 'p1', name: 'مينا');
    final otherPerson = Person(id: 'p2', name: 'مريم', gender: false);
    final draft = UserDraft(
      name: 'مينا',
      email: 'mina@example.com',
      person: const CreateNewPerson(name: 'مينا', gender: true),
      permissions: const PermissionsSet.fromSet({
        UserPermission.approved,
        UserPermission.readAllData,
      }),
      adminOn: const [
        AdminOnData(permissionId: '', area: area),
        AdminOnData(permissionId: '', service: service),
        AdminOnData(
          permissionId: '',
          service: Service(id: 's2', name: 'ب'),
        ),
      ],
      invitation: InvitationRequest(DateTime(2026, 10, 30)),
    );
    final savedUser = User(
      uid: 'u1',
      name: 'مينا',
      person: linkedPerson,
      permissions: const PermissionsSet.fromSet({
        UserPermission.approved,
        UserPermission.deleteData,
      }),
      adminOn: const [
        AdminOnData(permissionId: 'area-scope', area: area),
        AdminOnData(permissionId: 'service-scope', service: service),
      ],
    );
    final savedDraft = UserDraft.fromUser(savedUser).copyWith(
      person: LinkExistingPerson(otherPerson),
      permissions: const PermissionsSet.fromSet({
        UserPermission.approved,
        UserPermission.readAllData,
      }),
      adminOn: const [
        AdminOnData(permissionId: 'area-scope', area: area),
        AdminOnData(permissionId: '', group: group),
      ],
    );
    const unlinkedUser = User(uid: 'u2', name: 'مريم');

    final contracts = <(AnalyticsEvent, String, Json)>[
      (
        const ManageUsersSearchRun(
          queryLength: 4,
          preferredView: ManageUsersView.grouped,
        ),
        'user_management:search_run',
        {'query_length': 4, 'preferred_view': 'grouped'},
      ),
      (
        const ManageUsersViewSwitch(ManageUsersView.flat),
        'user_management:view_switch',
        {'selected_view': 'flat'},
      ),
      (
        ManageUsersGroupToggle(
          UserAdminGroup(
            kind: UserAdminGroupKind.service,
            scope: service,
            subgroups: [
              UserAdminSubgroup(users: [savedUser, unlinkedUser]),
            ],
          ),
          isExpanded: true,
        ),
        'user_management:group_toggle',
        {
          'group_kind': 'service',
          'is_expanded': true,
          'user_count': 2,
          'entity_type': 'service',
          'service_id': 's1',
        },
      ),
      (
        const UserCreateTap(),
        'user_management:user_create_tap',
        {},
      ),
      (
        UserCreate(draft, const AttemptSucceeded()),
        'user_management:user_create',
        {
          'is_success': true,
          'failure_kind': 'none',
          'permission_count': 2,
          'area_count': 1,
          'service_count': 2,
          'group_count': 0,
          'has_invitation': true,
          'person_link_mode': 'create',
        },
      ),
      (
        UserSave(savedUser, savedDraft, const AttemptSucceeded()),
        'user_management:user_save',
        {
          'entity_type': 'user',
          'user_id': 'u1',
          'is_success': true,
          'failure_kind': 'none',
          'added_permissions': ['readAllData'],
          'removed_permissions': ['deleteData'],
          'added_area_count': 0,
          'added_service_count': 0,
          'added_group_count': 1,
          'removed_area_count': 0,
          'removed_service_count': 1,
          'removed_group_count': 0,
          'person_link_change': 'relinked',
        },
      ),
      (
        const UserApprove('u1', isSuccess: true),
        'user_management:user_approve',
        {'entity_type': 'user', 'user_id': 'u1', 'is_success': true},
      ),
      (
        const UserUnapprove('u1', isSuccess: false),
        'user_management:user_unapprove',
        {'entity_type': 'user', 'user_id': 'u1', 'is_success': false},
      ),
      (
        const UserPasswordResetSend('u1', isSuccess: true),
        'user_management:password_reset_send',
        {'entity_type': 'user', 'user_id': 'u1', 'is_success': true},
      ),
      (
        const AccountDeletionAnswer(confirmationStep: 2, isConfirmed: false),
        'user_management:account_deletion_answer',
        {'confirmation_step': 2, 'is_confirmed': false},
      ),
      (
        const MyAccountDelete(isSuccess: true),
        'user_management:my_account_delete',
        {'is_success': true},
      ),
      (
        const AdminUsersOpen(3),
        'user_management:admin_users_open',
        {'admin_count': 3},
      ),
    ];

    for (final (event, expectedName, expectedProperties) in contracts) {
      final sentKeys = expectedProperties.isEmpty
          ? 'no properties'
          : expectedProperties.keys.join(', ');

      test('$expectedName sends $sentKeys', () {
        expect(event.name, expectedName);
        expect(event.properties, expectedProperties);
      });
    }

    final mappings = <(String, AnalyticsEvent, Matcher)>[
      (
        'a failed creation reports it was not successful',
        UserCreate(
          draft,
          UserManagementAnalyticsEvent.failedOutcomeOf(
            const UserFormValidationError(),
          ),
        ),
        allOf(
          containsPair('is_success', false),
          containsPair('failure_kind', 'validation'),
        ),
      ),
      (
        'a person linked elsewhere fails as person_already_linked',
        UserCreate(
          draft,
          UserManagementAnalyticsEvent.failedOutcomeOf(
            const PersonAlreadyLinkedException('p1'),
          ),
        ),
        containsPair('failure_kind', 'person_already_linked'),
      ),
      (
        'a server-side person link conflict fails as person_already_linked',
        UserCreate(
          draft,
          UserManagementAnalyticsEvent.failedOutcomeOf(
            FirebaseFunctionsException(
              code: 'already-exists',
              message: 'user/person-already-linked',
            ),
          ),
        ),
        containsPair('failure_kind', 'person_already_linked'),
      ),
      (
        'a taken email fails as email_taken',
        UserCreate(
          draft,
          UserManagementAnalyticsEvent.failedOutcomeOf(
            FirebaseFunctionsException(
              code: 'already-exists',
              message: 'user/email-taken',
            ),
          ),
        ),
        containsPair('failure_kind', 'email_taken'),
      ),
      (
        'a taken name fails as name_taken',
        UserCreate(
          draft,
          UserManagementAnalyticsEvent.failedOutcomeOf(
            FirebaseFunctionsException(
              code: 'already-exists',
              message: 'user/name-taken',
            ),
          ),
        ),
        containsPair('failure_kind', 'name_taken'),
      ),
      (
        'an invitation without a scope fails as scope_required',
        UserCreate(
          draft,
          UserManagementAnalyticsEvent.failedOutcomeOf(
            FirebaseFunctionsException(
              code: 'failed-precondition',
              message: 'invitation/scope-required',
            ),
          ),
        ),
        containsPair('failure_kind', 'scope_required'),
      ),
      (
        'an invitation on an unmanageable scope fails as scope_not_manageable',
        UserCreate(
          draft,
          UserManagementAnalyticsEvent.failedOutcomeOf(
            FirebaseFunctionsException(
              code: 'permission-denied',
              message: 'invitation/scope-not-manageable',
            ),
          ),
        ),
        containsPair('failure_kind', 'scope_not_manageable'),
      ),
      (
        'an unrecognised failure fails as unknown',
        UserCreate(
          draft,
          UserManagementAnalyticsEvent.failedOutcomeOf(StateError('offline')),
        ),
        containsPair('failure_kind', 'unknown'),
      ),
      (
        'creating a user for an existing person reports the link mode',
        UserCreate(
          draft.copyWith(person: LinkExistingPerson(linkedPerson)),
          const AttemptSucceeded(),
        ),
        containsPair('person_link_mode', 'link'),
      ),
      (
        'creating a user without a person reports no link mode',
        UserCreate(
          draft.copyWith(person: const NoPersonSelected()),
          const AttemptSucceeded(),
        ),
        containsPair('person_link_mode', 'none'),
      ),
      (
        'a scope without an area, service or group is not counted',
        UserCreate(
          draft.copyWith(adminOn: const [AdminOnData(permissionId: '')]),
          const AttemptSucceeded(),
        ),
        allOf(
          containsPair('area_count', 0),
          containsPair('service_count', 0),
          containsPair('group_count', 0),
        ),
      ),
      (
        'linking a person to a user without one reports linked',
        UserSave(
          unlinkedUser,
          UserDraft.fromUser(
            unlinkedUser,
          ).copyWith(person: LinkExistingPerson(otherPerson)),
          const AttemptSucceeded(),
        ),
        containsPair('person_link_change', 'linked'),
      ),
      (
        'removing the linked person reports unlinked',
        UserSave(
          savedUser,
          savedDraft.copyWith(person: const NoPersonSelected()),
          const AttemptSucceeded(),
        ),
        containsPair('person_link_change', 'unlinked'),
      ),
      (
        'replacing the linked person with a new one reports unlinked',
        UserSave(
          savedUser,
          savedDraft.copyWith(
            person: const CreateNewPerson(name: 'جديد', gender: true),
          ),
          const AttemptSucceeded(),
        ),
        containsPair('person_link_change', 'unlinked'),
      ),
      (
        'keeping the linked person reports unchanged',
        UserSave(
          savedUser,
          UserDraft.fromUser(savedUser),
          const AttemptSucceeded(),
        ),
        containsPair('person_link_change', 'unchanged'),
      ),
      (
        'a failed save reports why it failed',
        UserSave(
          savedUser,
          savedDraft,
          UserManagementAnalyticsEvent.failedOutcomeOf(
            const UserFormValidationError(),
          ),
        ),
        allOf(
          containsPair('is_success', false),
          containsPair('failure_kind', 'validation'),
        ),
      ),
    ];

    for (final (behaviour, event, expectedProperties) in mappings) {
      test(behaviour, () => expect(event.properties, expectedProperties));
    }
  });
}
