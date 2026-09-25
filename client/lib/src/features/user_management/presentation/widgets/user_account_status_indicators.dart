import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class UserAccountStatusIndicators extends StatelessWidget {
  final User user;

  const UserAccountStatusIndicators(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    final status = UserAccountStatus.of(user, DateTime.now());

    if (status == UserAccountStatus.claimed) return const SizedBox.shrink();

    return Tooltip(
      message: status.label,
      child: Icon(status.icon, color: status.color(ColorScheme.of(context))),
    );
  }
}
