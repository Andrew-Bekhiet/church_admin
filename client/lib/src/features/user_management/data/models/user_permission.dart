import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

@Queryable(classLabel: 'صلاحيات المستخدمين')
enum UserPermission implements LabeledEnum {
  approved(
    label: 'حساب مفعل',
    icon: Symbols.done,
  ),
  manageAllUsers(
    label: 'إدارة جميع الخدام',
    icon: Symbols.manage_accounts,
  ),
  readAllData(
    label: 'رؤية جميع البيانات',
    icon: Symbols.visibility,
  ),
  writeAllData(
    label: 'تعديل جميع البيانات',
    icon: Symbols.edit,
  ),
  recordHistory(
    label: 'تسجيل الحضور',
    icon: Symbols.event_available,
  ),
  changeOldHistory(
    label: 'تغيير الحضور لأي يوم',
    icon: Symbols.history,
  ),
  recoverDeleted(
    label: 'استرجاع المحذوفات',
    icon: Symbols.restore_from_trash,
  ),
  exportData(label: 'تصدير البيانات', icon: Symbols.upload);

  static UserPermission byName(String value) => values.byName(value);

  @override
  final String label;
  final IconData icon;

  const UserPermission({required this.label, required this.icon});
}
