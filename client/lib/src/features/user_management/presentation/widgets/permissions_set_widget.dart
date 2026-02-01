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
          if (permissions.manageAllUsers)
            ListTile(
              leading: Icon(UserPermission.manageAllUsers.icon),
              title: Text(UserPermission.manageAllUsers.label),
              subtitle: const Text(
                'السماح بإضافة وتعديل وحذف المستخدمين',
              ),
            ),
          if (permissions.writeAllData)
            ListTile(
              leading: Icon(UserPermission.writeAllData.icon),
              title: Text(UserPermission.writeAllData.label),
              subtitle: const Text(
                'السماح بتعديل جميع بيانات التطبيق',
              ),
            ),
          if (permissions.readAllData)
            ListTile(
              leading: Icon(UserPermission.readAllData.icon),
              title: Text(UserPermission.readAllData.label),
              subtitle: const Text(
                'السماح برؤية جميع بيانات التطبيق',
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
              title: Text(UserPermission.recordHistory.label),
              subtitle: const Text(
                'السماح بتسجيل الحضور للخدام والمخدومين',
              ),
            ),
          if (permissions.changeOldHistory)
            ListTile(
              leading: Icon(UserPermission.changeOldHistory.icon),
              title: Text(UserPermission.changeOldHistory.label),
              subtitle: const Text(
                'السماح بتعديل سجلات الحضور لأي يوم سابق',
              ),
            ),
          if (permissions.deleteData)
            ListTile(
              leading: Icon(UserPermission.deleteData.icon),
              title: Text(UserPermission.deleteData.label),
              subtitle: const Text(
                'السماح بحذف البيانات اللتي يمكن تعديلها',
              ),
            ),
          if (permissions.recoverDeleted)
            ListTile(
              leading: Icon(UserPermission.recoverDeleted.icon),
              title: Text(UserPermission.recoverDeleted.label),
              subtitle: const Text(
                'السماح باسترجاع البيانات المحذوفة',
              ),
            ),
          if (permissions.exportData)
            ListTile(
              leading: Icon(UserPermission.exportData.icon),
              title: Text(UserPermission.exportData.label),
              subtitle: const Text(
                'السماح بتصدير البيانات',
              ),
            ),
        ],
      ),
    );
  }
}
