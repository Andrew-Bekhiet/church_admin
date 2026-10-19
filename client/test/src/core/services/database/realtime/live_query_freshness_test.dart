import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/ash_responses.dart';
import '../../../../fakes/fake_ash_server.dart';

typedef _Opened = ({
  List<List<AshTestItem>> emitted,
  void Function() close,
});

void main() {
  const mina = AshTestItem(id: 'mina', name: 'مينا');
  const marina = AshTestItem(id: 'marina', name: 'مارينا');
  const settleTime = Duration(seconds: 5);

  _Opened openLiveList(LiveQueryHarness harness) {
    final emitted = <List<AshTestItem>>[];
    final subscription = harness.watchList().listen(
      emitted.add,
      onError: (Object _) {},
    );

    return (emitted: emitted, close: () => unawaited(subscription.cancel()));
  }

  _Opened openKeysetList(LiveQueryHarness harness) {
    final query = KeysetPageQuery<AshTestItem>(
      client: harness.client,
      document: LiveQueryHarness.listDocument,
      fromJson: AshTestItem.fromJson,
    );
    final stream = KeysetPaginatedStream<AshTestItem, void>(
      registry: harness.registry,
      parametersStream: Stream.value(null),
      fetchChunk: (_, chunk) => query.fetch(variables: {}, chunk: chunk),
    );
    final emitted = <List<AshTestItem>>[];
    final subscription = stream.listen(emitted.add, onError: (Object _) {});

    return (
      emitted: emitted,
      close: () {
        unawaited(subscription.cancel());
        unawaited(stream.dispose());
      },
    );
  }

  final listOpeners = {
    'a live list': openLiveList,
    'a paginated list': openKeysetList,
  };

  for (final MapEntry(key: kind, value: open) in listOpeners.entries) {
    group(kind, () {
      test('first opened offline loads once the connection returns', () {
        fakeAsync((async) {
          final harness = LiveQueryHarness([mina])..goOffline();
          final opened = open(harness);
          async.elapse(settleTime);
          final emittedOffline = [...opened.emitted];

          harness.goOnline();
          async.elapse(settleTime);

          expect(emittedOffline, isEmpty);
          expect(opened.emitted.last, [mina]);

          opened.close();
          harness.dispose();
        });
      });

      test('shows a row announced while its first load was in flight', () {
        fakeAsync((async) {
          final harness = LiveQueryHarness(
            [mina],
            latency: const Duration(seconds: 2),
          );
          final opened = open(harness);
          async.elapse(const Duration(milliseconds: 100));

          harness.server.rows.add(marina);
          harness.announce([
            EntityChange(
              type: AshTestItem.typename,
              id: marina.id,
              op: 'insert',
            ),
          ]);
          async.elapse(settleTime);

          expect(opened.emitted.last, [mina, marina]);

          opened.close();
          harness.dispose();
        });
      });

      test('a steady stream of changes still refreshes it every few '
          'seconds', () {
        fakeAsync((async) {
          final harness = LiveQueryHarness([mina]);
          final opened = open(harness);
          async.elapse(Duration.zero);
          final emittedBeforeStream = opened.emitted.length;

          for (var version = 1; version <= 20; version++) {
            harness.server.rename(mina.id, 'مينا $version');
            harness.announce([
              EntityChange(
                type: AshTestItem.typename,
                id: mina.id,
                op: 'update',
              ),
            ]);
            async.elapse(const Duration(milliseconds: 600));
          }

          expect(
            opened.emitted.length - emittedBeforeStream,
            greaterThanOrEqualTo(3),
          );

          opened.close();
          harness.dispose();
        });
      });
    });
  }

  test('a single record first opened offline loads once the connection '
      'returns', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina])..goOffline();
      final emitted = <AshTestItem?>[];
      final subscription = harness
          .watchEntity(mina.id)
          .listen(emitted.add, onError: (Object _) {});
      async.elapse(settleTime);

      harness.goOnline();
      async.elapse(settleTime);

      expect(emitted, [mina]);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  group('the change feed', () {
    test('stays connected while the next screen opens its queries', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness([mina]);
        final first = openLiveList(harness);
        async.elapse(Duration.zero);

        first.close();
        async.elapse(const Duration(seconds: 1));
        final connectedBetweenScreens = harness.changeFeed.hasListener;
        final second = openLiveList(harness);
        async.elapse(Duration.zero);

        expect(connectedBetweenScreens, isTrue);
        expect(harness.changeFeed.hasListener, isTrue);

        second.close();
        harness.dispose();
      });
    });

    test('disconnects once no query has needed it for the grace period', () {
      fakeAsync((async) {
        final harness = LiveQueryHarness([mina]);
        final opened = openLiveList(harness);
        async.elapse(Duration.zero);

        opened.close();
        async.elapse(
          LiveQueryRegistry.changeFeedGracePeriod + const Duration(seconds: 1),
        );

        expect(harness.changeFeed.hasListener, isFalse);

        harness.dispose();
      });
    });
  });
}
