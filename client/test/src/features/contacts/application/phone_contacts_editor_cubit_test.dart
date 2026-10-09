import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../utils.dart';

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

  PhoneContactsEditorCubit cubitFor({
    List<PhoneContact> own = const [ownMain, ownWork],
    List<FamilyPhoneContact> family = const [fatherNumber],
    bool hasFamily = true,
  }) => PhoneContactsEditorCubit(
    own: own,
    family: family,
    hasFamily: hasFamily,
    fetchFamilyRoles: () async => [father, mother],
    newKey: () => 'new-${nextKey++}',
  );

  setUp(() => nextKey = 0);
  tearDown(defaultTearDown);

  PhoneContactDraft draftOf(PhoneContactsEditorCubit cubit, String key) =>
      cubit.state.drafts.firstWhere((d) => d.key == key);

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    "the person's own numbers are listed before their family's",
    build: cubitFor,
    verify: (cubit) => expect(cubit.state.drafts.map((d) => (d.key, d.label)), [
      ('own-main', const FreePhoneContactLabel(null)),
      ('own-work', const FreePhoneContactLabel('عمل')),
      ('father-number', const RolePhoneContactLabel(father)),
    ]),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    'the family roles become available once fetched',
    build: cubitFor,
    act: (_) => pumpEventQueue(),
    verify: (cubit) => expect(cubit.state.familyRoles, [father, mother]),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    'untouched numbers are handed back unchanged',
    build: cubitFor,
    verify: (cubit) {
      expect(cubit.state.ownContacts, [ownMain, ownWork]);
      expect(cubit.state.familyContacts, [fatherNumber]);
    },
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    'the first own number added becomes the main number',
    build: () => cubitFor(own: [], family: []),
    act: (cubit) => cubit.add(const FreePhoneContactLabel(null)),
    verify: (cubit) => expect(cubit.state.drafts.single.isMainPhone, isTrue),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    'marking a number as main unmarks the previous main',
    build: cubitFor,
    act: (cubit) => cubit.toggleMain('own-work'),
    verify: (cubit) =>
        expect(cubit.state.ownContacts.map((c) => (c.id, c.isMainPhone)), [
          ('own-main', false),
          ('own-work', true),
        ]),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    'a family number cannot be marked as main',
    build: cubitFor,
    act: (cubit) => cubit.toggleMain('father-number'),
    verify: (cubit) =>
        expect(draftOf(cubit, 'father-number').isMainPhone, isFalse),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    'labelling the main number with a role unmarks it',
    build: cubitFor,
    act: (cubit) =>
        cubit.changeLabel('own-main', const RolePhoneContactLabel(mother)),
    verify: (cubit) => expect(draftOf(cubit, 'own-main').isMainPhone, isFalse),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    'a typed number that is not a phone number is invalid',
    build: cubitFor,
    act: (cubit) => cubit.changeInput('own-work', '12'),
    verify: (cubit) => expect(
      cubit.state.errors['own-work'],
      PhoneContactDraftError.invalidPhone,
    ),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    'an empty new number is left out instead of being invalid',
    build: cubitFor,
    act: (cubit) => cubit.add(const FreePhoneContactLabel(null)),
    verify: (cubit) {
      expect(cubit.state.errors, isEmpty);
      expect(cubit.state.ownContacts, [ownMain, ownWork]);
    },
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    'a typed local number is handed back in E.164',
    build: cubitFor,
    act: (cubit) => cubit.changeInput('own-work', '01004444444'),
    verify: (cubit) =>
        expect(cubit.state.ownContacts.last.phone, '+201004444444'),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    'the same number twice on the person is a duplicate',
    build: cubitFor,
    act: (cubit) => cubit
      ..add(const FreePhoneContactLabel(null))
      ..changeInput('new-0', '01001111111'),
    verify: (cubit) => expect(
      cubit.state.errors['new-0'],
      PhoneContactDraftError.duplicatePhone,
    ),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    'a role number needs somewhere for the family to come from',
    build: () => cubitFor(own: [], family: [], hasFamily: false),
    act: (cubit) => cubit
      ..add(const RolePhoneContactLabel(father))
      ..changeInput('new-0', '01003333333'),
    verify: (cubit) => expect(
      cubit.state.errors['new-0'],
      PhoneContactDraftError.roleNeedsFamily,
    ),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    'choosing a family makes the role numbers valid',
    build: () => cubitFor(own: [], family: [], hasFamily: false),
    act: (cubit) => cubit
      ..add(const RolePhoneContactLabel(father))
      ..changeInput('new-0', '01003333333')
      ..changeFamilyAvailability(hasFamily: true),
    verify: (cubit) => expect(cubit.state.errors, isEmpty),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    'a new role number is handed back for that role',
    build: () => cubitFor(own: [], family: []),
    act: (cubit) => cubit
      ..add(const RolePhoneContactLabel(mother))
      ..changeInput('new-0', '01005555555'),
    verify: (cubit) => expect(cubit.state.familyContacts, const [
      FamilyPhoneContact(
        contact: PhoneContact(id: 'new-0', phone: '+201005555555'),
        role: mother,
      ),
    ]),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    "editing a family number keeps the relative it belongs to and its main "
    'flag',
    build: cubitFor,
    act: (cubit) => cubit.changeInput('father-number', '01007777777'),
    verify: (cubit) => expect(cubit.state.familyContacts, [
      fatherNumber.copyWith(
        contact: fatherNumber.contact.copyWith(phone: '+201007777777'),
      ),
    ]),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    "moving to another family hides the old family's numbers and keeps the "
    'typed ones',
    build: cubitFor,
    act: (cubit) => cubit
      ..add(const RolePhoneContactLabel(mother))
      ..changeFamily(saved: const [], hasFamily: true),
    verify: (cubit) => expect(cubit.state.drafts.map((d) => d.key), [
      'own-main',
      'own-work',
      'new-0',
    ]),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    "returning to the saved family brings its numbers back",
    build: cubitFor,
    act: (cubit) => cubit
      ..changeFamily(saved: const [], hasFamily: true)
      ..changeFamily(saved: const [fatherNumber], hasFamily: true),
    verify: (cubit) => expect(cubit.state.familyContacts, [fatherNumber]),
  );

  blocTest<PhoneContactsEditorCubit, PhoneContactsEditorState>(
    'numbers imported from a device contact keep their labels',
    build: cubitFor,
    act: (cubit) =>
        cubit.importNumbers([(label: 'موبايل', number: '01007777777')]),
    verify: (cubit) => expect(
      cubit.state.ownContacts.last,
      const PhoneContact(
        id: 'new-0',
        phone: '+201007777777',
        label: 'موبايل',
      ),
    ),
  );
}
