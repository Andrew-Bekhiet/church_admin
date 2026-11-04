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
      pageQueryFor: (_) => query,
      variablesFor: (_) => {},
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
          expect(harness.changeFeedServer.registrations, isNotEmpty);

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
        final connectedBetweenScreens = harness.changeFeedServer.isConnected;
        final second = openLiveList(harness);
        async.elapse(Duration.zero);

        expect(connectedBetweenScreens, isTrue);
        expect(harness.changeFeedServer.isConnected, isTrue);

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

        expect(harness.changeFeedServer.isConnected, isFalse);

        harness.dispose();
      });
    });
  });
}
