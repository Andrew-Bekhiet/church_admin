import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ManageUsersGroupHeader extends StatelessWidget {
  final UserAdminGroup group;

  const ManageUsersGroupHeader(this.group, {super.key});

  IconData get _icon => switch (group.scope) {
    Area() => Symbols.map,
    Service() => Symbols.church,
    _ => Symbols.person_off,
  };

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      tileColor: theme.colorScheme.surfaceContainerLow,
      leading: Icon(_icon, color: group.scope?.color),
      title: Text(
        group.title,
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        group.users.length.toString(),
        style: theme.textTheme.labelLarge,
      ),
    );
  }
}
