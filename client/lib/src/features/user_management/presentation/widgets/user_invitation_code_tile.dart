import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:material_symbols_icons/material_symbols_icons.dart';

class UserInvitationCodeTile extends StatelessWidget {
  final Invitation invitation;

  const UserInvitationCodeTile({
    required this.invitation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat.yMd('ar-EG').add_jm();
    final now = DateTime.now();
    final textTheme = TextTheme.of(context);
    final colorScheme = ColorScheme.of(context);

    return ListTile(
      title: Text('كود الدعوة', style: textTheme.labelMedium),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 2,
        children: [
          Text(
            invitation.code,
            key: UserInvitationCodeTileKeys.code,
            textDirection: TextDirection.ltr,
            style: textTheme.headlineSmall?.copyWith(
              fontFeatures: const [FontFeature.tabularFigures()],
              letterSpacing: 2,
            ),
          ),
          Text(
            switch (invitation) {
              Invitation(:final claimedAt?) =>
                'استُخدمت في ${dateFormat.format(claimedAt)}',
              _ when invitation.isExpiredAt(now) =>
                'انتهت في ${dateFormat.format(invitation.expiresAt)}',
              _ => 'صالحة حتى ${dateFormat.format(invitation.expiresAt)}',
            },
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (invitation.isActiveAt(now))
            IconButton(
              icon: const Icon(Symbols.share),
              tooltip: 'مشاركة',
              onPressed: () => ShareService.I.shareText(
                'كود الدعوة للانضمام إلى تطبيق خدمة الكنيسة: '
                '${invitation.code}\n'
                'صالح حتى '
                '${dateFormat.format(invitation.expiresAt)}',
              ),
            ),
          IconButton(
            icon: const Icon(Symbols.content_copy),
            tooltip: 'نسخ',
            onPressed: () =>
                Clipboard.setData(ClipboardData(text: invitation.code)),
          ),
        ],
      ),
    );
  }
}

abstract final class UserInvitationCodeTileKeys {
  static const Key code = ValueKey('Invitation Code Key');
}
