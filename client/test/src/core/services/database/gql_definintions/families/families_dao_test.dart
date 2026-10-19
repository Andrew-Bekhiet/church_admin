import 'dart:async';
import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import '../../../../../fakes/fake_feature_flags_repo.dart';
import '../places/place_fixtures.dart';
import 'family_fixtures.dart';

void main() {
  final george = FamilyFixtures.georgeFamily;
  const boulos = FamilyFixtures.boulosFamily;
  const mark = FamilyFixtures.markFamily;
  const atef = FamilyFixtures.atefFamily;

  void useDataChecks({required bool enabled}) {
    resetGlobalProviderContainer();
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(
        FakeFeatureFlagsRepo(enableDataChecks: enabled),
      ),
    ]);
  }

  setUp(() => useDataChecks(enabled: true));
  tearDown(resetGlobalProviderContainer);

  List<Family> listedBy(
    PaginatableStreamBase<Family> Function(FamiliesDAO families) listing, {
    Iterable<Family>? rows,
  }) => FakeAshBackend.settledListing([
    FamilyFixtures.familiesTable(rows: rows),
  ], (db) => listing(db.families));

  Family? openedWith(Iterable<Family> rows, String id) => fakeAsync((async) {
    final backend = FakeAshBackend([
      FamilyFixtures.familiesTable(rows: rows),
    ]);
    final stream = backend.db.families.streamSingleById(id: id);
    Family? emitted;
    final subscription = stream.listen((family) => emitted = family);
    async.elapse(FakeAshBackend.settleTime);
    unawaited(subscription.cancel());
    backend.dispose();

    return emitted;
  });

  Future<void> withBackend(
    Future<void> Function(FakeAshBackend backend) body, {
    FakeAshTable? table,
  }) async {
    final backend = FakeAshBackend([table ?? FamilyFixtures.familiesTable()]);
    addTearDown(backend.dispose);

    await body(backend);
  }

  Json addressInputOf(Address address) => {
    'areaId': address.area?.id,
    'streetId': address.street?.id,
    'districtId': address.district?.id,
    'countryIsoCode': address.countryIsoCode,
    'substreetName': address.substreetName,
    'geolocation': address.geolocation?.toPostGISJson(),
    'storeyNumber': address.storeyNumber,
    'houseCode': address.houseCode,
    'apartmentNumber': address.apartmentNumber,
    'specialLandmark': address.specialLandmark,
  };

  Json sentInput(FakeAshBackend backend, String root) =>
      (backend.server.sentTo(root).single.variables['input'] as Map)
          .cast<String, dynamic>();

  group('listing', () {
    test('families are listed by name', () {
      expect(
        listedBy(
          (families) => families.streamAll(),
          rows: [george, mark, boulos],
        ),
        [boulos, george, mark],
      );
    });

    test('a listed family carries its data check', () {
      expect(
        listedBy(
          (families) => families.streamAll(),
          rows: [george],
        ).single.dataCheck,
        FamilyFixtures.completeCheck,
      );
    });

    test('a listed family has no data check when the feature is off', () {
      useDataChecks(enabled: false);

      expect(
        listedBy(
          (families) => families.streamAll(),
          rows: [george],
        ).single.dataCheck,
        isNull,
      );
    });

    test('searching lists only the families whose name contains the text', () {
      expect(
        listedBy(
          (families) => families.streamAll(
            searchQuery: Stream.value(boulos.name.substring(5)),
          ),
        ),
        [boulos],
      );
    });

    test('filtering by colour lists only the families of that colour', () {
      expect(
        listedBy(
          (families) => families.streamAll(
            where: Stream.value([
              Filter(FamilyFields().color, ColorOperator.eq, george.color),
            ]),
          ),
        ),
        [george],
      );
    });

    test('filtering by a parent lists the children of that family', () {
      expect(
        listedBy(
          (families) => families.streamAll(
            where: Stream.value([
              Filter(
                FamilyFields().parents.redirectTo(FamilyFields().id),
                PrimitiveOperator.eq,
                george.id,
              ),
            ]),
          ),
          rows: [
            george,
            boulos.copyWith(parents: [george]),
            mark,
          ],
        ),
        [boulos],
      );
    });

    test('families can be ordered by their last visit, newest first', () {
      final visited = LastRecordedByInfo(time: FamilyFixtures.visitedAt);
      final visitedLater = LastRecordedByInfo(
        time: FamilyFixtures.fatherVisitedAt,
      );
      final lastVisited = george.copyWith(lastVisit: visitedLater);
      final visitedBefore = boulos.copyWith(lastVisit: visited);

      expect(
        listedBy(
          (families) => families.streamAll(
            orderBy: Stream.value([
              OrderBy(
                field: FamilyFields().lastVisit.redirectTo(
                  LastRecordedByInfoFields().time,
                ),
                value: OrderByValue.desc,
              ),
            ]),
          ),
          rows: [visitedBefore, mark, lastVisited],
        ),
        [lastVisited, visitedBefore, mark],
      );
    });

    test('families can be ordered by the name of their area', () {
      final inShubra = FamilyFixtures.address.copyWith(
        area: PlaceFixtures.shubra,
      );
      final inAddress = george.copyWith(address: FamilyFixtures.address);
      final inShubraFamily = boulos.copyWith(address: inShubra);

      final listed = listedBy(
        (families) => families.streamAll(
          orderBy: Stream.value([
            OrderBy(
              field: FamilyFields().address.redirectTo(
                AddressFields().area.redirectTo(AreaFields().name),
              ),
            ),
          ]),
        ),
        rows: [mark, inShubraFamily, inAddress],
      );

      expect(
        listed.map((family) => family.id),
        [inAddress, inShubraFamily, mark].map((family) => family.id),
      );
    });

    test('the list with addresses carries address and marital status', () {
      final widowed = FamilyFixtures.georgeFamilyWithAddress;

      expect(
        listedBy(
          (families) => families.streamAllWithAddresses(),
          rows: [widowed, boulos],
        ),
        [boulos, widowed],
      );
    });

    test('the list follows the change feed', () {
      fakeAsync((async) {
        final table = FamilyFixtures.familiesTable(rows: [george, mark]);
        final backend = FakeAshBackend([table]);
        final stream = backend.db.families.streamAll();
        final emitted = <List<Family>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(FakeAshBackend.settleTime);

        table.add(const FamilyRow(boulos));
        backend.announce([
          EntityChange(type: 'Family', id: boulos.id, op: 'insert'),
        ]);
        async.elapse(FakeAshBackend.settleTime);

        expect(emitted.last, [boulos, george, mark]);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        backend.dispose();
      });
    });
  });

  group('opening a family', () {
    final details = FamilyFixtures.georgeFamilyDetails;

    test('shows its address, church, notes and who recorded what', () {
      final opened = openedWith([details], george.id);

      expect(opened, details.copyWith(contacts: opened!.contacts));
    });

    test('lists the phones of the family admins by role, main phone first', () {
      final opened = openedWith([details], george.id);

      expect(opened?.contacts, [
        const FamilyPhoneContact(
          contact: FamilyFixtures.fatherPhone,
          role: FamilyFixtures.father,
        ),
        const FamilyPhoneContact(
          contact: FamilyFixtures.motherPhone,
          role: FamilyFixtures.mother,
        ),
      ]);
    });

    test('leaves out the phones of members who are not family admins', () {
      final opened = openedWith([
        details.copyWith(
          contacts: [
            ...details.contacts,
            const FamilyPhoneContact(
              contact: FamilyFixtures.daughterPhone,
              role: FamilyFixtures.daughter,
              personId: 'person-1',
            ),
          ],
        ),
      ], george.id);

      expect(
        opened?.contacts.map((contact) => contact.contact),
        isNot(contains(FamilyFixtures.daughterPhone)),
      );
    });

    test('is empty for a family the server does not show', () {
      expect(openedWith([details], 'family-unknown'), isNull);
    });

    test('has no data check when the feature is off', () {
      useDataChecks(enabled: false);

      expect(openedWith([details], george.id)?.dataCheck, isNull);
    });

    test('reads its children and parents ordered by name', () {
      final family = george.copyWith(
        children: [mark, boulos],
        parents: [atef],
      );

      final read = fakeAsync((async) {
        final backend = FakeAshBackend([
          FamilyFixtures.familiesTable(rows: [family]),
        ]);
        Family? answered;
        unawaited(
          backend.db.families
              .getFamilyRelatedFamilies(familyId: family.id)
              .then((related) => answered = related),
        );
        async.flushMicrotasks();
        backend.dispose();

        return answered;
      });

      expect(read?.children, [boulos, mark]);
      expect(read?.parents, [atef]);
    });
  });

  group('writing', () {
    const draft = Family(
      id: 'draft-id',
      name: 'عائلة الأمل',
      color: Color(0xFFFF9800),
    );

    test('creating answers the family the server stored', () {
      return withBackend((backend) async {
        final answered = await backend.db.families.createObject(
          newObject: draft,
        );

        expect(answered, draft.copyWith(id: answered.id));
      });
    });

    test('creating sends the whole desired state', () {
      return withBackend((backend) async {
        final desired = FamilyFixtures.georgeFamilyDetails.copyWith(
          marriageDate: DateTime(2010, 5, 6),
          status: MartialStatus.married,
          deceasedSpouseName: null,
          parents: [boulos],
          children: [mark, atef],
        );

        await backend.db.families.createObject(newObject: desired);

        expect(backend.server.sentTo('createFamily').single.variables, {
          'input': {
            'name': desired.name,
            'notes': desired.notes,
            'color': colorToInt(desired.color),
            'status': desired.status.name,
            'deceasedSpouseName': null,
            'marriageDate': '2010-05-06',
            'churchId': FamilyFixtures.church.id,
            'address': addressInputOf(FamilyFixtures.address),
            'contacts': [
              for (final contact in desired.contacts)
                {
                  'phone': contact.contact.phone,
                  'personTypeId': contact.role.id,
                  'label': contact.contact.label,
                  'isMainPhone': contact.contact.isMainPhone,
                },
            ],
            'parents': [boulos.id],
            'children': [mark.id, atef.id],
            'lastVisit': desired.lastVisit!.time.toUtc().toIso8601String(),
            'lastFatherVisit': desired.lastFatherVisit!.time
                .toUtc()
                .toIso8601String(),
          },
        });
      });
    });

    test('a family without an address leaves the address out', () {
      return withBackend((backend) async {
        await backend.db.families.createObject(newObject: draft);

        expect(sentInput(backend, 'createFamily'), isNot(contains('address')));
      });
    });

    test('an address is sent without an id', () {
      return withBackend((backend) async {
        await backend.db.families.createObject(
          newObject: draft.copyWith(address: FamilyFixtures.address),
        );

        expect(
          sentInput(backend, 'createFamily')['address'],
          isNot(contains('id')),
        );
      });
    });

    test('phones the family does not own alone are not sent', () {
      return withBackend((backend) async {
        await backend.db.families.createObject(
          newObject: draft.copyWith(
            contacts: [
              const FamilyPhoneContact(
                contact: FamilyFixtures.fatherPhone,
                role: FamilyFixtures.father,
              ),
              const FamilyPhoneContact(
                contact: FamilyFixtures.motherPhone,
                role: FamilyFixtures.mother,
                personId: 'person-1',
              ),
            ],
          ),
        );

        expect(
          (sentInput(backend, 'createFamily')['contacts'] as List)
              .cast<Json>()
              .map((contact) => contact['phone']),
          [FamilyFixtures.fatherPhone.phone],
        );
      });
    });

    test('a phone is sent without the id the editor made up for it', () {
      return withBackend((backend) async {
        await backend.db.families.createObject(
          newObject: draft.copyWith(
            contacts: [
              const FamilyPhoneContact(
                contact: FamilyFixtures.fatherPhone,
                role: FamilyFixtures.father,
              ),
            ],
          ),
        );

        expect(
          (sentInput(backend, 'createFamily')['contacts'] as List).single,
          isNot(contains('id')),
        );
      });
    });

    test('a widowed family is sent with both widowhood fields as it holds', () {
      return withBackend((backend) async {
        final widowed = draft.copyWith(
          status: MartialStatus.widowed,
          deceasedSpouseName: 'جرجس',
          marriageDate: DateTime(2001, 2, 3),
        );

        await backend.db.families.createObject(newObject: widowed);

        expect(
          sentInput(backend, 'createFamily'),
          allOf(
            containsPair('status', MartialStatus.widowed.name),
            containsPair('deceasedSpouseName', widowed.deceasedSpouseName),
            containsPair('marriageDate', '2001-02-03'),
          ),
        );
      });
    });

    test('updating sends the whole desired state and answers the family', () {
      final table = FamilyFixtures.familiesTable(
        rows: [FamilyFixtures.georgeFamilyDetails],
      );

      return withBackend(table: table, (backend) async {
        final old = FamilyFixtures.georgeFamilyDetails.copyWith(
          children: [mark],
          parents: [],
        );
        final moved = old.copyWith(
          name: 'عائلة جرجس الجديدة',
          color: null,
          notes: null,
          church: null,
          status: MartialStatus.single,
          deceasedSpouseName: null,
          address: FamilyFixtures.address.copyWith(
            street: null,
            storeyNumber: null,
          ),
          contacts: [
            const FamilyPhoneContact(
              contact: FamilyFixtures.fatherPhone,
              role: FamilyFixtures.father,
            ),
          ],
          children: [],
          parents: [boulos],
          lastVisit: LastRecordedByInfo(time: DateTime(2026, 4, 5, 6, 7, 8)),
        );

        final answered = await backend.db.families.updateObject(
          newObject: moved,
          oldObject: old,
        );

        expect(answered?.name, moved.name);
        expect(backend.server.sentTo('updateFamily').single.variables, {
          'id': old.id,
          'input': {
            'name': moved.name,
            'notes': null,
            'color': null,
            'status': MartialStatus.single.name,
            'deceasedSpouseName': null,
            'marriageDate': null,
            'churchId': null,
            'address': addressInputOf(moved.address!),
            'contacts': [
              {
                'phone': FamilyFixtures.fatherPhone.phone,
                'personTypeId': FamilyFixtures.father.id,
                'label': null,
                'isMainPhone': FamilyFixtures.fatherPhone.isMainPhone,
              },
            ],
            'parents': [boulos.id],
            'children': <String>[],
            'lastVisit': moved.lastVisit!.time.toUtc().toIso8601String(),
            'lastFatherVisit': moved.lastFatherVisit!.time
                .toUtc()
                .toIso8601String(),
          },
        });
      });
    });

    test('the cleared address keys go out as nulls', () {
      return withBackend((backend) async {
        final located = george.copyWith(address: FamilyFixtures.address);

        await backend.db.families.updateObject(
          newObject: located.copyWith(
            address: located.address!.copyWith(street: null, houseCode: null),
          ),
          oldObject: located,
        );

        expect(
          sentInput(backend, 'updateFamily')['address'],
          allOf(
            containsPair('streetId', null),
            containsPair('houseCode', null),
          ),
        );
      });
    });

    test('children and parents nobody loaded are left out of the update', () {
      return withBackend((backend) async {
        await backend.db.families.updateObject(
          newObject: george.copyWith(name: 'عائلة جرجس الجديدة'),
          oldObject: george,
        );

        expect(
          sentInput(backend, 'updateFamily'),
          allOf(isNot(contains('children')), isNot(contains('parents'))),
        );
      });
    });

    test('children and parents emptied by the user are sent as empty', () {
      return withBackend((backend) async {
        await backend.db.families.updateObject(
          newObject: george.copyWith(children: [], parents: []),
          oldObject: george.copyWith(children: [mark], parents: [boulos]),
        );

        expect(
          sentInput(backend, 'updateFamily'),
          allOf(
            containsPair('children', <String>[]),
            containsPair('parents', <String>[]),
          ),
        );
      });
    });

    test('updateFamily is updateObject under the name the editor uses', () {
      return withBackend((backend) async {
        await backend.db.families.updateFamily(
          newFamily: george.copyWith(name: 'عائلة جرجس الجديدة'),
          oldFamily: george,
        );

        expect(backend.server.sentTo('updateFamily'), hasLength(1));
      });
    });

    test('deleting answers the removed family', () {
      final table = FamilyFixtures.familiesTable(rows: [george, boulos]);

      return withBackend(table: table, (backend) async {
        final removed = await backend.db.families.deleteById(id: george.id);

        expect(removed?.id, george.id);
        expect(table.rows.map((row) => row['id']), [boulos.id]);
      });
    });

    group('a rejected write throws the exception of its error code', () {
      final rejections = <String, TypeMatcher<BackendException>>{
        'forbidden': isA<BackendForbiddenException>(),
        'relation/not-found': isA<BackendRejectedException>(),
        'contact/not-owned': isA<BackendRejectedException>(),
        'contact/phone-taken': isA<BackendRejectedException>(),
        'contact/main-phone-taken': isA<BackendRejectedException>(),
        'address/street-outside-area': isA<BackendRejectedException>(),
        'validation/invalid': isA<BackendRejectedException>(),
        'not_found': isA<BackendNotFoundException>(),
      };

      for (final MapEntry(key: code, value: matcher) in rejections.entries) {
        test(code, () {
          return withBackend((backend) async {
            backend.server.nextMutationRejectionCode = code;

            await expectLater(
              backend.db.families.createObject(newObject: draft),
              throwsA(
                allOf(
                  matcher,
                  predicate<BackendException>((e) => e.code == code),
                ),
              ),
            );
          });
        });
      }
    });
  });
}
