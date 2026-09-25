import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class UserDraft with Equatable {
  final String name;
  final String email;
  final PersonLink person;
  final PermissionsSet permissions;
  final List<AdminOnData> adminOn;
  final InvitationChoice invitation;

  bool get isValid {
    if (name.trim().isEmpty) return false;

    return switch (person) {
      NoPersonSelected() => false,
      CreateNewPerson(:final name) => name.trim().isNotEmpty,
      LinkExistingPerson() => true,
    };
  }

  @override
  List<Object?> get props => [
    name,
    email,
    person,
    permissions,
    adminOn,
    invitation,
  ];

  const UserDraft({
    required this.name,
    required this.email,
    required this.person,
    required this.permissions,
    required this.adminOn,
    required this.invitation,
  });

  const UserDraft.empty()
    : name = '',
      email = '',
      person = const NoPersonSelected(),
      permissions = const PermissionsSet.empty(),
      adminOn = const [],
      invitation = const NoInvitation();

  factory UserDraft.fromUser(User user) => UserDraft(
    name: user.name,
    email: user.email ?? '',
    person: switch (user.person) {
      final person? => LinkExistingPerson(person),
      null => const NoPersonSelected(),
    },
    permissions: user.permissions,
    adminOn: user.adminOn ?? [],
    invitation: switch (user.invitation) {
      final invitation? => ExistingInvitation(invitation),
      null => const NoInvitation(),
    },
  );

  UserDraft copyWith({
    String? name,
    String? email,
    PersonLink? person,
    PermissionsSet? permissions,
    List<AdminOnData>? adminOn,
    InvitationChoice? invitation,
  }) => UserDraft(
    name: name ?? this.name,
    email: email ?? this.email,
    person: person ?? this.person,
    permissions: permissions ?? this.permissions,
    adminOn: adminOn ?? this.adminOn,
    invitation: invitation ?? this.invitation,
  );
}
