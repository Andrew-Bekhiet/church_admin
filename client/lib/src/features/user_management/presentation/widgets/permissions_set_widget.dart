import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_section_card.dart';
import 'package:material_ui/material_ui.dart';

class PermissionsSetWidget extends StatelessWidget {
  final PermissionsSet permissions;
  const PermissionsSetWidget({
    required this.permissions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: [
        for (final MapEntry(key: section, value: granted)
            in permissions.groupedBySection.entries)
          UserSectionCard(
            key: PermissionsSetWidgetKeys.sectionFor(section),
            icon: section.icon,
            title: section.title,
            helper: section.helper,
            child: Column(
              children: [
                for (final permission in granted)
                  ListTile(
                    key: PermissionsSetWidgetKeys.permissionFor(permission),
                    leading: Icon(permission.icon),
                    title: Text(permission.label),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}

abstract final class PermissionsSetWidgetKeys extends WidgetKeys {
  static Key sectionFor(UserPermissionSection section) =>
      ValueKey((PermissionsSetWidgetKeys, #sectionFor, section));
  static Key permissionFor(UserPermission permission) =>
      ValueKey((PermissionsSetWidgetKeys, #permissionFor, permission));
}
