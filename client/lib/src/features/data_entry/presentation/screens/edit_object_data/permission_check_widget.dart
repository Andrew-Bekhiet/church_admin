import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PermissionCheckWidget extends StatelessWidget {
  final PermissionsSet permissions;
  final UserPermission permission;
  final String subtitleText;
  final void Function(UserPermission permission) onToggle;

  const PermissionCheckWidget({
    required this.permissions,
    required this.permission,
    required this.onToggle,
    required this.subtitleText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final hasAllRequirements = permissions.containsAll(permission.requires);

    return CheckboxListTile(
      value: hasAllRequirements && permissions.contains(permission),
      onChanged: hasAllRequirements ? (_) => onToggle(permission) : null,
      secondary: Icon(permission.icon),
      title: Text(permission.label),
      subtitle: Text(subtitleText),
    );
  }
}
