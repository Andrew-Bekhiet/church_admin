import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/language.dart';

import '../../../../fakes/change_feed_test_feed.dart';

void main() {
  final document = parseString(r'query people($filter: String) { people }');
  final request = LiveQueryRequest(
    document: document,
    operationName: 'people',
    variables: const {'filter': 'مينا', 'first': 10},
    window: (rows: 20, chunk: 10),
    resultHashes: const ['abc'],
  );
  const ref = 'ref-1';

  Future<LiveRegisterOutcome> register(
    FakeAsync async,
    ChangeFeedTestFeed feed,
  ) => feed.register(
    async,
    LiveRegistration(ref: ref, request: request),
  );

  test('joining the channel is announced', () {
    fakeAsync((async) {
      final feed = ChangeFeedTestFeed.start(async);

      expect(feed.events, [const ChannelJoined()]);

      feed.dispose();
    });
  });

  group('a registration', () {
    test('reaches the server with the document, the variables and the '
        'window', () {
      fakeAsync((async) {
        final feed = ChangeFeedTestFeed.start(async);

        unawaited(register(async, feed));

        expect(feed.server.registrations[ref], {
          'ref': ref,
          'document': printNode(document),
          'operationName': request.operationName,
          'variables': {'filter': 'مينا'},
          'window': {'rows': 20, 'chunk': 10},
          'resultHashes': ['abc'],
        });

        feed.dispose();
      });
    });

    test('is accepted when the server replies', () {
      fakeAsync((async) {
        final feed = ChangeFeedTestFeed.start(async);
        LiveRegisterOutcome? outcome;

        unawaited(register(async, feed).then((value) => outcome = value));
        async.flushMicrotasks();

        expect(outcome, LiveRegisterOutcome.accepted);

        feed.dispose();
      });
    });

    test('keeps the paging variables of a query without a window', () {
      fakeAsync((async) {
        final feed = ChangeFeedTestFeed.start(async);
        final entityRequest = LiveQueryRequest(
          document: document,
          operationName: 'people',
          variables: const {'first': 10},
        );

        unawaited(
          feed.client.register(
            LiveRegistration(ref: ref, request: entityRequest),
          ),
        );
        async.elapse(const Duration(seconds: 1));

        expect(feed.server.registrations[ref]?['variables'], {'first': 10});
        expect(feed.server.registrations[ref]?['window'], isNull);

        feed.dispose();
      });
    });

    test('the server refuses is reported as refused', () {
      fakeAsync((async) {
        final feed = ChangeFeedTestFeed.start(
          async,
          prepareServer: (server) => server.refusalFor = (_) => 'too_many',
        );
        LiveRegisterOutcome? outcome;

        unawaited(register(async, feed).then((value) => outcome = value));
        async.flushMicrotasks();

        expect(outcome, LiveRegisterOutcome.refused);

        feed.dispose();
      });
    });

    test('the server fails without a reason is reported as failed', () {
      fakeAsync((async) {
        final feed = ChangeFeedTestFeed.start(
          async,
          prepareServer: (server) => server.failRegistrations = true,
        );
        LiveRegisterOutcome? outcome;

        unawaited(register(async, feed).then((value) => outcome = value));
        async.flushMicrotasks();

        expect(outcome, LiveRegisterOutcome.failed);

        feed.dispose();
      });
    });

    test('the server fails to run the first time is reported as failed', () {
      fakeAsync((async) {
        final feed = ChangeFeedTestFeed.start(
          async,
          prepareServer: (server) =>
              server.refusalFor = (_) => ChangeFeedClient.runFailedReason,
        );
        LiveRegisterOutcome? outcome;

        unawaited(register(async, feed).then((value) => outcome = value));
        async.flushMicrotasks();

        expect(outcome, LiveRegisterOutcome.failed);

        feed.dispose();
      });
    });

    test('before the channel is joined is reported as not joined', () {
      fakeAsync((async) {
        final feed = ChangeFeedTestFeed.start(async, initialCredentials: null);
        LiveRegisterOutcome? outcome;

        unawaited(register(async, feed).then((value) => outcome = value));
        async.flushMicrotasks();

        expect(outcome, LiveRegisterOutcome.notJoined);
        expect(feed.server.registrations, isEmpty);

        feed.dispose();
      });
    });

    test('is withdrawn when unregistered', () {
      fakeAsync((async) {
        final feed = ChangeFeedTestFeed.start(async);
        unawaited(register(async, feed));

        feed.client.unregister(ref);
        async.elapse(const Duration(seconds: 1));

        expect(feed.server.registrations, isEmpty);

        feed.dispose();
      });
    });

    test('is asked to resync', () {
      fakeAsync((async) {
        final feed = ChangeFeedTestFeed.start(async);
        unawaited(register(async, feed));

        feed.client.resync(ref);
        async.elapse(const Duration(seconds: 1));

        expect(feed.server.resyncedRefs, [ref]);

        feed.dispose();
      });
    });
  });

  group('a result push', () {
    test('with the full data arrives as a full result', () {
      fakeAsync((async) {
        final feed = ChangeFeedTestFeed.start(async);
        const data = {'people': 3};

        feed.server.pushFull(ref, data);
        async.elapse(const Duration(milliseconds: 10));

        expect(
          feed.events.last,
          const LiveResultReceived(
            FullLiveResult(ref: ref, data: data),
          ),
        );

        feed.dispose();
      });
    });

    test('with rows, an order, a count and an end keyset arrives as a '
        'list delta', () {
      fakeAsync((async) {
        final feed = ChangeFeedTestFeed.start(async);
        const row = {'id': 'a', 'name': 'مينا'};

        feed.server.pushDelta(
          ref,
          rows: [row],
          order: ['b', 'a'],
          count: 2,
          endKeyset: 'k',
        );
        async.elapse(const Duration(milliseconds: 10));

        expect(
          feed.events.last,
          const LiveResultReceived(
            ListDeltaLiveResult(
              ref: ref,
              rows: [row],
              order: ['b', 'a'],
              count: 2,
              endKeyset: 'k',
            ),
          ),
        );

        feed.dispose();
      });
    });

    test('with rows only arrives without an order', () {
      fakeAsync((async) {
        final feed = ChangeFeedTestFeed.start(async);

        feed.server.pushDelta(ref, rows: const []);
        async.elapse(const Duration(milliseconds: 10));

        expect(
          feed.events.last,
          const LiveResultReceived(
            ListDeltaLiveResult(ref: ref, rows: []),
          ),
        );

        feed.dispose();
      });
    });
  });
}
