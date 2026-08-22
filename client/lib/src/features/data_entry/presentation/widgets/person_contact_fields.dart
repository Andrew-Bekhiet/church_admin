import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PersonContactFields extends StatelessWidget {
  final Person person;
  final ValueChanged<String> onNameChanged;
  final ValueChanged<String> onNationalIdChanged;
  final VoidCallback onImportFromContacts;
  final ValueChanged<String> onMainPhoneChanged;
  final String? Function(String?) validatePhone;
  final void Function() Function(MapEntry<String, dynamic>) onEditPhoneName;
  final void Function(String key, String value) onOtherPhoneChanged;
  final VoidCallback onAddOtherPhone;
  final ValueChanged<DateTime?> onBirthdateChanged;

  const PersonContactFields({
    required this.person,
    required this.onNameChanged,
    required this.onNationalIdChanged,
    required this.onImportFromContacts,
    required this.onMainPhoneChanged,
    required this.validatePhone,
    required this.onEditPhoneName,
    required this.onOtherPhoneChanged,
    required this.onAddOtherPhone,
    required this.onBirthdateChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Builder(
            builder: (context) => TextFormField(
              key: ValueKey(person.mainPhone),
              decoration: InputDecoration(
                labelText: 'رقم الهاتف',
                suffixIcon:
                    CurrentPlatformService.I.isAndroid ||
                        CurrentPlatformService.I.isIOS
                    ? IconButton(
                        tooltip: 'اختيار من جهات الاتصال',
                        onPressed: onImportFromContacts,
                        icon: const Icon(Symbols.contacts),
                      )
                    : null,
              ),
              onFieldSubmitted: (_) {
                FocusScope.of(context).nextFocus();
                if (person.otherPhones.isEmpty) {
                  FocusScope.of(context).nextFocus();
                }
              },
              initialValue: person.mainPhone,
              keyboardType: TextInputType.phone,
              autofillHints: const [AutofillHints.telephoneNumber],
              textInputAction: TextInputAction.next,
              onChanged: onMainPhoneChanged,
              validator: (v) =>
                  v != null && v.isNotEmpty ? validatePhone(v) : null,
              inputFormatters: [
                TextInputFormatter.withFunction(
                  (oldValue, newValue) => newValue.copyWith(
                    text: newValue.text.replaceAll(RegExp(r'[^\d\+]'), ''),
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...person.otherPhones.entries.mapIndexed((i, phone) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Builder(
                  builder: (context) => TextFormField(
                    decoration: InputDecoration(
                      labelText: phone.key,
                      hintText: 'مثال: 01234...',
                      suffixIcon: IconButton(
                        icon: const Icon(Symbols.edit),
                        tooltip: 'تعديل اسم الهاتف',
                        onPressed: onEditPhoneName(phone),
                      ),
                    ),
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).nextFocus();
                      if (i == person.otherPhones.length - 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    keyboardType: TextInputType.phone,
                    autofillHints: const [AutofillHints.telephoneNumber],
                    initialValue: phone.value,
                    onChanged: (value) => onOtherPhoneChanged(phone.key, value),
                    validator: validatePhone,
                    inputFormatters: [
                      TextInputFormatter.withFunction(
                        (oldValue, newValue) => newValue.copyWith(
                          text: newValue.text.replaceAll(r'[^\d\+]', ''),
                        ),
                      ),
                    ],
                    textInputAction: TextInputAction.next,
                  ),
                ),
              );
            }),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: FilledButton.tonalIcon(
                style: themeData.filledTonalButtonStyleWorkaround,
                icon: const Icon(Symbols.add),
                label: const Text('إضافة رقم هاتف أخر'),
                onPressed: onAddOtherPhone,
              ),
            ),
          ],
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
