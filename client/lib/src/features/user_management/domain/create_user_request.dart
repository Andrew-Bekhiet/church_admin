import 'package:church_admin/church_admin.dart';

class CreateUserRequest {
  final String name;
  final String? email;
  final List<String> permissions;
  final List<AdminOnData> adminOn;
  final PersonLink person;
  final DateTime? invitationExpiresAt;

  const CreateUserRequest({
    required this.name,
    required this.email,
    required this.permissions,
    required this.adminOn,
    required this.person,
    required this.invitationExpiresAt,
  });

  factory CreateUserRequest.fromDraft(UserDraft draft) => CreateUserRequest(
    name: draft.name,
    email: draft.email.isEmpty ? null : draft.email,
    permissions: draft.permissions.validated().map((p) => p.name).toList(),
    adminOn: draft.adminOn,
    person: draft.person,
    invitationExpiresAt: switch (draft.invitation) {
      InvitationRequest(:final expiresAt) => expiresAt,
      NoInvitation() || ExistingInvitation() => null,
    },
  );
}
