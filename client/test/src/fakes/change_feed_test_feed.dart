import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rxdart/rxdart.dart';

import 'fake_change_feed_server.dart';

/// A [ChangeFeedClient] connected to a [FakeChangeFeedServer], with the
/// events it announced.
class ChangeFeedTestFeed {
  static const signedIn = AuthLinkCredentials(
    uid: 'firebaseUid',
    hasuraUserId: 'currentUserId',
    idToken: 'unused',
  );
  static const anotherUser = AuthLinkCredentials(
    uid: 'secondFirebaseUid',
    hasuraUserId: 'secondUserId',
    idToken: 'unused',
  );

  final ChangeFeedClient client;
  final FakeChangeFeedServer server;
  final List<ChangeFeedEvent> events;
  final BehaviorSubject<AuthLinkCredentials?> credentials;
  final ChangeFeedTestIdTokens idTokens;

  ChangeFeedTestFeed._({
    required this.client,
    required this.server,
    required this.events,
    required this.credentials,
    required this.idTokens,
  });

  factory ChangeFeedTestFeed.start(
    FakeAsync async, {
    AuthLinkCredentials? initialCredentials = signedIn,
    void Function(FakeChangeFeedServer server)? prepareServer,
  }) {
    final server = FakeChangeFeedServer();
    prepareServer?.call(server);
    final credentials = BehaviorSubject<AuthLinkCredentials?>.seeded(
      initialCredentials,
    );
    addTearDown(credentials.close);
    final idTokens = ChangeFeedTestIdTokens();
    final client = ChangeFeedClient(
      socketUrl: Uri.parse('ws://localhost:4000/socket/websocket'),
      credentials: credentials,
      idToken: idTokens.call,
      webSocketChannelFactory: server.connect,
    );
    final events = <ChangeFeedEvent>[];
    client.events.listen(events.add);
    async.elapse(const Duration(seconds: 1));

    return ChangeFeedTestFeed._(
      client: client,
      server: server,
      events: events,
      credentials: credentials,
      idTokens: idTokens,
    );
  }

  Future<LiveRegisterOutcome> register(
    FakeAsync async,
    LiveRegistration registration,
  ) {
    final outcome = client.register(registration);
    async.elapse(const Duration(seconds: 1));

    return outcome;
  }

  void dispose() => client.dispose();
}

/// Hands out the token Firebase has cached, and a new one once a refresh is
/// forced.
class ChangeFeedTestIdTokens {
  final List<bool> forceRefreshes = [];
  int _minted = 1;

  String get cachedToken => 'token-$_minted';

  Future<String?> call({bool forceRefresh = false}) async {
    forceRefreshes.add(forceRefresh);
    if (forceRefresh) _minted++;

    return cachedToken;
  }
}
