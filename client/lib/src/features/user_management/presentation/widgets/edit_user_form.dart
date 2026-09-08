import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_entry/presentation/screens/edit_object_data/permission_check_widget.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class EditUserForm extends StatelessWidget {
  final String email;
  final PermissionsSet permissions;
  final List<AdminOnData> adminOn;

  final void Function(UserPermission) onTogglePermission;
  final void Function(List<AdminOnData>) onAdminOnChanged;

  const EditUserForm({
    required this.email,
    required this.permissions,
    required this.adminOn,
    required this.onTogglePermission,
    required this.onAdminOnChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        CopiablePropertyWidget(
          'البريد الإكتروني',
          email,
        ),
        const Divider(thickness: 1),
        PermissionCheckWidget(
          permission: UserPermission.approved,
          permissions: permissions,
          onToggle: onTogglePermission,
          subtitleText: 'يجب تفعيل الحساب للسماح للمستخدم بالدخول',
        ),
        const SizedBox(height: 16),
        ListTile(
          leading: const Icon(Symbols.shield),
          title: Text(
            'صلاحيات عامة',
            style: theme.textTheme.titleMedium,
          ),
        ),
        Card.outlined(
          color: theme.colorScheme.surfaceContainerLow,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: theme.colorScheme.outline),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: UserPermission.values
                .where((p) => p != UserPermission.approved)
                .map(
                  (p) => PermissionCheckWidget(
                    permission: p,
                    permissions: permissions,
                    onToggle: onTogglePermission,
                    subtitleText: p.label,
                  ),
                )
                .toList(),
          ),
        ),
        ListTile(
          leading: const Icon(Symbols.admin_panel_settings),
          title: Text(
            'أمين على',
            style: theme.textTheme.titleMedium,
          ),
        ),
        EditAdminOnDataWidget(
          adminOn: adminOn,
          onAdminOnChanged: onAdminOnChanged,
        ),
      ],
    );
  }
}
