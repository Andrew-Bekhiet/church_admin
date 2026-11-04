import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:phoenix_socket/phoenix_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

typedef ChangeFeedIdentity = ({String uid, String? userId});

typedef IdTokenFetcher = Future<String?> Function({bool forceRefresh});

/// The client of the server's `live_queries` channel. It connects while
/// [events] has a listener and someone is signed in. Live queries are
/// registered, unregistered and resynced through it, and the channel's
/// `live:result` pushes arrive as [LiveResultReceived]. The server keeps no
/// registration across a join, so every join is announced as [ChannelJoined].
/// Every connect asks for a current ID token; a join refused for an expired
/// token reconnects with a refreshed one. A refused connect backs off
/// between attempts and retries at once when the credentials change.
class ChangeFeedClient {
  static const topic = 'live_queries';
  static const liveResultEvent = 'live:result';
  static const registerEvent = 'live:register';
  static const unregisterEvent = 'live:unregister';
  static const resyncEvent = 'live:resync';
  static const tokenExpiredReason = 'token_expired';
  static const runFailedReason = 'run_failed';
  static const Duration defaultRejoinDelay = Duration(seconds: 5);
  static const _leavableStates = {
    PhoenixChannelState.joined,
    PhoenixChannelState.errored,
  };

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
  bool _isJoined = false;

  Stream<ChangeFeedEvent> get events => _events.stream;

  ChangeFeedClient({
    required this.socketUrl,
    required this._credentials,
    required this._idToken,
    this.rejoinDelay = defaultRejoinDelay,
    this._webSocketChannelFactory,
  });

  Future<LiveRegisterOutcome> register(LiveRegistration registration) async {
    final channel = _channel;
    if (channel == null || !_isJoined || !channel.canPush) {
      return LiveRegisterOutcome.notJoined;
    }

    try {
      final reply = await channel
          .push(registerEvent, registration.toJson())
          .future;

      return switch (reply) {
        PushResponse(isOk: true) => LiveRegisterOutcome.accepted,
        PushResponse(response: {'reason': runFailedReason}) =>
          LiveRegisterOutcome.failed,
        PushResponse(response: {'reason': String _}) =>
          LiveRegisterOutcome.refused,
        _ => LiveRegisterOutcome.failed,
      };
    } on Object {
      return LiveRegisterOutcome.failed;
    }
  }

  void unregister(String ref) => _pushLiveCommand(unregisterEvent, ref);

  void resync(String ref) => _pushLiveCommand(resyncEvent, ref);

  void _pushLiveCommand(String event, String ref) {
    final channel = _channel;
    if (channel == null || !_isJoined || !channel.canPush) return;

    channel.push(event, {'ref': ref}).future.ignore();
  }

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

    final channel = socket.addChannel(topic: topic);
    _channel = channel;
    _channelSubscription = channel.messages.listen(
      (message) => _onChannelMessage(channel, message),
    );
    unawaited(
      channel.join().future.then(
        (reply) => _onJoinReply(channel, reply),
        onError: (_) => _rejoinLater(channel),
      ),
    );
  }

  void _onChannelMessage(PhoenixChannel channel, Message message) {
    if (message.event == PhoenixChannelEvent.error) {
      _onChannelCrashed(channel);
    } else if (message.event.value == liveResultEvent) {
      _emit(LiveResultReceived(LiveResult.fromJson(message.payload as Json)));
    }
  }

  void _onChannelCrashed(PhoenixChannel channel) {
    if (!identical(channel, _channel)) return;

    _isJoined = false;
    _rejoinLater(channel);
  }

  void _onJoinReply(PhoenixChannel channel, PushResponse reply) {
    if (!identical(channel, _channel)) return;
    if (reply.isOk) {
      _isJoined = true;
      _emit(const ChannelJoined());

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
    _isJoined = false;
    final channel = _channel;
    _channel = null;
    if (channel == null) return;

    if (leave && _leavableStates.contains(channel.state)) {
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
