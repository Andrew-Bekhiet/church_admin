import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_feature_flags_repo.dart';
import 'person_fixtures.dart';

void main() {
  final mina = PersonFixtures.mina;
  const fatherPhone = PersonFixtures.fatherPhone;
  const otherFatherPhone = PersonFixtures.otherFatherPhone;
  const typedFatherPhone = FamilyPhoneContact(
    contact: PhoneContact(id: 'made-up-by-the-editor', phone: '+201004444444'),
    role: PersonFixtures.father,
  );
  const address = Address(houseCode: '12', storeyNumber: 3);

  setUp(
    () => initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]),
  );
  tearDown(resetGlobalProviderContainer);

  Future<FakeAshBackend> backendWith({
    List<FamilyContactRow> unclaimedContacts = const [],
  }) async {
    final persons = PersonFixtures.personsTable(rows: [PersonRow(mina)]);
    final backend = FakeAshBackend(
      [persons, PersonFixtures.familyContactsTable(rows: unclaimedContacts)],
      mutations: {
        'recordPersonSpiritualDays': (variables) =>
            persons.rows.firstWhere((row) => row['id'] == variables['id']),
      },
    );
    addTearDown(backend.dispose);

    return backend;
  }

  Json sentInput(FakeAshBackend backend, String root) =>
      (backend.server.sentTo(root).single.variables['input'] as Map)
          .cast<String, dynamic>();

  Json familyContactInput(FamilyPhoneContact relative, {String? id}) => {
    'phone': relative.contact.phone,
    'isMainPhone': relative.contact.isMainPhone,
    'personTypeId': relative.role.id,
    'id': ?id,
  };

  group('creating', () {
    test('answers the person the server stored', () async {
      final backend = await backendWith();
      final draft = Person(id: '', name: 'كيرلس جرجس', family: mina.family);

      final answered = await backend.db.persons.createObject(newObject: draft);

      expect(answered.name, draft.name);
    });

    test('sends the memberships, contacts and latest records', () async {
      final backend = await backendWith();
      final draft = mina.copyWith(
        id: '',
        familyContacts: [],
        lastConfession: LastRecordedByInfo(time: PersonFixtures.confessionDay),
      );

      await backend.db.persons.createObject(newObject: draft);

      expect(
        sentInput(backend, 'createPerson'),
        allOf(
          containsPair('services', [PersonFixtures.primary.id]),
          containsPair('groups', [PersonFixtures.choir.id]),
          containsPair('tags', [PersonFixtures.active.id]),
          containsPair('hobbies', [PersonFixtures.drawing.id]),
          containsPair('familyId', mina.family?.id),
        ),
      );
      expect(
        sentInput(backend, 'createPerson'),
        allOf(
          containsPair('studyYearId', mina.studyYear?.order),
          containsPair(
            'lastConfession',
            dateToString(PersonFixtures.confessionDay),
          ),
          containsPair('contacts', [
            {
              'phone': PersonFixtures.minaPhone.phone,
              'isMainPhone': PersonFixtures.minaPhone.isMainPhone,
            },
          ]),
        ),
      );
    });

    test(
      'a person without a family sends the address and numbers of the '
      'family the server creates for it',
      () async {
        final backend = await backendWith();
        final draft = Person(
          id: '',
          name: 'كيرلس جرجس',
          address: address,
          familyContacts: const [typedFatherPhone],
        );

        await backend.db.persons.createObject(newObject: draft);

        expect(
          sentInput(backend, 'createPerson'),
          allOf(
            isNot(contains('familyId')),
            containsPair('address', address.toAddressInput().toJson()),
            containsPair('familyContacts', [
              familyContactInput(typedFatherPhone),
            ]),
          ),
        );
      },
    );

    test(
      "numbers typed for an existing family keep that family's other numbers",
      () async {
        final backend = await backendWith(
          unclaimedContacts: [
            FamilyContactRow(
              fatherPhone,
              familyId: PersonFixtures.gergesFamily.id,
            ),
          ],
        );
        final draft = Person(
          id: '',
          name: 'كيرلس جرجس',
          family: PersonFixtures.gergesFamily,
          familyContacts: const [typedFatherPhone],
        );

        await backend.db.persons.createObject(newObject: draft);

        expect(sentInput(backend, 'createPerson')['familyContacts'], [
          familyContactInput(fatherPhone, id: fatherPhone.contact.id),
          familyContactInput(typedFatherPhone),
        ]);
      },
    );
  });

  group('updating', () {
    test('sends the whole desired state, clearing what was removed', () async {
      final backend = await backendWith();

      await backend.db.persons.updateObject(
        oldObject: mina,
        newObject: mina.copyWith(notes: null, tags: [], studyYear: null),
      );

      expect(
        sentInput(backend, 'updatePerson'),
        allOf(
          containsPair('notes', null),
          containsPair('studyYearId', null),
          containsPair('tags', <String>[]),
          containsPair('services', [PersonFixtures.primary.id]),
        ),
      );
    });

    test('keeps the ids of saved numbers and drops made-up ones', () async {
      final backend = await backendWith();
      const typed = PhoneContact(id: 'made-up', phone: '+201005555555');

      await backend.db.persons.updateObject(
        oldObject: mina,
        newObject: mina.copyWith(
          contacts: [PersonFixtures.minaPhone, typed],
        ),
      );

      expect(sentInput(backend, 'updatePerson')['contacts'], [
        {
          'phone': PersonFixtures.minaPhone.phone,
          'isMainPhone': true,
          'id': PersonFixtures.minaPhone.id,
        },
        {'phone': typed.phone, 'isMainPhone': false},
      ]);
    });

    test("unedited family numbers leave the family's numbers alone", () async {
      final backend = await backendWith();

      await backend.db.persons.updateObject(
        oldObject: mina,
        newObject: mina.copyWith(name: 'مينا جرجس حنا'),
      );

      expect(
        sentInput(backend, 'updatePerson'),
        isNot(contains('familyContacts')),
      );
    });

    test(
      'a family admin leaves the family numbers hidden from them alone',
      () async {
        final backend = await backendWith();
        final admin = mina.copyWith(personType: PersonFixtures.father);

        await backend.db.persons.updateObject(
          oldObject: admin,
          newObject: admin.copyWith(familyContacts: []),
        );

        expect(
          sentInput(backend, 'updatePerson'),
          isNot(contains('familyContacts')),
        );
      },
    );

    test(
      "editing the family's numbers keeps those the editor did not show",
      () async {
        final backend = await backendWith(
          unclaimedContacts: [
            FamilyContactRow(
              fatherPhone,
              familyId: PersonFixtures.gergesFamily.id,
            ),
            FamilyContactRow(
              otherFatherPhone,
              familyId: PersonFixtures.gergesFamily.id,
            ),
          ],
        );

        await backend.db.persons.updateObject(
          oldObject: mina,
          newObject: mina.copyWith(familyContacts: [typedFatherPhone]),
        );

        expect(sentInput(backend, 'updatePerson')['familyContacts'], [
          familyContactInput(otherFatherPhone, id: otherFatherPhone.contact.id),
          familyContactInput(typedFatherPhone),
        ]);
      },
    );

    test(
      'moving to another family adds the typed numbers to that family',
      () async {
        final backend = await backendWith(
          unclaimedContacts: [
            FamilyContactRow(
              otherFatherPhone,
              familyId: PersonFixtures.hannaFamily.id,
            ),
          ],
        );

        await backend.db.persons.updateObject(
          oldObject: mina,
          newObject: mina.copyWith(
            family: PersonFixtures.hannaFamily,
            familyContacts: [typedFatherPhone],
            address: address,
          ),
        );

        expect(
          sentInput(backend, 'updatePerson'),
          allOf(
            containsPair('familyId', PersonFixtures.hannaFamily.id),
            isNot(contains('address')),
            containsPair('familyContacts', [
              familyContactInput(
                otherFatherPhone,
                id: otherFatherPhone.contact.id,
              ),
              familyContactInput(typedFatherPhone),
            ]),
          ),
        );
      },
    );

    test('an edited address of the same family is sent', () async {
      final backend = await backendWith();

      await backend.db.persons.updateObject(
        oldObject: mina,
        newObject: mina.copyWith(address: address),
      );

      expect(
        sentInput(backend, 'updatePerson')['address'],
        address.toAddressInput().toJson(),
      );
    });
  });

  test('recording spiritual days sends both days', () async {
    final backend = await backendWith();

    await backend.db.persons.updatePersonSpiritData(
      personId: mina.id,
      lastConfession: PersonFixtures.confessionDay,
      lastKodas: PersonFixtures.kodasDay,
    );

    expect(
      backend.server.sentTo('recordPersonSpiritualDays').single.variables,
      {
        'id': mina.id,
        'input': {
          'confessionDay': dateToString(PersonFixtures.confessionDay),
          'kodasDay': dateToString(PersonFixtures.kodasDay),
        },
      },
    );
  });

  group('a rejected write throws the exception of its error code', () {
    final rejections = <String, TypeMatcher<BackendException>>{
      'person/container-required': isA<BackendRejectedException>(),
      'person/study-year-outside-service': isA<BackendRejectedException>(),
      'person/group-outside-service': isA<BackendRejectedException>(),
      'person/user-link-not-permitted': isA<BackendRejectedException>(),
      'contact/not-owned': isA<BackendRejectedException>(),
      'contact/phone-taken': isA<BackendRejectedException>(),
      'contact/main-phone-taken': isA<BackendRejectedException>(),
      'relation/not-found': isA<BackendRejectedException>(),
      'user/name-taken': isA<BackendRejectedException>(),
      'validation/invalid': isA<BackendRejectedException>(),
      'forbidden': isA<BackendForbiddenException>(),
    };

    for (final MapEntry(key: code, value: matcher) in rejections.entries) {
      test(code, () async {
        final backend = await backendWith();
        backend.server.nextMutationRejectionCode = code;

        await expectLater(
          backend.db.persons.updateObject(
            oldObject: mina,
            newObject: mina.copyWith(name: 'مينا'),
          ),
          throwsA(
            allOf(matcher, predicate<BackendException>((e) => e.code == code)),
          ),
        );
      });
    }
  });
}
