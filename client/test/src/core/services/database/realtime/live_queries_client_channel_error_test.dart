import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/language.dart';

import '../../../../fakes/live_queries_test_feed.dart';

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
        final feed = LiveQueriesTestFeed.start(async);
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
        final feed = LiveQueriesTestFeed.start(async);
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

  group('a channel crash on the server', () {
    test('is announced as a join again, so registrations are made again', () {
      fakeAsync((async) {
        final feed = LiveQueriesTestFeed.start(async);
        unawaited(feed.register(async, registration));

        feed.server.crashChannel();
        async.elapse(LiveQueriesClient.defaultRejoinDelay * 2);

        expect(feed.events, [const ChannelJoined(), const ChannelJoined()]);

        feed.dispose();
      });
    });

    test('leaves one joined channel, not a second one from the library '
        'rejoin timer', () {
      fakeAsync((async) {
        final feed = LiveQueriesTestFeed.start(async);

        feed.server.crashChannel();
        async.elapse(const Duration(minutes: 1));

        expect(feed.server.joinRefs, hasLength(2));
        expect(feed.events, [const ChannelJoined(), const ChannelJoined()]);

        feed.dispose();
      });
    });

    test('can be registered on again once the channel is joined again', () {
      fakeAsync((async) {
        final feed = LiveQueriesTestFeed.start(async);
        feed.server.crashChannel();
        async.elapse(LiveQueriesClient.defaultRejoinDelay * 2);
        LiveRegisterOutcome? outcome;

        unawaited(
          feed.register(async, registration).then((value) => outcome = value),
        );
        async.flushMicrotasks();

        expect(outcome, LiveRegisterOutcome.accepted);
        expect(feed.server.registrations.keys, [ref]);

        feed.dispose();
      });
    });
  });
}
