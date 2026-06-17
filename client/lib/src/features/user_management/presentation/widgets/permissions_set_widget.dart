import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PermissionsSetWidget extends StatelessWidget {
  const PermissionsSetWidget({
    required this.permissions,
    super.key,
  });

  final PermissionsSet permissions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card.outlined(
      color: theme.colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: theme.colorScheme.outline),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          for (final permission in UserPermission.values)
            if (permission != UserPermission.approved &&
                permissions.contains(permission))
              ListTile(
                leading: Icon(permission.icon),
                title: Text(permission.label),
                subtitle: Text(permission.label),
              ),
        ],
      ),
    );
  }
}
