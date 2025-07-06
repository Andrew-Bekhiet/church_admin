import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

enum UserPermission implements ViewableWithID {
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

  @override
  String get name => humanReadableName;

  @override
  Color? get color => null;

  @override
  Future<String?> getSecondLine() => SynchronousFuture(humanReadableName);

  @override
  String get id => (this as Enum).name;
}
