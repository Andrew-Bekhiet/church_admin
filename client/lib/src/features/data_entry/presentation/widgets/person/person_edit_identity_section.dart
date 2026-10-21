import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class PersonEditIdentitySection extends StatelessWidget {
  final PersonIdentityFormController form;
  final VoidCallback onImportFromContacts;

  const PersonEditIdentitySection({
    required this.form,
    required this.onImportFromContacts,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: AdvancedTextInput<PersonEditError>(
            key: PersonEditIdentitySectionKeys.nameField,
            field: form.name,
            translateError: PersonEditError.messageOf,
            labelText: 'الاسم',
            hintText: 'اسم المخدوم',
            keyboardType: TextInputType.name,
            autofillHints: const [AutofillHints.name],
            textCapitalization: TextCapitalization.words,
          ),
        ),
        if (FeatureFlagsRepository.I.enablePersonNationalId)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: AdvancedTextInput<PersonEditError>(
              field: form.nationalId,
              translateError: PersonEditError.messageOf,
              labelText: 'الرقم القومي',
              keyboardType: TextInputType.number,
            ),
          ),
        PhoneContactsEditor(
          onImportFromContacts:
              CurrentPlatformService.I.isAndroid ||
                  CurrentPlatformService.I.isIOS
              ? onImportFromContacts
              : null,
        ),
        AdvancedDateField<PersonEditError>(
          field: form.birthdate,
          label: 'تاريخ الميلاد',
          translateError: PersonEditError.messageOf,
        ),
      ],
    );
  }
}

abstract final class PersonEditIdentitySectionKeys {
  static const Key nameField = ValueKey('Person Edit Name Field Key');
}
