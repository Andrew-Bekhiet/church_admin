import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PersonContactFields extends StatelessWidget {
  final Person person;
  final ValueChanged<String> onNameChanged;
  final ValueChanged<String> onNationalIdChanged;
  final VoidCallback onImportFromContacts;
  final List<PersonType> familyAdminTypes;
  final ValueChanged<List<PhoneContact>> onContactsChanged;
  final ValueChanged<DateTime?> onBirthdateChanged;

  const PersonContactFields({
    required this.person,
    required this.onNameChanged,
    required this.onNationalIdChanged,
    required this.onImportFromContacts,
    required this.familyAdminTypes,
    required this.onContactsChanged,
    required this.onBirthdateChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        NameField(
          hintText: 'اسم المخدوم',
          initialValue: person.name,
          onValueChanged: (value) => onNameChanged(value.trim()),
          padding: const EdgeInsets.symmetric(vertical: 8),
        ),
        if (FeatureFlagsRepository.I.enablePersonNationalId)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextFormField(
              decoration: const InputDecoration(labelText: 'الرقم القومي'),
              onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
              initialValue: person.nationalId?.toString(),
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              onChanged: onNationalIdChanged,
              validator: (v) =>
                  v != null &&
                      v.isNotEmpty &&
                      (int.tryParse(v) ?? 0) < 20000000000000
                  ? 'برجاء إدخال رقم قومي صالح'
                  : null,
            ),
          ),
        PhoneContactsEditor(
          contacts: person.contacts,
          ownerPersonId: person.id,
          familyId: person.family?.id ?? person.familyId,
          familyAdminTypes: familyAdminTypes,
          onChanged: onContactsChanged,
          onImportFromContacts:
              CurrentPlatformService.I.isAndroid ||
                  CurrentPlatformService.I.isIOS
              ? onImportFromContacts
              : null,
        ),
        DateTimeField(
          withTime: false,
          label: 'تاريخ الميلاد',
          initialValue: person.birthdate,
          nullable: true,
          onChanged: onBirthdateChanged,
          validator: (v) => null,
        ),
      ],
    );
  }
}
