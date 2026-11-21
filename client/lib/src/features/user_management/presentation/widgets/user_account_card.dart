import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_account_status_banner.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_invitation_code_tile.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_section_card.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class UserAccountCard extends StatelessWidget {
  final User user;

  const UserAccountCard(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final status = UserAccountStatus.of(user, now);
    final isHumanAwaitingInvitationClaim =
        user.userType.isHuman &&
        user.authId == null &&
        user.invitation?.isClaimed == false;

    return UserSectionCard(
      icon: Symbols.account_circle,
      title: 'الحساب',
      child: Column(
        children: [
          UserAccountStatusBanner(
            status: status,
            userType: user.userType,
            email: user.email,
          ),
          if (user.invitation case final invitation?
              when isHumanAwaitingInvitationClaim) ...[
            const Divider(height: 1),
            UserInvitationCodeTile(invitation: invitation),
          ],
        ],
      ),
    );
  }
}
