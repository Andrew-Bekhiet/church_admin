import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import '../../../../../fakes/fake_feature_flags_repo.dart';
import 'person_fixtures.dart';

void main() {
  final mina = PersonFixtures.mina;
  final beshoy = PersonFixtures.beshoy;
  final abanoub = PersonFixtures.abanoub;

  setUp(
    () => initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]),
  );
  tearDown(resetGlobalProviderContainer);

  List<String> listedIds(
    PaginatableStreamBase<Person> Function(PersonsDAO persons) listing, {
    FakeAshTable? table,
  }) => FakeAshBackend.settledListing([
    table ?? PersonFixtures.personsTable(),
  ], (db) => listing(db.persons)).map((person) => person.id).toList();

  Person? opened(FakeAshTable table, String id) => fakeAsync((async) {
    final backend = FakeAshBackend([table]);
    Person? emitted;
    final subscription = backend.db.persons
        .streamSingleById(id: id)
        .listen((person) => emitted = person);
    async.elapse(FakeAshBackend.settleTime);
    unawaited(subscription.cancel());
    backend.dispose();

    return emitted;
  });

  group('listing', () {
    test('persons are listed by name', () {
      expect(listedIds((persons) => persons.streamAll()), [
        abanoub.id,
        beshoy.id,
        mina.id,
      ]);
    });

    test('searching lists only the persons whose name contains the text', () {
      expect(
        listedIds(
          (persons) => persons.streamAll(searchQuery: Stream.value('جرجس')),
        ),
        [abanoub.id, mina.id],
      );
    });

    test('filtering by gender lists only the persons of that gender', () {
      expect(
        listedIds(
          (persons) => persons.streamAll(
            where: Stream.value([
              Filter(PersonFields().gender, BooleanOperator.is$, false),
            ]),
          ),
        ),
        [beshoy.id],
      );
    });

    test('filtering by service lists only the persons it serves', () {
      expect(
        listedIds(
          (persons) => persons.streamAll(
            where: Stream.value([
              Filter(PersonFields().services, MultiSelectOperator.anyOf, [
                PersonFixtures.primary,
              ]),
            ]),
          ),
        ),
        [mina.id],
      );
    });

    test('sorting by study year lists the lower years first', () {
      expect(
        listedIds(
          (persons) => persons.streamAll(
            orderBy: Stream.value([
              OrderBy(field: PersonFields().studyYear),
              OrderBy(field: PersonFields().name),
            ]),
          ),
        ),
        [abanoub.id, beshoy.id, mina.id],
      );
    });

    test('searching by phone finds the person and the family it reaches', () {
      final table = PersonFixtures.personsTable(
        rows: [
          PersonRow(
            mina,
            serverFields: {
              'searchablePhones': [
                {'phone': PersonFixtures.minaPhone.phone},
              ],
            },
          ),
          PersonRow(
            beshoy,
            serverFields: {
              'searchablePhones': [
                {'phone': PersonFixtures.otherFatherPhone.contact.phone},
              ],
            },
          ),
        ],
      );

      expect(
        listedIds(
          table: table,
          (persons) => persons.streamAll(
            where: Stream.value([
              Filter(
                PersonFields().mainPhone,
                PhoneOperator.contains,
                '0${PersonFixtures.minaPhone.phone.substring(3)}',
              ),
            ]),
          ),
        ),
        [mina.id],
      );
    });

    test('the list follows the change feed', () {
      fakeAsync((async) {
        final table = PersonFixtures.personsTable(rows: [PersonRow(mina)]);
        final backend = FakeAshBackend([table]);
        final stream = backend.db.persons.streamAll();
        final emitted = <List<Person>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(FakeAshBackend.settleTime);

        table.add(PersonRow(abanoub));
        backend.announce([
          EntityChange(type: 'Person', id: abanoub.id, op: 'insert'),
        ]);
        async.elapse(FakeAshBackend.settleTime);

        expect(emitted.last.map((p) => p.id), [abanoub.id, mina.id]);
        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        backend.dispose();
      });
    });
  });

  group('opening a person', () {
    test('shows the latest records the server keeps for it', () {
      final confession = LastRecordedByInfo(
        time: PersonFixtures.confessionDay,
      );
      final kodas = LastRecordedByInfo(time: PersonFixtures.kodasDay);
      final recorded = mina.copyWith(
        lastConfession: confession,
        lastKodas: kodas,
      );

      final person = opened(
        PersonFixtures.personsTable(rows: [PersonRow(recorded)]),
        mina.id,
      );

      expect(
        (person?.lastConfession?.time, person?.lastKodas?.time),
        (confession.time, kodas.time),
      );
    });

    test('shows its services, groups, tags and hobbies', () {
      final person = opened(
        PersonFixtures.personsTable(rows: [PersonRow(mina)]),
        mina.id,
      );

      List<String>? idsOf(List<ID>? objects) =>
          objects?.map((object) => object.id).toList();

      expect(
        [
          person?.services,
          person?.groups,
          person?.tags,
          person?.hobbies,
        ].map(idsOf),
        [mina.services, mina.groups, mina.tags, mina.hobbies].map(idsOf),
      );
    });

    test("shows its family's numbers but not its own claimed ones", () {
      const ownClaimed = FamilyPhoneContact(
        contact: PhoneContact(id: 'contact-9', phone: '+201009999999'),
        role: PersonFixtures.father,
        personId: 'person-1',
      );
      final person = opened(
        PersonFixtures.personsTable(
          rows: [
            PersonRow(
              mina.copyWith(
                familyContacts: [PersonFixtures.fatherPhone, ownClaimed],
              ),
            ),
          ],
        ),
        mina.id,
      );

      expect(person?.familyContacts, [PersonFixtures.fatherPhone]);
    });
  });
}
