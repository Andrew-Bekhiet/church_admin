import 'dart:async';
import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import '../../../../../fakes/fake_feature_flags_repo.dart';
import 'place_fixtures.dart';

void main() {
  const bookshop = PlaceFixtures.bookshop;
  const bakery = PlaceFixtures.bakery;
  const pharmacy = PlaceFixtures.pharmacy;
  const address = PlaceFixtures.bakeryAddress;

  setUp(
    () => initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]),
  );
  tearDown(resetGlobalProviderContainer);

  List<Store> listedBy(
    PaginatableStreamBase<Store> Function(StoresDAO stores) listing,
  ) => FakeAshBackend.settledListing([
    PlaceFixtures.storesTable(),
  ], (db) => listing(db.stores));

  Future<void> withBackend(
    Future<void> Function(FakeAshBackend backend) body, {
    FakeAshTable? table,
  }) async {
    final backend = FakeAshBackend([table ?? PlaceFixtures.storesTable()]);
    addTearDown(backend.dispose);

    await body(backend);
  }

  Json sentInput(FakeAshBackend backend, String root) =>
      (backend.server.sentTo(root).single.variables['input'] as Map)
          .cast<String, dynamic>();

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

  group('listing', () {
    test('stores are listed by name', () {
      expect(listedBy((stores) => stores.streamAll()), [
        pharmacy,
        bakery,
        bookshop,
      ]);
    });

    test('searching lists only the stores whose name contains the text', () {
      expect(
        listedBy(
          (stores) => stores.streamAll(
            searchQuery: Stream.value(bakery.name.substring(0, 4)),
          ),
        ),
        [bakery],
      );
    });

    test('filtering by colour lists only the stores of that colour', () {
      expect(
        listedBy(
          (stores) => stores.streamAll(
            where: Stream.value([
              Filter(StoreFields().color, ColorOperator.eq, bookshop.color),
            ]),
          ),
        ),
        [bookshop],
      );
    });

    test('the list follows the change feed', () {
      fakeAsync((async) {
        final table = PlaceFixtures.storesTable(rows: [bookshop, bakery]);
        final backend = FakeAshBackend([table]);
        final stream = backend.db.stores.streamAll();
        final emitted = <List<Store>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(FakeAshBackend.settleTime);

        table.add(pharmacy);
        backend.announce([
          EntityChange(type: 'Store', id: pharmacy.id, op: 'insert'),
        ]);
        async.elapse(FakeAshBackend.settleTime);

        expect(emitted.last, [pharmacy, bakery, bookshop]);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        backend.dispose();
      });
    });
  });

  test('a store opens with its address and its admin family', () {
    final detailed = bookshop.copyWith(
      address: address,
      family: PlaceFixtures.servants,
    );
    final opened = fakeAsync((async) {
      final backend = FakeAshBackend([
        PlaceFixtures.storesTable(rows: [detailed]),
      ]);
      final stream = backend.db.stores.streamSingleById(id: bookshop.id);
      Store? emitted;
      final subscription = stream.listen((store) => emitted = store);
      async.elapse(FakeAshBackend.settleTime);
      unawaited(subscription.cancel());
      backend.dispose();

      return emitted;
    });

    expect(opened, detailed);
  });

  group('writing', () {
    const draft = Store(
      id: '',
      name: 'مكتبة الكرمة',
      familyId: 'family-1',
      color: Color(0xFFFF9800),
    );

    test('creating answers the store the server stored', () {
      return withBackend((backend) async {
        final answered = await backend.db.stores.createObject(newObject: draft);

        expect(answered, draft.copyWith(id: answered.id));
      });
    });

    test('creating sends the admin family, colour and whole address', () {
      return withBackend((backend) async {
        final located = draft.copyWith(address: address);

        await backend.db.stores.createObject(newObject: located);

        expect(backend.server.sentTo('createStore').single.variables, {
          'input': {
            'name': located.name,
            'adminFamilyId': located.familyId,
            'color': colorToInt(located.color),
            'address': addressInputOf(address),
          },
        });
      });
    });

    test('an address is sent without an id or a house number', () {
      return withBackend((backend) async {
        await backend.db.stores.createObject(
          newObject: draft.copyWith(address: address),
        );

        expect(
          sentInput(backend, 'createStore')['address'],
          allOf(isNot(contains('id')), isNot(contains('houseNumber'))),
        );
      });
    });

    test('a store without an address leaves the address out of the input', () {
      return withBackend((backend) async {
        await backend.db.stores.updateObject(
          newObject: bookshop.copyWith(name: 'مكتبة النور'),
          oldObject: bookshop.copyWith(address: address),
        );

        expect(sentInput(backend, 'updateStore'), isNot(contains('address')));
      });
    });

    test('updating sends the whole desired state and answers the store', () {
      return withBackend((backend) async {
        final moved = bookshop.copyWith(
          name: 'مكتبة النور',
          familyId: null,
          color: null,
          address: address.copyWith(substreetName: null, storeyNumber: null),
        );

        final answered = await backend.db.stores.updateObject(
          newObject: moved,
          oldObject: bookshop.copyWith(address: address),
        );

        expect(answered?.name, moved.name);
        expect(backend.server.sentTo('updateStore').single.variables, {
          'id': bookshop.id,
          'input': {
            'name': moved.name,
            'adminFamilyId': null,
            'color': null,
            'address': addressInputOf(moved.address!),
          },
        });
        expect(sentInput(backend, 'updateStore')['address'], {
          ...addressInputOf(address),
          'substreetName': null,
          'storeyNumber': null,
        });
      });
    });

    test('deleting answers the removed store', () {
      final table = PlaceFixtures.storesTable();

      return withBackend(table: table, (backend) async {
        final removed = await backend.db.stores.deleteById(id: bookshop.id);

        expect(removed?.id, bookshop.id);
        expect(table.rows.map((row) => row['id']), [bakery.id, pharmacy.id]);
      });
    });

    group('a rejected write throws the exception of its error code', () {
      final rejections = <String, TypeMatcher<BackendException>>{
        'store/admin-family-or-address-required':
            isA<BackendRejectedException>(),
        'address/street-outside-area': isA<BackendRejectedException>(),
        'relation/not-found': isA<BackendRejectedException>(),
        'forbidden': isA<BackendForbiddenException>(),
        'not_found': isA<BackendNotFoundException>(),
      };

      for (final MapEntry(key: code, value: matcher) in rejections.entries) {
        test(code, () {
          return withBackend((backend) async {
            backend.server.nextMutationRejectionCode = code;

            await expectLater(
              backend.db.stores.createObject(newObject: draft),
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
