import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_invitation_expiry_tile.dart';
import 'package:flutter/material.dart';

class UserInvitationField extends StatelessWidget {
  final InvitationChoice invitation;
  final UserFormCubit cubit;

  const UserInvitationField({
    required this.invitation,
    required this.cubit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return switch (invitation) {
      NoInvitation() || InvitationRequest() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SwitchListTile(
            title: const Text('إنشاء دعوة للانضمام'),
            value: invitation is InvitationRequest,
            onChanged: (value) => cubit.setInvitation(
              value
                  ? InvitationRequest(
                      InvitationRequest.defaultExpiry(DateTime.now()),
                    )
                  : const NoInvitation(),
            ),
          ),
          if (invitation case InvitationRequest(:final expiresAt))
            UserInvitationExpiryTile(
              expiresAt: expiresAt,
              firstDate: DateTime.now().add(const Duration(days: 1)),
              lastDate: InvitationRequest.maxExpiry(DateTime.now()),
              onExpiryChanged: (picked) =>
                  cubit.setInvitation(InvitationRequest(picked)),
            ),
        ],
      ),
      ExistingInvitation(:final invitation) when invitation.isClaimed =>
        const ListTile(title: Text('تم استخدام الدعوة')),
      ExistingInvitation(:final invitation) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CopiablePropertyWidget('كود الدعوة', invitation.code),
          UserInvitationExpiryTile(
            expiresAt: invitation.expiresAt,
            firstDate:
                DateTime.now().isAfter(
                  invitation.createdAt.add(const Duration(days: 1)),
                )
                ? DateTime.now()
                : invitation.createdAt.add(const Duration(days: 1)),
            lastDate: InvitationRequest.maxExpiry(invitation.createdAt),
            onExpiryChanged: (picked) => cubit.setInvitation(
              ExistingInvitation(invitation.copyWith(expiresAt: picked)),
            ),
          ),
        ],
      ),
    };
  }
}
