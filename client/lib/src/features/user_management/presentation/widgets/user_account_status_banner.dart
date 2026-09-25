import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class UserAccountStatusBanner extends StatelessWidget {
  final UserAccountStatus status;
  final String? email;

  const UserAccountStatusBanner({
    required this.status,
    required this.email,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final textTheme = TextTheme.of(context);

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: status.container(colorScheme),
        foregroundColor: status.color(colorScheme),
        child: Icon(status.icon),
      ),
      title: Text(status.label, style: textTheme.titleMedium),
      subtitle: Text(
        email ?? 'بدون بريد إلكتروني',
        style: textTheme.bodyMedium?.copyWith(
          color: email == null ? colorScheme.onSurfaceVariant : null,
        ),
      ),
    );
  }
}
