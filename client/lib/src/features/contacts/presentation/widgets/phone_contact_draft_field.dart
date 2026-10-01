import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PhoneContactDraftField extends StatelessWidget {
  final PhoneContactDraft draft;

  const PhoneContactDraftField({required this.draft, super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PhoneContactsEditorCubit>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 4,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 8,
          children: [
            Flexible(
              child: PhoneContactLabelPicker(
                key: PhoneContactDraftFieldKeys.labelPicker(draft.key),
                label: draft.label,
                onChanged: (label) => cubit.changeLabel(draft.key, label),
              ),
            ),
            if (draft.canBeMain)
              FilterChip(
                key: PhoneContactDraftFieldKeys.mainChip(draft.key),
                avatar: draft.isMainPhone ? null : const Icon(Symbols.star),
                label: const Text('أساسي'),
                selected: draft.isMainPhone,
                onSelected: (_) => cubit.toggleMain(draft.key),
              ),
          ],
        ),
        TextFormField(
          key: PhoneContactDraftFieldKeys.phoneField(draft.key),
          initialValue: draft.input,
          decoration: InputDecoration(
            hintText: 'مثال: 01234...',
            prefixIcon: const Icon(Symbols.call),
            suffixIcon: IconButton(
              key: PhoneContactDraftFieldKeys.removeButton(draft.key),
              tooltip: 'حذف الرقم',
              icon: const Icon(Symbols.delete),
              onPressed: () => cubit.remove(draft.key),
            ),
          ),
          keyboardType: TextInputType.phone,
          autofillHints: const [AutofillHints.telephoneNumber],
          textInputAction: TextInputAction.next,
          onChanged: (value) => cubit.changeInput(draft.key, value),
          validator: (_) => cubit.state.errors[draft.key]?.message,
        ),
      ],
    );
  }
}

abstract final class PhoneContactDraftFieldKeys {
  static Key phoneField(String draftKey) =>
      Key('phone_contacts_editor_phone_$draftKey');
  static Key labelPicker(String draftKey) =>
      Key('phone_contacts_editor_label_$draftKey');
  static Key mainChip(String draftKey) =>
      Key('phone_contacts_editor_main_$draftKey');
  static Key removeButton(String draftKey) =>
      Key('phone_contacts_editor_remove_$draftKey');
}
