import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/user_permissions/user_permissions_update_helper.dart';

class CreateUserRequest {
  final String name;
  final String? email;
  final List<String> permissions;
  final List<Map<String, Object?>> adminOn;
  final Map<String, Object?> person;
  final Map<String, Object?>? invitation;

  const CreateUserRequest({
    required this.name,
    required this.email,
    required this.permissions,
    required this.adminOn,
    required this.person,
    required this.invitation,
  });

  factory CreateUserRequest.fromDraft(UserDraft draft) => CreateUserRequest(
    name: draft.name,
    email: draft.email.isEmpty ? null : draft.email,
    permissions: draft.permissions.map((p) => p.name).toList(),
    adminOn: draft.adminOn
        .map(
          (data) => UserPermissionsUpdateHelper.adminOnInsertInputFrom(
            null,
            data,
          ).toJson(),
        )
        .toList(),
    person: switch (draft.person) {
      LinkExistingPerson(:final person) => {
        'kind': 'existing',
        'id': person.id,
      },
      CreateNewPerson(:final name, :final gender) => {
        'kind': 'new',
        'name': name,
        'gender': gender,
      },
      NoPersonSelected() => {'kind': 'new', 'name': '', 'gender': true},
    },
    invitation: switch (draft.invitation) {
      InvitationRequest(:final expiresAt) => {
        'expiresAt': expiresAt.toUtc().toIso8601String(),
      },
      NoInvitation() || ExistingInvitation() => null,
    },
  );

  Map<String, Object?> toJson() => {
    'name': name,
    'email': email,
    'permissions': permissions,
    'adminOn': adminOn,
    'person': person,
    'invitation': invitation,
  };
}
