import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:phoenix_socket/phoenix_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

typedef ChangeFeedIdentity = ({String uid, String? userId});

typedef IdTokenFetcher = Future<String?> Function({bool forceRefresh});

/// The client of the server's `changes` channel. It connects while
/// [events] has a listener and someone is signed in, and turns the
/// channel's versioned pushes into [ChangeFeedEvent]s. Every connect asks
/// for a current ID token; a join refused for an expired token reconnects
/// with a refreshed one. A refused connect backs off between attempts and
/// retries at once when the credentials change.
class ChangeFeedClient {
  static const topic = 'changes';
  static const changesEvent = 'changes';
  static const tokenExpiredReason = 'token_expired';
  static const Duration defaultRejoinDelay = Duration(seconds: 5);

  final Uri socketUrl;
  final Stream<AuthLinkCredentials?> _credentials;
  final IdTokenFetcher _idToken;
  final WebSocketChannel Function(Uri uri)? _webSocketChannelFactory;
  final Duration rejoinDelay;

  late final StreamController<ChangeFeedEvent> _events =
      StreamController.broadcast(onListen: _start, onCancel: _stop);

  StreamSubscription<AuthLinkCredentials?>? _credentialsSubscription;
  bool _refreshTokenOnNextConnect = false;

  PhoenixSocket? _socket;
  ChangeFeedIdentity? _socketIdentity;
  bool _socketFailedToOpen = false;
  List<StreamSubscription<Object?>> _socketSubscriptions = [];

  PhoenixChannel? _channel;
  StreamSubscription<Message>? _channelSubscription;
  Timer? _rejoinTimer;
  bool _awaitingJoinReply = false;
  final List<Json> _pushesBeforeJoinReply = [];

  String? _lastSeenVersion;
  ChangeFeedIdentity? _lastSeenVersionOwner;

  Stream<ChangeFeedEvent> get events => _events.stream;

  ChangeFeedClient({
    required this.socketUrl,
    required this._credentials,
    required this._idToken,
    this.rejoinDelay = defaultRejoinDelay,
    this._webSocketChannelFactory,
  });

  void _start() =>
      _credentialsSubscription ??= _credentials.listen(_onCredentials);

  void _stop() {
    unawaited(_credentialsSubscription?.cancel());
    _credentialsSubscription = null;
    _disconnect();
  }

  void _onCredentials(AuthLinkCredentials? credentials) {
    final identity = switch (credentials) {
      AuthLinkCredentials(:final uid, :final hasuraUserId) => (
        uid: uid,
        userId: hasuraUserId,
      ),
      null => null,
    };
    if (_socket != null &&
        identity == _socketIdentity &&
        !_socketFailedToOpen) {
      return;
    }

    _disconnect();
    if (identity != _lastSeenVersionOwner) {
      _lastSeenVersion = null;
      _lastSeenVersionOwner = identity;
    }
    if (identity != null) _connect(identity);
  }

  void _connect(ChangeFeedIdentity identity) {
    final socket = PhoenixSocket(
      socketUrl.toString(),
      socketOptions: PhoenixSocketOptions(dynamicParams: _connectParams),
      webSocketChannelFactory: _webSocketChannelFactory,
    );
    _socket = socket;
    _socketIdentity = identity;
    _socketFailedToOpen = false;
    _socketSubscriptions = [
      socket.openStream.listen((_) {
        _socketFailedToOpen = false;
        _join();
      }),
      socket.closeStream.listen((_) => _forgetChannel(leave: false)),
      socket.errorStream.listen((_) => _socketFailedToOpen = true),
    ];
    unawaited(socket.connect());
  }

  Future<Map<String, String>> _connectParams() async {
    final forceRefresh = _refreshTokenOnNextConnect;
    _refreshTokenOnNextConnect = false;

    return {'token': await _idToken(forceRefresh: forceRefresh) ?? ''};
  }

  void _reconnectWithRefreshedToken() {
    final identity = _socketIdentity;
    _disconnect();
    if (identity == null) return;

    _refreshTokenOnNextConnect = true;
    _connect(identity);
  }

  void _disconnect() {
    _forgetChannel(leave: false);
    for (final subscription in _socketSubscriptions) {
      unawaited(subscription.cancel());
    }
    _socketSubscriptions = [];
    _socket?.dispose();
    _socket = null;
    _socketIdentity = null;
  }

  void _join() {
    _forgetChannel(leave: true);
    final socket = _socket;
    if (socket == null || !socket.isConnected) return;

    final channel = socket.addChannel(
      topic: topic,
      parameters: {'since': _lastSeenVersion},
    );
    _channel = channel;
    _awaitingJoinReply = true;
    _channelSubscription = channel.messages
        .where((message) => message.event.value == changesEvent)
        .listen((message) => _onPush(message.payload as Json));
    unawaited(
      channel.join().future.then(
        (reply) => _onJoinReply(channel, reply),
        onError: (_) => _rejoinLater(channel),
      ),
    );
  }

  void _onJoinReply(PhoenixChannel channel, PushResponse reply) {
    if (!identical(channel, _channel)) return;
    if (reply case PushResponse(
      isOk: true,
      response: {
        'version': final String version,
        'complete': final bool complete,
      },
    )) {
      _lastSeenVersion = version;
      _awaitingJoinReply = false;
      if (!complete) _emit(const ResyncRequired());
      final pushes = [..._pushesBeforeJoinReply];
      _pushesBeforeJoinReply.clear();
      pushes.forEach(_onPush);

      return;
    }
    if (reply case PushResponse(
      isError: true,
      response: {'reason': tokenExpiredReason},
    )) {
      _reconnectWithRefreshedToken();

      return;
    }

    _rejoinLater(channel);
  }

  void _onPush(Json push) {
    if (_awaitingJoinReply) {
      _pushesBeforeJoinReply.add(push);

      return;
    }
    if (push['from'] != _lastSeenVersion) {
      _join();

      return;
    }

    _lastSeenVersion = push['to'] as String?;
    final changes = [
      for (final change in push['changes'] as List? ?? const [])
        EntityChange.fromJson((change as Map).cast<String, dynamic>()),
    ];
    final viewerUserId = _socketIdentity?.userId;
    _emit(
      changes.any((change) => change.affectsViewer(viewerUserId))
          ? const ResyncRequired()
          : ChangesReceived(changes),
    );
  }

  void _rejoinLater(PhoenixChannel channel) {
    if (!identical(channel, _channel)) return;

    _rejoinTimer?.cancel();
    _rejoinTimer = Timer(rejoinDelay, _join);
  }

  void _forgetChannel({required bool leave}) {
    _rejoinTimer?.cancel();
    _rejoinTimer = null;
    unawaited(_channelSubscription?.cancel());
    _channelSubscription = null;
    _pushesBeforeJoinReply.clear();
    final channel = _channel;
    _channel = null;
    if (channel == null) return;

    if (leave && channel.state == PhoenixChannelState.joined) {
      channel.leave().future.ignore();
    }
    channel.close();
  }

  void _emit(ChangeFeedEvent event) {
    if (!_events.isClosed) _events.add(event);
  }

  void dispose() {
    _stop();
    unawaited(_events.close());
  }
}
