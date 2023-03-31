import 'package:flutter/material.dart';

enum UserPermission {
  approved(
    humanReadableName: 'حساب مفعل',
    icon: Icons.done,
  ),
  manageAllUsers(
    humanReadableName: 'إدارة جميع المستخدمين',
    icon: Icons.manage_accounts,
  ),
  readAllData(
    humanReadableName: 'رؤية جميع البيانات',
    icon: Icons.visibility,
  ),
  writeAllData(
    humanReadableName: 'تعديل جميع البيانات',
    icon: Icons.edit,
  ),
  recordHistory(
    humanReadableName: 'تسجيل الحضور',
    icon: Icons.event_available,
  ),
  changeOldHistory(
    humanReadableName: 'تغيير الحضور لأي يوم',
    icon: Icons.history,
  ),
  recoverDeleted(
    humanReadableName: 'استرجاع المحذوفات',
    icon: Icons.restore_from_trash,
  ),
  exportData(humanReadableName: 'تصدير البيانات', icon: Icons.upload);

  final String humanReadableName;
  final IconData icon;

  const UserPermission({required this.humanReadableName, required this.icon});
}
