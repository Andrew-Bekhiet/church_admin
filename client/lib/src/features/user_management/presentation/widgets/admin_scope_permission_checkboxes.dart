import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

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
          key: AdminScopePermissionCheckboxesKeys.manageUsersCheckbox,
          dense: true,
          enabled: userAdminScope.canWriteData,
          secondary: Icon(UserPermission.manageAllUsers.icon),
          title: const Text('ادارة المستخدمين'),
          subtitle: Text(
            'السماح بإضافة وتعديل وحذف المستخدمين في نفس ال$objectLabel',
          ),
          value: userAdminScope.canManageUsers,
          onChanged: (value) => _toggle(
            AdminScopePermission.manageUsers,
            value,
            userAdminScope.copyWith(canManageUsers: value),
          ),
        ),
        CheckboxListTile(
          key: AdminScopePermissionCheckboxesKeys.writeDataCheckbox,
          dense: true,
          secondary: Icon(UserPermission.writeAllData.icon),
          title: const Text('تعديل البيانات'),
          subtitle: Text('السماح بتعديل جميع البيانات داخل ال$objectLabel'),
          value: userAdminScope.canWriteData,
          onChanged: (value) => _toggle(
            AdminScopePermission.writeData,
            value,
            userAdminScope.copyWith(canWriteData: value),
          ),
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
            onChanged: (value) => _toggle(
              AdminScopePermission.recordAttendance,
              value,
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
            onChanged: (value) => _toggle(
              AdminScopePermission.recordServantsAttendance,
              value,
              userAdminScope.copyWith(canRecordServantsAttendance: value),
            ),
          ),
        CheckboxListTile(
          dense: true,
          secondary: Icon(UserPermission.exportAllData.icon),
          title: const Text('تصدير البيانات'),
          subtitle: Text('السماح بتصدير جميع البيانات داخل ال$objectLabel'),
          value: userAdminScope.canExportData,
          onChanged: (value) => _toggle(
            AdminScopePermission.exportData,
            value,
            userAdminScope.copyWith(canExportData: value),
          ),
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
            onChanged: (value) => _toggle(
              AdminScopePermission.writeRelatedFamilies,
              value,
              userAdminScope.copyWith(canWriteRelatedFamilies: value),
            ),
          ),
      ],
    );
  }

  void _toggle(
    AdminScopePermission permission,
    bool? value,
    UserAdminScope changedScope,
  ) {
    AnalyticsService.I.track(
      AdminScopePermissionToggle(
        userAdminScope,
        permission,
        isEnabled: value ?? false,
      ),
    );
    onChanged(changedScope);
  }
}

abstract final class AdminScopePermissionCheckboxesKeys {
  static const Key manageUsersCheckbox = ValueKey(
    'Admin Scope Manage Users Checkbox Key',
  );
  static const Key writeDataCheckbox = ValueKey(
    'Admin Scope Write Data Checkbox Key',
  );
}
