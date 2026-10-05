import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

@Queryable(label: 'صلاحيات المستخدمين')
enum UserPermission implements LabeledEnum {
  approved(
    label: 'حساب مفعل',
    icon: Symbols.done,
  ),
  manageAllUsers(
    label: 'إدارة جميع الخدام',
    icon: Symbols.manage_accounts,
  ),
  onboardUsers(
    label: 'إضافة حسابات الخدام',
    icon: Symbols.person_add,
  ),
  readAllData(
    label: 'رؤية جميع البيانات',
    icon: Symbols.visibility,
  ),
  writeAllData(
    label: 'تعديل جميع البيانات',
    icon: Symbols.edit,
  ),
  exportAllData(label: 'تصدير جميع البيانات', icon: Symbols.upload),
  recordAllAttendance(
    label: 'تسجيل الحضور لجميع المخدومين',
    icon: Symbols.productivity,
  ),
  recordAllServantsAttendance(
    label: 'تسجيل الحضور لجميع الخدام',
    icon: Symbols.productivity,
  ),
  deleteData(
    label: 'حذف البيانات',
    icon: Symbols.delete,
  ),
  recoverDeleted(
    label: 'استرجاع المحذوفات',
    icon: Symbols.restore_from_trash,
  );

  static UserPermission byName(String value) => values.byName(value);

  @override
  final String label;
  final IconData icon;

  Set<UserPermission> get requires {
    if (this == UserPermission.approved) return {};

    return {
      UserPermission.approved,
      ...switch (this) {
        UserPermission.manageAllUsers => {
          UserPermission.writeAllData,
          ...UserPermission.writeAllData.requires,
        },
        UserPermission.writeAllData ||
        UserPermission.exportAllData ||
        UserPermission.recordAllAttendance ||
        UserPermission.recordAllServantsAttendance => {
          UserPermission.readAllData,
          ...UserPermission.readAllData.requires,
        },
        UserPermission.recoverDeleted => {
          UserPermission.readAllData,
          ...UserPermission.readAllData.requires,
        },
        _ => {},
      },
    };
  }

  String get subtitle => this != UserPermission.approved
      ? 'السماح ب$label'
      : 'يجب تفعيل الحساب للسماح للمستخدم بالدخول';

  const UserPermission({required this.label, required this.icon});
}
