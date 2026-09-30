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

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 4,
        children: [
          Row(
            spacing: 8,
            children: [
              Expanded(
                child: PhoneContactLabelPicker(
                  key: PhoneContactsEditorKeys.labelPicker(draft.key),
                  label: draft.label,
                  onChanged: (label) => cubit.changeLabel(draft.key, label),
                ),
              ),
              if (draft.canBeMain)
                ChoiceChip(
                  key: PhoneContactsEditorKeys.mainChip(draft.key),
                  label: const Text('أساسي'),
                  selected: draft.isMainPhone,
                  onSelected: (_) => cubit.toggleMain(draft.key),
                ),
              IconButton(
                key: PhoneContactsEditorKeys.removeButton(draft.key),
                tooltip: 'حذف الرقم',
                icon: const Icon(Symbols.delete),
                onPressed: () => cubit.remove(draft.key),
              ),
            ],
          ),
          TextFormField(
            key: PhoneContactsEditorKeys.phoneField(draft.key),
            initialValue: draft.input,
            decoration: const InputDecoration(hintText: 'مثال: 01234...'),
            keyboardType: TextInputType.phone,
            autofillHints: const [AutofillHints.telephoneNumber],
            textInputAction: TextInputAction.next,
            onChanged: (value) => cubit.changeInput(draft.key, value),
            validator: (_) => switch (cubit.state) {
              PhoneContactsEditorReady(:final errors) =>
                errors[draft.key]?.message,
              PhoneContactsEditorLoading() => null,
            },
          ),
        ],
      ),
    );
  }
}
