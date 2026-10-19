import 'dart:async';
import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import 'place_fixtures.dart';

void main() {
  const nile = PlaceFixtures.nile;
  const ramses = PlaceFixtures.ramses;
  const corniche = PlaceFixtures.corniche;
  const newCairo = PlaceFixtures.newCairo;
  const heliopolis = PlaceFixtures.heliopolis;

  List<Street> listedBy(
    PaginatableStreamBase<Street> Function(StreetsDAO streets) listing, {
    FakeAshTable? table,
  }) => FakeAshBackend.settledListing([
    table ?? PlaceFixtures.streetsTable(),
  ], (db) => listing(db.streets));

  Future<void> withBackend(
    Future<void> Function(FakeAshBackend backend) body, {
    FakeAshTable? table,
  }) async {
    final backend = FakeAshBackend([table ?? PlaceFixtures.streetsTable()]);
    addTearDown(backend.dispose);

    await body(backend);
  }

  Json lastUpdateInput(FakeAshBackend backend) =>
      (backend.server.sentTo('updateStreet').single.variables['input'] as Map)
          .cast<String, dynamic>();

  group('listing', () {
    test('streets are listed by name', () {
      expect(listedBy((streets) => streets.streamAll()), [
        corniche,
        ramses,
        nile,
      ]);
    });

    test('searching lists only the streets whose name contains the text', () {
      expect(
        listedBy(
          (streets) => streets.streamAll(
            searchQuery: Stream.value(nile.name.substring(8)),
          ),
        ),
        [nile],
      );
    });

    test('filtering by colour lists only the streets of that colour', () {
      expect(
        listedBy(
          (streets) => streets.streamAll(
            where: Stream.value([
              Filter(StreetFields().color, ColorOperator.eq, ramses.color),
            ]),
          ),
        ),
        [ramses],
      );
    });

    group('geographic filters are asked of the server', () {
      final cases = <String, ({Filter<Object> filter, Json sent})>{
        'crossing a polygon': (
          filter: Filter(
            StreetFields().line,
            SpatialOperator.intersects,
            PlaceFixtures.shubraBounds,
          ),
          sent: {
            'withinPolygon': {
              'input': {
                'polygon': PlaceFixtures.shubraBounds.asPostGISPolygon(),
              },
              'eq': true,
            },
          },
        ),
        'within a distance of a point': (
          filter: Filter(
            StreetFields().line,
            const WithinDistanceOperator(500),
            PlaceFixtures.tahrirSquare,
          ),
          sent: {
            'withinDistance': {
              'input': {
                'from': PlaceFixtures.tahrirSquare.toPostGISJson(),
                'meters': 500.0,
              },
              'eq': true,
            },
          },
        ),
      };

      for (final MapEntry(key: name, value: testCase) in cases.entries) {
        test(name, () {
          final calculation = (
            testCase.sent.keys.single,
            (Json row, Json _) {
              return row['id'] == nile.id;
            },
          );
          final table = FakeAshTable(
            typename: 'Street',
            listRoot: 'streets',
            rows: const [nile, ramses, corniche],
            calculations: {calculation.$1: calculation.$2},
          );
          final backend = FakeAshBackend([table]);
          addTearDown(backend.dispose);

          final listed = fakeAsync((async) {
            final stream = backend.db.streets.streamAll(
              where: Stream.value([testCase.filter]),
            );
            List<Street>? emitted;
            final subscription = stream.listen((streets) => emitted = streets);
            async.elapse(FakeAshBackend.settleTime);
            unawaited(subscription.cancel());
            unawaited(stream.dispose());

            return emitted;
          });

          expect(listed, [nile]);
          expect(
            backend.server.sentTo('streets').single.variables['filter'],
            testCase.sent,
          );
        });
      }
    });

    test('the list follows the change feed', () {
      fakeAsync((async) {
        final table = PlaceFixtures.streetsTable(rows: [nile, ramses]);
        final backend = FakeAshBackend([table]);
        final stream = backend.db.streets.streamAll();
        final emitted = <List<Street>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(FakeAshBackend.settleTime);

        table.add(corniche);
        backend.announce([
          EntityChange(type: 'Street', id: corniche.id, op: 'insert'),
        ]);
        async.elapse(FakeAshBackend.settleTime);

        expect(emitted.last, [corniche, ramses, nile]);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        backend.dispose();
      });
    });
  });

  test('a street opens with the areas it crosses', () {
    final crossing = nile.copyWith(areas: [newCairo, heliopolis]);
    final opened = fakeAsync((async) {
      final backend = FakeAshBackend([
        PlaceFixtures.streetsTable(rows: [crossing]),
      ]);
      final stream = backend.db.streets.streamSingleById(id: nile.id);
      Street? emitted;
      final subscription = stream.listen((street) => emitted = street);
      async.elapse(FakeAshBackend.settleTime);
      unawaited(subscription.cancel());
      backend.dispose();

      return emitted;
    });

    expect(opened, crossing);
  });

  group('writing', () {
    const draft = Street(id: '', name: 'الجلاء', color: Color(0xFFFF9800));

    test('creating answers the street the server stored', () {
      return withBackend((backend) async {
        final answered = await backend.db.streets.createObject(
          newObject: draft,
        );

        expect(answered, draft.copyWith(id: answered.id));
      });
    });

    test('creating sends only the fields the street has', () {
      return withBackend((backend) async {
        final drawn = draft.copyWith(line: PlaceFixtures.nileCorniche);

        await backend.db.streets.createObject(newObject: drawn);

        expect(backend.server.sentTo('createStreet').single.variables, {
          'input': {
            'name': drawn.name,
            'line': drawn.line?.asPostGISLineString(),
            'color': colorToInt(drawn.color),
          },
        });
      });
    });

    test('deleting answers the removed street', () {
      final table = PlaceFixtures.streetsTable();

      return withBackend(table: table, (backend) async {
        final removed = await backend.db.streets.deleteById(id: nile.id);

        expect(removed?.id, nile.id);
        expect(table.rows.map((row) => row['id']), [ramses.id, corniche.id]);
      });
    });

    group('the areas a street crosses', () {
      test('are the desired set when creating', () {
        return withBackend((backend) async {
          await backend.db.streets.createObject(
            newObject: draft.copyWith(areas: [newCairo, heliopolis]),
          );

          expect(
            backend.server.sentTo('createStreet').single.variables['input'],
            containsPair('areas', [newCairo.id, heliopolis.id]),
          );
        });
      });

      test('are left out of a create that does not mention them', () {
        return withBackend((backend) async {
          await backend.db.streets.createObject(newObject: draft);

          expect(
            backend.server.sentTo('createStreet').single.variables['input'],
            isNot(contains('areas')),
          );
        });
      });

      test('are left out of an update that does not mention them', () {
        return withBackend((backend) async {
          await backend.db.streets.updateObject(
            newObject: nile.copyWith(name: 'النيل'),
            oldObject: nile,
          );

          expect(lastUpdateInput(backend), isNot(contains('areas')));
        });
      });

      test('are the complete new set when an update changes them', () {
        final before = nile.copyWith(areas: [newCairo, heliopolis]);
        final after = before.copyWith(
          areas: [heliopolis, PlaceFixtures.shubra],
        );

        return withBackend((backend) async {
          await backend.db.streets.updateObject(
            newObject: after,
            oldObject: before,
          );

          expect(lastUpdateInput(backend)['areas'], [
            heliopolis.id,
            PlaceFixtures.shubra.id,
          ]);
        });
      });

      test('are sent as an empty list when an update removes them all', () {
        final before = nile.copyWith(areas: [newCairo]);

        return withBackend((backend) async {
          await backend.db.streets.updateObject(
            newObject: before.copyWith(areas: const []),
            oldObject: before,
          );

          expect(lastUpdateInput(backend)['areas'], isEmpty);
        });
      });
    });

    test('updating sends the whole desired state and answers the street', () {
      return withBackend((backend) async {
        final renamed = nile.copyWith(name: 'النيل', color: null, line: null);

        final answered = await backend.db.streets.updateObject(
          newObject: renamed,
          oldObject: nile,
        );

        expect(answered?.name, renamed.name);
        expect(backend.server.sentTo('updateStreet').single.variables, {
          'id': nile.id,
          'input': {'name': renamed.name, 'line': null, 'color': null},
        });
      });
    });

    group('a rejected write throws the exception of its error code', () {
      final rejections = <String, TypeMatcher<BackendException>>{
        'street/area-required': isA<BackendRejectedException>(),
        'address/street-outside-area': isA<BackendRejectedException>(),
        'forbidden': isA<BackendForbiddenException>(),
        'not_found': isA<BackendNotFoundException>(),
      };

      for (final MapEntry(key: code, value: matcher) in rejections.entries) {
        test(code, () {
          return withBackend((backend) async {
            backend.server.nextMutationRejectionCode = code;

            await expectLater(
              backend.db.streets.updateObject(
                newObject: nile.copyWith(areas: const []),
                oldObject: nile,
              ),
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
