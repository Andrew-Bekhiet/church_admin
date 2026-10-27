import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const father = PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true);
  const mother = PersonType(id: 'mother', name: 'الأم', isFamilyAdmin: true);

  const ownMain = PhoneContact(
    id: 'own-main',
    phone: '+201001111111',
    isMainPhone: true,
  );
  const ownWork = PhoneContact(
    id: 'own-work',
    phone: '+201002222222',
    label: 'عمل',
  );
  const legacyNumber = PhoneContact(id: 'legacy', phone: '0100');
  const fatherNumber = FamilyPhoneContact(
    contact: PhoneContact(
      id: 'father-number',
      phone: '+201003333333',
      isMainPhone: true,
    ),
    role: father,
    personId: 'the-father',
  );

  var nextKey = 0;
  var canHaveFamilyNumbers = true;

  PhoneContactsFormController formFor({
    List<PhoneContact> own = const [ownMain, ownWork],
    List<FamilyPhoneContact> family = const [fatherNumber],
  }) {
    final form = PhoneContactsFormController(
      own: own,
      family: family,
      canHaveFamilyNumbers: () => canHaveFamilyNumbers,
      newKey: () => 'new-${nextKey++}',
    )..setValidationMode(ValidationMode.onUserInteraction);
    addTearDown(form.dispose);

    return form;
  }

  PhoneContactFormController contactOf(
    PhoneContactsFormController form,
    String key,
  ) => form.contacts.fieldValue.firstWhere((contact) => contact.key == key);

  setUp(() {
    nextKey = 0;
    canHaveFamilyNumbers = true;
  });

  test("the person's own numbers are listed before their family's", () {
    final form = formFor();

    expect(
      form.contacts.fieldValue.map(
        (contact) => (contact.key, contact.label.fieldValue),
      ),
      [
        ('own-main', const FreePhoneContactLabel(null)),
        ('own-work', const FreePhoneContactLabel('عمل')),
        ('father-number', const RolePhoneContactLabel(father)),
      ],
    );
  });

  test('untouched numbers are handed back unchanged', () {
    final form = formFor();

    expect(form.ownContacts, [ownMain, ownWork]);
    expect(form.familyContacts, [fatherNumber]);
  });

  test('the first own number added becomes the main number', () {
    final form = formFor(own: [], family: [])
      ..add(const FreePhoneContactLabel(null));

    expect(form.contacts.fieldValue.single.isMainPhone.fieldValue, isTrue);
  });

  test('marking a number as main unmarks the previous main', () {
    final form = formFor();

    form.toggleMain(contactOf(form, 'own-work'));

    expect(
      form.ownContacts.map((contact) => (contact.id, contact.isMainPhone)),
      [
        ('own-main', false),
        ('own-work', true),
      ],
    );
  });

  test('a family number cannot be marked as main', () {
    final form = formFor();
    final familyContact = contactOf(form, 'father-number');

    form.toggleMain(familyContact);

    expect(familyContact.isMainPhone.fieldValue, isFalse);
  });

  test('labelling the main number with a role unmarks it', () {
    final form = formFor();
    final mainContact = contactOf(form, 'own-main');

    form.changeLabel(mainContact, const RolePhoneContactLabel(mother));

    expect(mainContact.isMainPhone.fieldValue, isFalse);
  });

  test('a typed number that is not a phone number is invalid', () {
    final form = formFor();
    final workContact = contactOf(form, 'own-work');

    workContact.phone.setValue('12');

    expect(workContact.phone.error, PhoneContactError.invalidPhone);
  });

  test(
    'an untouched stored number that no longer parses is handed back unchanged and is valid',
    () async {
      final form = formFor(own: [legacyNumber], family: []);

      expect(await form.validate(), isTrue);
      expect(form.ownContacts, [legacyNumber]);
    },
  );

  test(
    'editing a stored number that no longer parses validates the new text',
    () {
      final form = formFor(own: [legacyNumber], family: []);
      final legacyContact = contactOf(form, legacyNumber.id);

      legacyContact.phone.setValue('12');

      expect(legacyContact.phone.error, PhoneContactError.invalidPhone);
    },
  );

  test('an empty new number is left out instead of being invalid', () async {
    final form = formFor()..add(const FreePhoneContactLabel(null));
    await form.validate();

    expect(form.value.validationErrors, isEmpty);
    expect(form.ownContacts, [ownMain, ownWork]);
  });

  test('a typed local number is handed back in E.164', () {
    final form = formFor();

    contactOf(form, 'own-work').phone.setValue('01004444444');

    expect(form.ownContacts.last.phone, '+201004444444');
  });

  test('the same number twice on the person is a duplicate', () {
    final form = formFor()..add(const FreePhoneContactLabel(null));
    final addedContact = contactOf(form, 'new-0');

    addedContact.phone.setValue('01001111111');

    expect(addedContact.phone.error, PhoneContactError.duplicatePhone);
  });

  test('a role number needs somewhere for the family to come from', () {
    canHaveFamilyNumbers = false;
    final form = formFor(own: [], family: [])
      ..add(const RolePhoneContactLabel(father));
    final addedContact = contactOf(form, 'new-0');

    addedContact.phone.setValue('01003333333');

    expect(addedContact.phone.error, PhoneContactError.roleNeedsFamily);
  });

  test('choosing a family makes the role numbers valid', () {
    canHaveFamilyNumbers = false;
    final form = formFor(own: [], family: [])
      ..add(const RolePhoneContactLabel(father));
    contactOf(form, 'new-0').phone.setValue('01003333333');

    canHaveFamilyNumbers = true;
    form.revalidateSync();

    expect(form.value.validationErrors, isEmpty);
  });

  test('removing a duplicate clears the error on its twin', () async {
    final form = formFor(own: [ownMain], family: [])
      ..importNumbers([(label: 'موبايل', number: '01001111111')]);
    await form.validate();
    final twin = contactOf(form, 'new-0');
    expect(twin.phone.error, PhoneContactError.duplicatePhone);

    form.remove(contactOf(form, ownMain.id));

    expect(twin.phone.error, isNull);
  });

  test(
    'choosing a family clears the role error on a number shown before',
    () async {
      canHaveFamilyNumbers = false;
      final form = formFor(own: [], family: [fatherNumber]);
      await form.validate();
      final familyContact = contactOf(form, fatherNumber.contact.id);
      expect(familyContact.phone.error, PhoneContactError.roleNeedsFamily);

      canHaveFamilyNumbers = true;
      form.revalidateAfterFamilyAvailabilityChanged();

      expect(familyContact.phone.error, isNull);
    },
  );

  test(
    'relabelling a stored number to a role without a family shows the error '
    'at once',
    () {
      canHaveFamilyNumbers = false;
      final form = formFor();
      final workContact = contactOf(form, ownWork.id);

      form.changeLabel(workContact, const RolePhoneContactLabel(father));

      expect(workContact.phone.error, PhoneContactError.roleNeedsFamily);
    },
  );

  test('a blank new number shows no error', () {
    canHaveFamilyNumbers = false;
    final form = formFor(own: [], family: [])
      ..add(const FreePhoneContactLabel(null));
    final blankContact = contactOf(form, 'new-0');

    form.changeLabel(blankContact, const RolePhoneContactLabel(father));

    expect(blankContact.phone.error, isNull);
  });

  test('a new role number is handed back for that role', () {
    final form = formFor(own: [], family: [])
      ..add(const RolePhoneContactLabel(mother));

    contactOf(form, 'new-0').phone.setValue('01005555555');

    expect(form.familyContacts, const [
      FamilyPhoneContact(
        contact: PhoneContact(id: 'new-0', phone: '+201005555555'),
        role: mother,
      ),
    ]);
  });

  test(
    'editing a family number keeps the relative it belongs to and its main '
    'flag',
    () {
      final form = formFor();

      contactOf(form, 'father-number').phone.setValue('01007777777');

      expect(form.familyContacts, [
        fatherNumber.copyWith(
          contact: fatherNumber.contact.copyWith(phone: '+201007777777'),
        ),
      ]);
    },
  );

  test(
    "moving to another family hides the old family's numbers and keeps the "
    'typed ones',
    () {
      final form = formFor()
        ..add(const RolePhoneContactLabel(mother))
        ..followFamily(saved: const []);

      expect(form.contacts.fieldValue.map((contact) => contact.key), [
        'own-main',
        'own-work',
        'new-0',
      ]);
    },
  );

  test('returning to the saved family brings its numbers back', () {
    final form = formFor()
      ..followFamily(saved: const [])
      ..followFamily(saved: const [fatherNumber]);

    expect(form.familyContacts, [fatherNumber]);
  });

  test(
    'returning to a family after removing one of its numbers shows the saved '
    'number again',
    () {
      final form = formFor(own: [], family: [fatherNumber]);
      form.remove(contactOf(form, fatherNumber.contact.id));
      form
        ..followFamily(saved: const [])
        ..followFamily(saved: const [fatherNumber]);

      expect(form.familyContacts, [fatherNumber]);
    },
  );

  test('numbers imported from a device contact keep their labels', () {
    final form = formFor()
      ..importNumbers([(label: 'موبايل', number: '01007777777')]);

    expect(
      form.ownContacts.last,
      const PhoneContact(
        id: 'new-0',
        phone: '+201007777777',
        label: 'موبايل',
      ),
    );
  });

  test('removing a number leaves it out of what is handed back', () {
    final form = formFor();

    form.remove(contactOf(form, 'own-work'));

    expect(form.ownContacts, [ownMain]);
  });

  test('a form nobody has touched is unmodified', () {
    final form = formFor();

    expect(form.value.wasModified, isFalse);
  });

  test('adding a phone contact makes the form modified', () {
    final form = formFor()..add(const FreePhoneContactLabel(null));

    expect(form.value.wasModified, isTrue);
  });

  test('removing the added phone contact again leaves it unmodified', () {
    final form = formFor()..add(const FreePhoneContactLabel(null));

    form.remove(contactOf(form, 'new-0'));

    expect(form.value.wasModified, isFalse);
  });

  test('typing into a saved number makes the form modified', () {
    final form = formFor();

    contactOf(form, 'own-work').phone.setValue('01004444444');

    expect(form.value.wasModified, isTrue);
  });

  test('returning to the saved family leaves the form unmodified', () {
    final form = formFor()
      ..followFamily(saved: const [])
      ..followFamily(saved: const [fatherNumber]);

    expect(form.value.wasModified, isFalse);
  });
}
