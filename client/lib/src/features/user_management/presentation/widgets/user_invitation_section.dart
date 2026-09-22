import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class UserInvitationSection extends StatelessWidget {
  final Invitation invitation;

  const UserInvitationSection(this.invitation, {super.key});

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('yyyy/M/d');
    final statusText = switch (invitation) {
      Invitation(isClaimed: true, :final claimedAt) =>
        'تم استخدام الدعوة في ${dateFormat.format(claimedAt!)}',
      Invitation(:final expiresAt) when expiresAt.isBefore(DateTime.now()) =>
        'انتهت صلاحية الدعوة',
      Invitation(:final expiresAt) =>
        'صالحة حتى ${dateFormat.format(expiresAt)}',
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CopiablePropertyWidget('كود الدعوة', invitation.code),
        ListTile(title: Text(statusText)),
        if (!invitation.isClaimed)
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16, end: 16),
            child: FilledButton.tonalIcon(
              icon: const Icon(Symbols.share),
              label: const Text('مشاركة كود الدعوة'),
              onPressed: () => ShareService.I.shareText(
                'كود الدعوة للانضمام إلى تطبيق خدمة الكنيسة: ${invitation.code}\n'
                'صالح حتى ${dateFormat.format(invitation.expiresAt)}',
              ),
            ),
          ),
      ],
    );
  }
}
