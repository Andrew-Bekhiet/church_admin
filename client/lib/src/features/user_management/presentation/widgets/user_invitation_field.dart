import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_invitation_code_tile.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_invitation_expiry_tile.dart';
import 'package:material_ui/material_ui.dart';

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
            onChanged: (value) {
              AnalyticsService.I.track(InvitationToggle(isEnabled: value));
              cubit.setInvitation(
                value
                    ? InvitationRequest(
                        InvitationRequest.defaultExpiry(DateTime.now()),
                      )
                    : const NoInvitation(),
              );
            },
          ),
          if (invitation case InvitationRequest(:final expiresAt))
            UserInvitationExpiryTile(
              expiresAt: expiresAt,
              firstDate: DateTime.now().add(const Duration(days: 1)),
              lastDate: InvitationRequest.maxExpiry(DateTime.now()),
              onExpiryChanged: (picked) {
                _maybeTrackExpiryChange(
                  picked: picked,
                  current: expiresAt,
                  validFrom: DateTime.now(),
                );
                cubit.setInvitation(InvitationRequest(picked));
              },
            ),
        ],
      ),
      ExistingInvitation(:final invitation) when invitation.isClaimed =>
        UserInvitationCodeTile(invitation: invitation),
      ExistingInvitation(:final invitation) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          UserInvitationCodeTile(invitation: invitation),
          UserInvitationExpiryTile(
            expiresAt: invitation.expiresAt,
            firstDate:
                DateTime.now().isAfter(
                  invitation.createdAt.add(const Duration(days: 1)),
                )
                ? DateTime.now()
                : invitation.createdAt.add(const Duration(days: 1)),
            lastDate: InvitationRequest.maxExpiry(invitation.createdAt),
            onExpiryChanged: (picked) {
              _maybeTrackExpiryChange(
                picked: picked,
                current: invitation.expiresAt,
                validFrom: invitation.createdAt,
              );
              cubit.setInvitation(
                ExistingInvitation(invitation.copyWith(expiresAt: picked)),
              );
            },
          ),
        ],
      ),
    };
  }

  void _maybeTrackExpiryChange({
    required DateTime picked,
    required DateTime current,
    required DateTime validFrom,
  }) {
    if (picked == current) return;

    AnalyticsService.I.track(
      InvitationExpiryChange(picked.difference(validFrom)),
    );
  }
}
