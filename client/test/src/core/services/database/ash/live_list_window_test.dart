import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/ash_responses.dart';
import '../../../../fakes/fake_ash_server.dart';

void main() {
  const rootField = 'testItems';
  const mina = AshTestItem(id: 'mina', name: 'مينا');
  const marina = AshTestItem(id: 'marina', name: 'مارينا');
  const bishoy = AshTestItem(id: 'bishoy', name: 'بيشوي');

  Json dataOf(List<AshTestItem> items, {int? count, String? endKeyset}) => {
    rootField: AshResponses.page(
      [for (final item in items) item.toJson()],
      count: count,
      endKeyset: endKeyset,
    ),
  };

  List<AshTestItem> itemsOf(LiveListWindow window) => AshResultParser(
    LiveQueryHarness.listDocument,
  ).page(AshTestItem.fromJson)(window.pageData).items;

  LiveListWindow windowOver(List<AshTestItem> items) =>
      LiveListWindow(rootField: rootField)..replaceWith([dataOf(items)]);

  group('a full push', () {
    test('replaces the rows, the count and the end keyset', () {
      final window = windowOver([mina, marina]);

      final update = window.applyFull(
        dataOf([bishoy], count: 9, endKeyset: 'k9'),
      );

      expect(update, LiveWindowUpdate.changed);
      expect(itemsOf(window), [bishoy]);
      expect(window.count, 9);
      expect(window.endKeyset, 'k9');
    });

    test('that repeats what the window holds changes nothing', () {
      final window = windowOver([mina, marina]);

      final update = window.applyFull(dataOf([mina, marina]));

      expect(update, LiveWindowUpdate.unchanged);
    });
  });

  group('a delta', () {
    test('with rows only replaces those rows in place', () {
      final window = windowOver([mina, marina]);
      final renamed = marina.renamed('مارينا جرجس');

      final update = window.applyDelta(
        ListDeltaLiveResult(ref: 'r1', rows: [renamed.toJson()]),
      );

      expect(update, LiveWindowUpdate.changed);
      expect(itemsOf(window), [mina, renamed]);
    });

    test('with rows identical to the held ones changes nothing', () {
      final window = windowOver([mina, marina]);

      final update = window.applyDelta(
        ListDeltaLiveResult(ref: 'r1', rows: [mina.toJson()]),
      );

      expect(update, LiveWindowUpdate.unchanged);
    });

    test('with an order reorders the window and adds the new rows', () {
      final window = windowOver([mina, marina]);

      final update = window.applyDelta(
        ListDeltaLiveResult(
          ref: 'r1',
          rows: [bishoy.toJson()],
          order: [bishoy.id, marina.id, mina.id],
          count: 3,
        ),
      );

      expect(update, LiveWindowUpdate.changed);
      expect(itemsOf(window), [bishoy, marina, mina]);
      expect(window.count, 3);
    });

    test('with an order that leaves an id out drops that row', () {
      final window = windowOver([mina, marina, bishoy])
        ..applyDelta(
          ListDeltaLiveResult(
            ref: 'r1',
            rows: const [],
            order: [mina.id, bishoy.id],
            count: 2,
          ),
        );

      expect(itemsOf(window), [mina, bishoy]);
    });

    test('keeps the end keyset when the delta carries none', () {
      final window = LiveListWindow(rootField: rootField)
        ..replaceWith([
          dataOf([mina], endKeyset: 'k1'),
        ])
        ..applyDelta(
          ListDeltaLiveResult(ref: 'r1', rows: [mina.renamed('x').toJson()]),
        );

      expect(window.endKeyset, 'k1');
    });

    test('that orders an id it never received reports a missing row and '
        'leaves the window untouched', () {
      final window = windowOver([mina]);

      final update = window.applyDelta(
        ListDeltaLiveResult(
          ref: 'r1',
          rows: [mina.renamed('x').toJson()],
          order: [mina.id, marina.id],
        ),
      );

      expect(update, LiveWindowUpdate.needsResync);
      expect(itemsOf(window), [mina]);
    });

    test('with a row outside the window and no order reports a missing '
        'row', () {
      final window = windowOver([mina]);

      final update = window.applyDelta(
        ListDeltaLiveResult(ref: 'r1', rows: [marina.toJson()]),
      );

      expect(update, LiveWindowUpdate.needsResync);
    });
  });

  group('loading chunks', () {
    test('appending keeps the held rows before the new ones', () {
      final window = windowOver([mina])
        ..append([
          dataOf([marina], count: 5, endKeyset: 'k2'),
        ]);

      expect(itemsOf(window), [mina, marina]);
      expect(window.count, 5);
      expect(window.endKeyset, 'k2');
    });

    test('count and end keyset come from the last chunk', () {
      final window = LiveListWindow(rootField: rootField)
        ..replaceWith([
          dataOf([mina], count: 2, endKeyset: 'k1'),
          dataOf([marina], count: 7, endKeyset: 'k2'),
        ]);

      expect(window.count, 7);
      expect(window.endKeyset, 'k2');
    });

    test('rows without an id are held in order and replaced by a full '
        'push', () {
      const unkeyed = {'__typename': 'Edit', 'time': '2026-01-01'};
      const newer = {'__typename': 'Edit', 'time': '2026-01-02'};
      final window = LiveListWindow(rootField: rootField)
        ..replaceWith([
          {
            rootField: AshResponses.page([unkeyed, unkeyed]),
          },
        ])
        ..applyFull({
          rootField: AshResponses.page([newer, unkeyed]),
        });

      expect(window.hasIdOnEveryRow, isFalse);
      expect(
        (window.pageData[rootField] as Map)['results'],
        [newer, unkeyed],
      );
    });

    test('appending to rows without an id keeps all of them in order', () {
      const first = {'__typename': 'Edit', 'time': '2026-01-01'};
      const second = {'__typename': 'Edit', 'time': '2026-01-02'};
      final window = LiveListWindow(rootField: rootField)
        ..replaceWith([
          {
            rootField: AshResponses.page([first]),
          },
        ])
        ..append([
          {
            rootField: AshResponses.page([second]),
          },
        ]);

      expect((window.pageData[rootField] as Map)['results'], [first, second]);
    });

    test('a window mixing rows with and without an id keeps every row in '
        'order', () {
      const unkeyed = {'__typename': 'Edit', 'time': '2026-01-01'};
      final window = LiveListWindow(rootField: rootField)
        ..replaceWith([
          dataOf([mina]),
        ])
        ..append([
          {
            rootField: AshResponses.page([unkeyed]),
          },
          dataOf([marina]),
        ]);

      expect(window.hasIdOnEveryRow, isFalse);
      expect((window.pageData[rootField] as Map)['results'], [
        mina.toJson(),
        unkeyed,
        marina.toJson(),
      ]);
    });

    test('a delta cannot be applied to rows without an id', () {
      final window = LiveListWindow(rootField: rootField)
        ..replaceWith([
          {
            rootField: AshResponses.page([
              {'__typename': 'Edit', 'time': '2026-01-01'},
            ]),
          },
        ]);

      final update = window.applyDelta(
        const ListDeltaLiveResult(ref: 'r1', rows: []),
      );

      expect(update, LiveWindowUpdate.needsResync);
    });
  });
}
