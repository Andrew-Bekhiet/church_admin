import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_invitation_code_tile.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class UserInvitationSection extends StatelessWidget {
  final Invitation invitation;

  const UserInvitationSection(this.invitation, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        UserInvitationCodeTile(
          code: invitation.code,
          caption: invitation.statusCaptionAt(DateTime.now()),
        ),
        if (invitation.isActiveAt(DateTime.now()))
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16, end: 16),
            child: FilledButton.tonalIcon(
              icon: const Icon(Symbols.share),
              label: const Text('مشاركة كود الدعوة'),
              onPressed: () => ShareService.I.shareText(
                'كود الدعوة للانضمام إلى تطبيق خدمة الكنيسة: ${invitation.code}\n'
                'صالح حتى ${DateFormat.yMd('ar-EG').add_jm().format(invitation.expiresAt)}',
              ),
            ),
          ),
      ],
    );
  }
}
