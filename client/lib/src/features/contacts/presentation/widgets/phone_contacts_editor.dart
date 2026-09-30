import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

abstract final class PhoneContactsEditorKeys {
  static const Key addButton = Key('phone_contacts_editor_add');

  static Key phoneField(String draftKey) =>
      Key('phone_contacts_editor_phone_$draftKey');
  static Key labelPicker(String draftKey) =>
      Key('phone_contacts_editor_label_$draftKey');
  static Key mainChip(String draftKey) =>
      Key('phone_contacts_editor_main_$draftKey');
  static Key removeButton(String draftKey) =>
      Key('phone_contacts_editor_remove_$draftKey');
}

class PhoneContactsEditor extends StatelessWidget {
  final VoidCallback? onImportFromContacts;

  const PhoneContactsEditor({required this.onImportFromContacts, super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PhoneContactsEditorCubit>();
    final themeData = Theme.of(context);

    return BlocBuilder<PhoneContactsEditorCubit, PhoneContactsEditorState>(
      builder: (context, state) => switch (state) {
        PhoneContactsEditorLoading() => const LinearProgressIndicator(),
        PhoneContactsEditorReady(:final drafts) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'أرقام الهاتف',
                style: themeData.textTheme.titleSmall,
              ),
              trailing: onImportFromContacts != null
                  ? IconButton(
                      tooltip: 'اختيار من جهات الاتصال',
                      onPressed: onImportFromContacts,
                      icon: const Icon(Symbols.contacts),
                    )
                  : null,
            ),
            for (final draft in drafts)
              PhoneContactDraftField(key: ValueKey(draft.key), draft: draft),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: FilledButton.tonalIcon(
                key: PhoneContactsEditorKeys.addButton,
                style: themeData.filledTonalButtonStyleWorkaround,
                icon: const Icon(Symbols.add),
                label: const Text('إضافة رقم هاتف'),
                onPressed: () => cubit.add(const FreePhoneContactLabel(null)),
              ),
            ),
          ],
        ),
      },
    );
  }
}
