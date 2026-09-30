import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PhoneContactLabelPicker extends StatelessWidget {
  static const String _customName = 'custom';

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
    final (familyRoles, hasFamily) = switch (state) {
      PhoneContactsEditorReady(:final familyRoles, :final familyId) => (
        familyRoles,
        familyId != null,
      ),
      PhoneContactsEditorLoading() => (const <PersonType>[], false),
    };

    return PopupMenuButton<Object>(
      tooltip: 'تغيير اسم الرقم',
      onSelected: (selected) async {
        if (selected is PhoneContactLabel) return onChanged(selected);

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
      },
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: FreePhoneContactLabel(null),
          child: Text('رقم الهاتف'),
        ),
        for (final role in familyRoles)
          PopupMenuItem(
            value: RolePhoneContactLabel(role),
            enabled: hasFamily,
            child: Text(RolePhoneContactLabel(role).text),
          ),
        const PopupMenuItem(value: _customName, child: Text('اسم آخر...')),
      ],
      child: Row(
        spacing: 4,
        children: [
          Flexible(child: Text(label.text, overflow: TextOverflow.ellipsis)),
          const Icon(Symbols.arrow_drop_down),
        ],
      ),
    );
  }
}
