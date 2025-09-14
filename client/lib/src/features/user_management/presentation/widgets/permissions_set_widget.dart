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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (permissions.manageAllUsers)
          ListTile(
            leading: Icon(
              UserPermission.manageAllUsers.icon,
            ),
            title: Text(
              UserPermission.manageAllUsers.label,
            ),
          ),
        if (permissions.readAllData)
          ListTile(
            leading: Icon(UserPermission.readAllData.icon),
            title: Text(
              UserPermission.readAllData.label,
            ),
          ),
        if (permissions.writeAllData)
          ListTile(
            leading: Icon(UserPermission.writeAllData.icon),
            title: Text(
              UserPermission.writeAllData.label,
            ),
          ),
        if (permissions.deleteData)
          ListTile(
            leading: Icon(UserPermission.deleteData.icon),
            title: Text(
              UserPermission.deleteData.label,
            ),
          ),
        if ((permissions.manageAllUsers ||
                permissions.readAllData ||
                permissions.writeAllData) &&
            (permissions.recordHistory ||
                permissions.changeOldHistory ||
                permissions.recoverDeleted ||
                permissions.exportData))
          const Divider(),
        if (permissions.recordHistory)
          ListTile(
            leading: Icon(UserPermission.recordHistory.icon),
            title: Text(
              UserPermission.recordHistory.label,
            ),
          ),
        if (permissions.changeOldHistory)
          ListTile(
            leading: Icon(
              UserPermission.changeOldHistory.icon,
            ),
            title: Text(
              UserPermission.changeOldHistory.label,
            ),
          ),
        if (permissions.recoverDeleted)
          ListTile(
            leading: Icon(
              UserPermission.recoverDeleted.icon,
            ),
            title: Text(
              UserPermission.recoverDeleted.label,
            ),
          ),
        if (permissions.exportData)
          ListTile(
            leading: Icon(UserPermission.exportData.icon),
            title: Text(
              UserPermission.exportData.label,
            ),
          ),
      ],
    );
  }
}
