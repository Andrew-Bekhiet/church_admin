import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class UserAccountStatusIndicators extends StatelessWidget {
  final User user;

  const UserAccountStatusIndicators(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final now = DateTime.now();

    final indicator = switch (user) {
      User(authId: final _?) => null,
      User(:final invitation?) when invitation.isActiveAt(now) => (
        Symbols.schedule_send,
        colorScheme.tertiary,
        'دعوة بانتظار القبول',
      ),
      User(:final invitation?) when invitation.isExpiredAt(now) => (
        Symbols.event_busy,
        colorScheme.error,
        'انتهت صلاحية الدعوة',
      ),
      _ => (
        Symbols.no_accounts,
        colorScheme.onSurfaceVariant,
        'لم يسجّل حسابه بعد',
      ),
    };

    return switch (indicator) {
      (final icon, final color, final message) => Tooltip(
        message: message,
        child: Icon(icon, color: color),
      ),
      null => const SizedBox.shrink(),
    };
  }
}
