import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart' as contacts;
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:permission_handler/permission_handler.dart';

class PersonContactSection extends StatelessWidget {
  final Person person;

  const PersonContactSection({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    final labelSmall = Theme.of(context).textTheme.labelSmall!;

    return Column(
      children: [
        if (person.nationalId != null)
          ListTile(
            title: const Text('الرقم القومي'),
            subtitle: Text(person.nationalId?.toString() ?? ''),
          ),
        PhoneNumberPropertyWidget(
          'رقم الهاتف',
          person.mainPhone ?? '',
          (n) => _phoneCall(context, n),
          addToContacts: (n) => _contactAdd(context, n, person),
        ),
        ...person.otherPhones.entries.map(
          (e) => PhoneNumberPropertyWidget(
            e.key,
            e.value,
            (n) => _phoneCall(context, n),
            addToContacts: (n) => _contactAdd(context, n, person),
          ),
        ),
        CopiablePropertyWidget(
          'العنوان والموقع',
          person.address?.toString(),
          additionalOptions: [
            if (person.geolocation != null)
              IconButton(
                icon: const Icon(Symbols.location_pin),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ViewGeodataMap(
                      initialPerson: person,
                      initialGeomapOptions: GeomapOptions(),
                    ),
                  ),
                ),
                tooltip: 'إظهار على الخريطة',
              ),
          ],
        ),
        ListTile(
          title: const Text('السن'),
          subtitle: person.birthdate != null
              ? Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        person.birthdate!.toDurationString(
                          appendSince: false,
                        ),
                      ),
                    ),
                    Text(
                      DateFormat('yyyy/M/d').format(person.birthdate!),
                      style: labelSmall,
                    ),
                  ],
                )
              : null,
        ),
      ],
    );
  }

  Future<void> _phoneCall(BuildContext context, String? number) async {
    final doMakeCallResult = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('هل تريد اجراء مكالمة الأن'),
        actions: [
          FilledButton.icon(
            icon: const Icon(Symbols.call),
            label: const Text('اجراء مكالمة الأن'),
            onPressed: () => Navigator.of(context).pop(true),
          ),
          FilledButton.tonalIcon(
            style: Theme.of(context).filledTonalButtonStyleWorkaround,
            icon: const Icon(Symbols.dialpad),
            label: const Text('نسخ في لوحة الاتصال فقط'),
            onPressed: () => Navigator.of(context).pop(false),
          ),
        ],
      ),
    );

    if (doMakeCallResult == null) return;

    if (doMakeCallResult) await Permission.phone.request();
    await LauncherService.I.launchCall(
      PhoneNumberService.I.formatInternational(number!),
    );

    if (!doMakeCallResult || !context.mounted) return;

    final recordLastCall = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('هل تريد تسجيل تاريخ هذه المكالمة؟'),
        actions: [
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('نعم'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('لا'),
          ),
        ],
      ),
    );

    if (recordLastCall != true) return;

    await DatabaseService.I.history.updatePersonLastCall(
      personId: person.id,
      lastCall: DateTime.now(),
    );

    scaffoldMessenger.showSnackBar(const SnackBar(content: Text('تم بنجاح')));
  }

  Future<void> _contactAdd(
    BuildContext context,
    String phone,
    Person person,
  ) async {
    if (!(await Permission.contacts.request()).isGranted) return;

    final nameController = TextEditingController(text: person.name);

    if (!context.mounted) return;

    final dialogResult = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('ادخل اسم جهة الاتصال:'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(controller: nameController),
            Container(height: 10),
            Text(phone),
          ],
        ),
        actions: [
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('حفظ جهة الاتصال'),
          ),
        ],
      ),
    );

    if (dialogResult != true) return;

    final imageFile = person.hasImage
        ? await ImageUrlCacheService.I.getImageFile(person.imageInfo)
        : null;

    await ContactsService.I.insertContact(
      contacts.Contact(
        name: contacts.Name(first: nameController.text),
        photo: imageFile != null && imageFile.lengthSync() <= 100 * 1024 * 1024
            ? contacts.Photo(fullSize: await imageFile.readAsBytes())
            : null,
        phones: [contacts.Phone(number: phone)],
      ),
    );
  }
}
