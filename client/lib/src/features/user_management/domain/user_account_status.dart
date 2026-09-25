import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

enum UserAccountStatus {
  claimed(Symbols.verified_user, 'حساب مرتبط'),
  pendingInvitation(Symbols.schedule_send, 'دعوة بانتظار القبول'),
  expiredInvitation(Symbols.event_busy, 'انتهت صلاحية الدعوة'),
  noAccount(Symbols.no_accounts, 'لم يسجّل حسابه بعد');

  final IconData icon;
  final String label;

  const UserAccountStatus(this.icon, this.label);

  static UserAccountStatus of(User user, DateTime now) => switch (user) {
    User(authId: final _?) => claimed,
    User(:final invitation?) when invitation.isActiveAt(now) =>
      pendingInvitation,
    User(:final invitation?) when invitation.isExpiredAt(now) =>
      expiredInvitation,
    _ => noAccount,
  };

  Color color(ColorScheme colorScheme) => switch (this) {
    claimed => colorScheme.primary,
    pendingInvitation => colorScheme.onSurface,
    expiredInvitation => colorScheme.error,
    noAccount => colorScheme.onSurfaceVariant,
  };

  Color container(ColorScheme colorScheme) => switch (this) {
    claimed => colorScheme.primaryContainer,
    pendingInvitation => colorScheme.surfaceContainerHighest,
    expiredInvitation => colorScheme.errorContainer,
    noAccount => colorScheme.surfaceContainerHighest,
  };
}
