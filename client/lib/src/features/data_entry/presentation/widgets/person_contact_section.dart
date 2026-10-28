import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_contacts/flutter_contacts.dart' as contacts;
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:permission_handler/permission_handler.dart';

class PersonContactSection extends StatelessWidget {
  static const int _maxDeviceContactPhotoBytes = 100 * 1024 * 1024;

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
        PhoneBookCard(
          owner: person,
          own: person.contacts,
          family: person.visibleFamilyContacts,
          onCall: (n, {required isFamilyNumber}) =>
              _phoneCall(context, n, isFamilyNumber: isFamilyNumber),
          onAddToContacts: (n) => _contactAdd(context, n, person),
        ),
        CopiablePropertyWidget(
          'العنوان والموقع',
          person.address?.toString(),
          onCopied: () => AnalyticsService.I.track(
            const EntityPropertyCopy(CopiedEntityProperty.address),
          ),
          additionalOptions: [
            if (person.geolocation != null)
              IconButton(
                icon: const Icon(Symbols.location_pin),
                onPressed: () {
                  AnalyticsService.I.track(EntityMapShow(person));
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ViewGeodataMap(
                        initialPerson: person,
                        initialGeomapOptions: GeomapOptions(),
                      ),
                    ),
                  );
                },
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

  Future<void> _phoneCall(
    BuildContext context,
    String? number, {
    required bool isFamilyNumber,
  }) async {
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
    final callPromptChoice = switch (doMakeCallResult) {
      true => ContactCallPromptChoice.call,
      false => ContactCallPromptChoice.dialerOnly,
      _ => ContactCallPromptChoice.cancel,
    };

    await _maybeLaunchCall(number, callPromptChoice);
    final isRecordingAccepted =
        callPromptChoice == ContactCallPromptChoice.call && context.mounted
        ? await _askToRecordCallDate(context)
        : null;

    AnalyticsService.I.track(
      PhoneCallFinish(
        person,
        isFamilyNumber: isFamilyNumber,
        callPromptChoice: callPromptChoice,
        isRecordingAccepted: isRecordingAccepted,
      ),
    );
    if (isRecordingAccepted != true) return;

    await DatabaseService.I.history.updatePersonLastCall(
      personId: person.id,
      lastCall: DateTime.now(),
    );

    scaffoldMessenger.showSnackBar(const SnackBar(content: Text('تم بنجاح')));
  }

  Future<void> _maybeLaunchCall(
    String? number,
    ContactCallPromptChoice callPromptChoice,
  ) async {
    if (callPromptChoice == ContactCallPromptChoice.cancel) return;

    if (callPromptChoice == ContactCallPromptChoice.call) {
      await Permission.phone.request();
    }
    await LauncherService.I.launchCall(
      PhoneNumberService.I.formatInternational(number!),
    );
  }

  Future<bool> _askToRecordCallDate(BuildContext context) async {
    final recordLastCall = await showDialog(
      context: context,
      builder: (context) => const ConfirmationDialog(
        title: 'هل تريد تسجيل تاريخ هذه المكالمة؟',
        confirmLabel: 'تسجيل',
        cancelLabel: 'تخطي',
      ),
    );

    return recordLastCall == true;
  }

  Future<void> _contactAdd(
    BuildContext context,
    String phone,
    Person person,
  ) async {
    if (!(await Permission.contacts.request()).isGranted) {
      AnalyticsService.I.track(
        DeviceContactCreateAttempt(
          person,
          outcome: DeviceContactCreateOutcome.permissionDenied,
        ),
      );

      return;
    }

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

    if (dialogResult != true) {
      AnalyticsService.I.track(
        DeviceContactCreateAttempt(
          person,
          outcome: DeviceContactCreateOutcome.cancelled,
        ),
      );

      return;
    }

    final photo = await _maybeReadDeviceContactPhotoOf(person);
    final hasPhoto = photo != null;
    try {
      await ContactsService.I.insertContact(
        contacts.Contact(
          name: contacts.Name(first: nameController.text),
          photo: photo,
          phones: [contacts.Phone(number: phone)],
        ),
      );
    } on Exception {
      AnalyticsService.I.track(
        DeviceContactCreateAttempt(
          person,
          outcome: DeviceContactCreateOutcome.failed,
          hasPhoto: hasPhoto,
        ),
      );
      rethrow;
    }
    AnalyticsService.I.track(
      DeviceContactCreateAttempt(
        person,
        outcome: DeviceContactCreateOutcome.created,
        hasPhoto: hasPhoto,
      ),
    );
  }

  Future<contacts.Photo?> _maybeReadDeviceContactPhotoOf(Person person) async {
    if (!person.hasImage) return null;

    final imageFile = await ImageUrlCacheService.I.getImageFile(
      person.imageInfo,
    );
    if (imageFile.lengthSync() > _maxDeviceContactPhotoBytes) return null;

    return contacts.Photo(fullSize: await imageFile.readAsBytes());
  }
}
