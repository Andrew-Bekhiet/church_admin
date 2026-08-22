import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AdminScopePermissionCheckboxes extends StatelessWidget {
  const AdminScopePermissionCheckboxes({
    required this.userAdminScope,
    required this.objectLabel,
    required this.onChanged,
    super.key,
  });

  final UserAdminScope userAdminScope;
  final String objectLabel;
  final void Function(UserAdminScope) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CheckboxListTile(
          dense: true,
          enabled: userAdminScope.canWriteData,
          secondary: Icon(UserPermission.manageAllUsers.icon),
          title: const Text('ادارة المستخدمين'),
          subtitle: Text(
            'السماح بإضافة وتعديل وحذف المستخدمين في نفس ال$objectLabel',
          ),
          value: userAdminScope.canManageUsers,
          onChanged: (value) =>
              onChanged(userAdminScope.copyWith(canManageUsers: value)),
        ),
        CheckboxListTile(
          dense: true,
          secondary: Icon(UserPermission.writeAllData.icon),
          title: const Text('تعديل البيانات'),
          subtitle: Text('السماح بتعديل جميع البيانات داخل ال$objectLabel'),
          value: userAdminScope.canWriteData,
          onChanged: (value) =>
              onChanged(userAdminScope.copyWith(canWriteData: value)),
        ),
        if (userAdminScope.object case Service() || Group())
          CheckboxListTile(
            dense: true,
            secondary: Icon(UserPermission.recordAllAttendance.icon),
            title: const Text('تسجيل الحضور لجميع المخدومين'),
            subtitle: Text(
              'السماح بتسجيل الحضور لجميع المخدومين في ال$objectLabel',
            ),
            value: userAdminScope.canRecordAttendance,
            onChanged: (value) => onChanged(
              userAdminScope.copyWith(canRecordAttendance: value),
            ),
          ),
        if (userAdminScope.object case Service() || Group())
          CheckboxListTile(
            dense: true,
            secondary: Icon(UserPermission.recordAllServantsAttendance.icon),
            title: const Text('تسجيل الحضور لجميع الخدام'),
            subtitle: Text(
              'السماح بتسجيل الحضور لجميع الخدام في ال$objectLabel',
            ),
            value: userAdminScope.canRecordServantsAttendance,
            onChanged: (value) => onChanged(
              userAdminScope.copyWith(canRecordServantsAttendance: value),
            ),
          ),
        CheckboxListTile(
          dense: true,
          secondary: Icon(UserPermission.exportAllData.icon),
          title: const Text('تصدير البيانات'),
          subtitle: Text('السماح بتصدير جميع البيانات داخل ال$objectLabel'),
          value: userAdminScope.canExportData,
          onChanged: (value) =>
              onChanged(userAdminScope.copyWith(canExportData: value)),
        ),
        if (userAdminScope.object case Service() || Group())
          CheckboxListTile(
            dense: true,
            secondary: Icon(
              ViewableObjectService.I.getDefaultIconFor<Family>(),
            ),
            title: const Text('رؤية وتعديل عائلات المخدومين'),
            subtitle: Text(
              'السماح برؤية وتعديل جميع أفراد عائلات المخدومين في ال$objectLabel',
            ),
            value: userAdminScope.canWriteRelatedFamilies,
            onChanged: (value) => onChanged(
              userAdminScope.copyWith(canWriteRelatedFamilies: value),
            ),
          ),
      ],
    );
  }
}
