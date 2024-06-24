import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

enum UserPermission {
  approved(
    humanReadableName: 'حساب مفعل',
    icon: Symbols.done,
  ),
  manageAllUsers(
    humanReadableName: 'إدارة جميع الخدام',
    icon: Symbols.manage_accounts,
  ),
  readAllData(
    humanReadableName: 'رؤية جميع البيانات',
    icon: Symbols.visibility,
  ),
  writeAllData(
    humanReadableName: 'تعديل جميع البيانات',
    icon: Symbols.edit,
  ),
  recordHistory(
    humanReadableName: 'تسجيل الحضور',
    icon: Symbols.event_available,
  ),
  changeOldHistory(
    humanReadableName: 'تغيير الحضور لأي يوم',
    icon: Symbols.history,
  ),
  recoverDeleted(
    humanReadableName: 'استرجاع المحذوفات',
    icon: Symbols.restore_from_trash,
  ),
  exportData(humanReadableName: 'تصدير البيانات', icon: Symbols.upload);

  final String humanReadableName;
  final IconData icon;

  const UserPermission({required this.humanReadableName, required this.icon});
}
