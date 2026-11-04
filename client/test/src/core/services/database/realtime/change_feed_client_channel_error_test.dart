import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/language.dart';

import '../../../../fakes/change_feed_test_feed.dart';

void main() {
  const ref = 'ref-1';
  final registration = LiveRegistration(
    ref: ref,
    request: LiveQueryRequest(
      document: parseString('query people { people }'),
      operationName: 'people',
      variables: const {},
    ),
  );

  group('while the channel is errored', () {
    test('withdrawing and resyncing a registration raises nothing', () {
      fakeAsync((async) {
        final feed = ChangeFeedTestFeed.start(async);
        unawaited(feed.register(async, registration));
        feed.server.crashChannel();
        async.flushMicrotasks();

        expect(() => feed.client.unregister(ref), returnsNormally);
        expect(() => feed.client.resync(ref), returnsNormally);

        feed.dispose();
      });
    });

    test('a registration is reported as not joined', () {
      fakeAsync((async) {
        final feed = ChangeFeedTestFeed.start(async);
        feed.server.crashChannel();
        async.flushMicrotasks();
        LiveRegisterOutcome? outcome;

        unawaited(
          feed.client.register(registration).then((value) => outcome = value),
        );
        async.flushMicrotasks();

        expect(outcome, LiveRegisterOutcome.notJoined);

        feed.dispose();
      });
    });
  });
}
