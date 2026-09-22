import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class UserAccountStatusIndicators extends StatelessWidget {
  final User user;

  const UserAccountStatusIndicators(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final invitation = user.invitation;

    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        if (user.authId != null)
          Tooltip(
            message: 'حساب مرتبط',
            child: Icon(Symbols.verified_user, color: colorScheme.primary),
          ),
        if (invitation != null && invitation.isActiveAt(DateTime.now()))
          Tooltip(
            message: 'دعوة سارية',
            child: Icon(Symbols.mail, color: colorScheme.tertiary),
          ),
        if (invitation != null &&
            !invitation.isActiveAt(DateTime.now()) &&
            !invitation.isClaimed)
          Tooltip(
            message: 'دعوة منتهية',
            child: Icon(Symbols.mail, color: colorScheme.onSurfaceVariant),
          ),
      ],
    );
  }
}
