import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class FamilyPhoneContactMenuButton extends StatelessWidget {
  final PhoneContactsFormController form;
  final String label;

  const FamilyPhoneContactMenuButton({
    required this.form,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final familyRoles = context.watch<FamilyRolesCubit>().state;

    return MenuAnchor(
      menuChildren: [
        for (final role in familyRoles)
          MenuItemButton(
            key: FamilyPhoneContactMenuButtonKeys.roleItem(role.id),
            leadingIcon: const Icon(Symbols.family_restroom),
            onPressed: () => form.add(RolePhoneContactLabel(role)),
            child: Text(RolePhoneContactLabel(role).text),
          ),
      ],
      builder: (context, controller, child) => OutlinedButton.icon(
        key: FamilyPhoneContactMenuButtonKeys.button,
        icon: const Icon(Symbols.family_restroom),
        label: Text(label),
        onPressed: familyRoles.isEmpty
            ? null
            : () => controller.isOpen ? controller.close() : controller.open(),
      ),
    );
  }
}

abstract final class FamilyPhoneContactMenuButtonKeys {
  static const Key button = Key('family_phone_contact_menu_button');

  static Key roleItem(String roleId) =>
      Key('family_phone_contact_menu_button_role_$roleId');
}
