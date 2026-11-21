import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

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
  ),
  changeDataChecks(
    label: 'تعديل حالة اكتمال البيانات',
    icon: Symbols.fact_check,
  ),
  manageFingerprintIds(
    label: 'إدارة أرقام البصمة',
    icon: Symbols.fingerprint,
  ),
  appMaintenance(
    label: 'صيانة التطبيق',
    icon: Symbols.build,
  ),
  maintenanceNotifications(
    label: 'استلام إشعارات الصيانة (الاسم القديم لصيانة التطبيق)',
    icon: Symbols.build,
  ),
  screenCaptureNotifications(
    label: 'استلام إشعارات تصوير الشاشة',
    icon: Symbols.screenshot_monitor,
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

  UserPermissionSection get section => switch (this) {
    UserPermission.deleteData ||
    UserPermission.changeDataChecks ||
    UserPermission.manageFingerprintIds => UserPermissionSection.scopeBound,
    _ => UserPermissionSection.general,
  };

  UserPermission get currentPermission => switch (this) {
    UserPermission.maintenanceNotifications => UserPermission.appMaintenance,
    _ => this,
  };

  Set<UserPermission> get permissionsFoldedIntoIt => {
    for (final permission in values)
      if (permission.currentPermission == currentPermission) permission,
  };

  String get subtitle => this != UserPermission.approved
      ? 'السماح ب$label'
      : 'يجب تفعيل الحساب للسماح للمستخدم بالدخول';

  const UserPermission({required this.label, required this.icon});
}
