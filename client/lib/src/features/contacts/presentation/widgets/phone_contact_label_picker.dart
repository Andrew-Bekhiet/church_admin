import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PhoneContactLabelPicker extends StatelessWidget {
  final PhoneContactLabel label;
  final ValueChanged<PhoneContactLabel> onChanged;

  const PhoneContactLabelPicker({
    required this.label,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<PhoneContactsEditorCubit>().state;

    Future<void> pickCustomName() async {
      final name = await showDialog<Object?>(
        context: context,
        builder: (context) => PhoneFieldNameDialog(
          canDelete: false,
          initialName: switch (label) {
            FreePhoneContactLabel(:final text) => text,
            RolePhoneContactLabel() => null,
          },
        ),
      );
      if (name is String) onChanged(FreePhoneContactLabel(name.trim()));
    }

    return MenuAnchor(
      menuChildren: [
        if (!state.familyOnly)
          MenuItemButton(
            key: PhoneContactLabelPickerKeys.plainItem,
            leadingIcon: const Icon(Symbols.call),
            onPressed: () => onChanged(const FreePhoneContactLabel(null)),
            child: const Text('رقم الهاتف'),
          ),
        for (final role in state.familyRoles)
          MenuItemButton(
            key: PhoneContactLabelPickerKeys.roleItem(role.id),
            leadingIcon: const Icon(Symbols.family_restroom),
            onPressed: () => onChanged(RolePhoneContactLabel(role)),
            child: Text(RolePhoneContactLabel(role).text),
          ),
        if (!state.familyOnly)
          MenuItemButton(
            key: PhoneContactLabelPickerKeys.customItem,
            leadingIcon: const Icon(Symbols.edit),
            onPressed: pickCustomName,
            child: const Text('اسم آخر...'),
          ),
      ],
      builder: (context, controller, child) => ActionChip(
        avatar: Icon(switch (label) {
          FreePhoneContactLabel() => Symbols.call,
          RolePhoneContactLabel() => Symbols.family_restroom,
        }),
        tooltip: 'تغيير اسم الرقم',
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(child: Text(label.text, overflow: TextOverflow.ellipsis)),
            const Icon(Symbols.arrow_drop_down, size: 18),
          ],
        ),
        onPressed: () =>
            controller.isOpen ? controller.close() : controller.open(),
      ),
    );
  }
}

abstract final class PhoneContactLabelPickerKeys {
  static const Key plainItem = Key('phone_contact_label_picker_plain');
  static const Key customItem = Key('phone_contact_label_picker_custom');

  static Key roleItem(String roleId) =>
      Key('phone_contact_label_picker_role_$roleId');
}
