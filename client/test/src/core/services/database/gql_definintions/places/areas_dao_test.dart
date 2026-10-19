import 'dart:async';
import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import 'place_fixtures.dart';

void main() {
  final shubra = PlaceFixtures.shubra;
  const newCairo = PlaceFixtures.newCairo;
  const heliopolis = PlaceFixtures.heliopolis;

  List<Area> listedBy(
    PaginatableStreamBase<Area> Function(AreasDAO areas) listing, {
    Iterable<Area>? rows,
  }) => FakeAshBackend.settledListing([
    PlaceFixtures.areasTable(rows: rows),
  ], (db) => listing(db.areas));

  Future<T> withBackend<T>(
    Future<T> Function(FakeAshBackend backend) body, {
    FakeAshTable? table,
  }) async {
    final backend = FakeAshBackend([table ?? PlaceFixtures.areasTable()]);
    addTearDown(backend.dispose);

    return body(backend);
  }

  group('listing', () {
    test('areas are listed by name', () {
      expect(listedBy((areas) => areas.streamAll()), [
        newCairo,
        shubra,
        heliopolis,
      ]);
    });

    test('searching lists only the areas whose name contains the text', () {
      expect(
        listedBy(
          (areas) => areas.streamAll(
            searchQuery: Stream.value(heliopolis.name.substring(2)),
          ),
        ),
        [heliopolis],
      );
    });

    test('an area listed by its last visit shows the time of that visit', () {
      final table = FakeAshTable(
        typename: 'Area',
        listRoot: 'areas',
        rows: [shubra, newCairo],
        projectsSelections: true,
      );
      final backend = FakeAshBackend([table]);
      addTearDown(backend.dispose);

      final listed = fakeAsync((async) {
        final stream = backend.db.areas.streamAll(
          orderBy: Stream.value([OrderBy(field: AreaFields().lastVisit)]),
        );
        List<Area>? emitted;
        final subscription = stream.listen((areas) => emitted = areas);
        async.elapse(FakeAshBackend.settleTime);
        unawaited(subscription.cancel());
        unawaited(stream.dispose());

        return emitted!;
      });

      expect(
        listed.singleWhere((area) => area.id == shubra.id).lastVisit?.time,
        shubra.lastVisit?.time,
      );
    });

    test('filtering by colour lists only the areas of that colour', () {
      expect(
        listedBy(
          (areas) => areas.streamAll(
            where: Stream.value([
              Filter(AreaFields().color, ColorOperator.eq, newCairo.color),
            ]),
          ),
        ),
        [newCairo],
      );
    });

    test('filtering by a point asks the server which areas contain it', () {
      final table = FakeAshTable(
        typename: 'Area',
        listRoot: 'areas',
        rows: [shubra, newCairo, heliopolis],
        calculations: {'containsPoint': (row, input) => row['id'] == shubra.id},
      );
      final backend = FakeAshBackend([table]);
      addTearDown(backend.dispose);
      const point = PlaceFixtures.tahrirSquare;

      final listed = fakeAsync((async) {
        final stream = backend.db.areas.streamAll(
          where: Stream.value([
            Filter(AreaFields().bounds, PointSpatialOperator.intersects, point),
          ]),
        );
        List<Area>? emitted;
        final subscription = stream.listen((areas) => emitted = areas);
        async.elapse(FakeAshBackend.settleTime);
        unawaited(subscription.cancel());
        unawaited(stream.dispose());

        return emitted;
      });

      expect(listed, [shubra]);
      expect(backend.server.sentTo('areas').single.variables['filter'], {
        'containsPoint': {
          'input': {'point': point.toPostGISJson()},
          'eq': true,
        },
      });
    });

    test('the list follows the change feed', () {
      fakeAsync((async) {
        final table = PlaceFixtures.areasTable(rows: [shubra, newCairo]);
        final backend = FakeAshBackend([table]);
        final stream = backend.db.areas.streamAll();
        final emitted = <List<Area>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(FakeAshBackend.settleTime);

        table.add(heliopolis);
        backend.announce([
          EntityChange(type: 'Area', id: heliopolis.id, op: 'insert'),
        ]);
        async.elapse(FakeAshBackend.settleTime);

        expect(emitted.last, [newCairo, shubra, heliopolis]);

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        backend.dispose();
      });
    });
  });

  test('an area opens with its admins and the user who last edited it', () {
    final opened = fakeAsync((async) {
      final backend = FakeAshBackend([PlaceFixtures.areasTable()]);
      final stream = backend.db.areas.streamSingleById(id: shubra.id);
      Area? emitted;
      final subscription = stream.listen((area) => emitted = area);
      async.elapse(FakeAshBackend.settleTime);
      unawaited(subscription.cancel());
      backend.dispose();

      return emitted;
    });

    expect(opened, shubra);
  });

  group('writing', () {
    const draft = Area(id: '', name: 'عين شمس', color: Color(0xFFFF9800));

    test('creating answers the area the server stored', () {
      return withBackend((backend) async {
        final answered = await backend.db.areas.createObject(newObject: draft);

        expect(answered, draft.copyWith(id: answered.id));
      });
    });

    test('creating sends only the fields the area has', () {
      return withBackend((backend) async {
        final outlined = draft.copyWith(bounds: PlaceFixtures.shubraBounds);

        await backend.db.areas.createObject(newObject: outlined);

        expect(backend.server.sentTo('createArea').single.variables, {
          'input': {
            'name': outlined.name,
            'bounds': outlined.bounds?.asPostGISPolygon(),
            'color': colorToInt(outlined.color),
          },
        });
      });
    });

    test('creating with a last visit sends the visit time', () {
      return withBackend((backend) async {
        final visited = draft.copyWith(
          lastVisit: LastRecordedByInfo(time: PlaceFixtures.visitTime),
        );

        await backend.db.areas.createObject(newObject: visited);

        expect(
          backend.server.sentTo('createArea').single.variables['input'],
          containsPair('lastVisit', tstzToString(PlaceFixtures.visitTime)),
        );
      });
    });

    test('updating sends the whole desired state and answers the area', () {
      return withBackend((backend) async {
        final renamed = shubra.copyWith(
          name: 'شبرا الخيمة',
          color: null,
          bounds: PlaceFixtures.shubraBounds,
        );

        final answered = await backend.db.areas.updateObject(
          newObject: renamed,
          oldObject: shubra,
        );

        expect(answered?.name, renamed.name);
        expect(
          answered?.color,
          isNull,
          reason: 'a cleared colour is sent as null',
        );
        expect(backend.server.sentTo('updateArea').single.variables, {
          'id': shubra.id,
          'input': {
            'name': renamed.name,
            'bounds': renamed.bounds?.asPostGISPolygon(),
            'color': null,
            'lastVisit': tstzToString(PlaceFixtures.visitTime),
          },
        });
      });
    });

    test('deleting answers the removed area and removes it from the list', () {
      final table = PlaceFixtures.areasTable();

      return withBackend(table: table, (backend) async {
        final removed = await backend.db.areas.deleteById(id: shubra.id);

        expect(removed?.id, shubra.id);
        expect(table.rows.map((row) => row['id']), [
          newCairo.id,
          heliopolis.id,
        ]);
        expect(backend.server.sentTo('deleteArea').single.variables, {
          'id': shubra.id,
        });
      });
    });

    group('a rejected write throws the exception of its error code', () {
      final rejections = <String, TypeMatcher<BackendException>>{
        'forbidden': isA<BackendForbiddenException>(),
        'not_found': isA<BackendNotFoundException>(),
        'relation/not-found': isA<BackendRejectedException>(),
      };

      for (final MapEntry(key: code, value: matcher) in rejections.entries) {
        test(code, () {
          return withBackend((backend) async {
            backend.server.nextMutationRejectionCode = code;

            await expectLater(
              backend.db.areas.createObject(newObject: draft),
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
