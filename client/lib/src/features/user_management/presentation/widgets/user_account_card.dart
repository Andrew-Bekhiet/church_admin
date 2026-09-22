import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_account_status_banner.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_invitation_code_tile.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_section_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class UserAccountCard extends StatelessWidget {
  final User user;

  const UserAccountCard(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final status = UserAccountStatus.of(user, now);

    return UserSectionCard(
      icon: Symbols.account_circle,
      title: 'الحساب',
      child: Column(
        children: [
          UserAccountStatusBanner(status: status, email: user.email),
          if (user.invitation case final invitation?
              when !invitation.isClaimed) ...[
            const Divider(height: 1),
            UserInvitationCodeTile(
              code: invitation.code,
              caption: invitation.statusCaptionAt(now),
              onShare: invitation.isActiveAt(now)
                  ? () => ShareService.I.shareText(
                      'كود الدعوة للانضمام إلى تطبيق خدمة الكنيسة: '
                      '${invitation.code}\n'
                      'صالح حتى '
                      '${DateFormat('yyyy/M/d').format(invitation.expiresAt)}',
                    )
                  : null,
            ),
          ],
        ],
      ),
    );
  }
}
