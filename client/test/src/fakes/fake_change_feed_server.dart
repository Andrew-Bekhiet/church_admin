import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';
import 'package:web_socket/testing.dart';
import 'package:web_socket/web_socket.dart';
import 'package:web_socket_channel/adapter_web_socket_channel.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'fake_live_results.dart';

/// A Phoenix server speaking the V2 serializer on the `changes` topic. It
/// keeps the live queries a client registers by `ref`, and pushes results
/// for them when a test says so.
class FakeChangeFeedServer {
  final List<Uri> connectedUris = [];

  /// The `live:register` payloads the server holds, by ref.
  final Map<String, Json> registrations = {};
  final List<String> registeredRefs = [];
  final List<String> unregisteredRefs = [];
  final List<String> resyncedRefs = [];

  /// The join ref of every `phx_join` the server received, in order.
  final List<String?> joinRefs = [];

  /// The `reason` a `live:register` is refused with, or null to accept it.
  String? Function(Json payload) refusalFor = (_) => null;

  /// Answers every `live:register` with an error that has no reason, as a
  /// channel does when the server crashed handling it.
  bool failRegistrations = false;

  /// Refuses the socket upgrade, as the server does for an account that is
  /// not approved.
  bool refuseConnections = false;

  /// Tokens whose joins are refused with `token_expired`.
  final Set<String> expiredTokens = {};

  WebSocket? _serverSocket;
  String? _serverSocketToken;
  String? _joinRef;

  bool get isConnected => _serverSocket != null;

  List<String?> get connectedTokens =>
      connectedUris.map((uri) => uri.queryParameters['token']).toList();

  FakeChangeFeedServer();

  WebSocketChannel connect(Uri uri) {
    connectedUris.add(uri);
    if (refuseConnections) {
      return AdapterWebSocketChannel(
        Future<WebSocket>.error(
          WebSocketException('403 Forbidden: not approved'),
        ),
      );
    }

    final (client, server) = fakes();
    registrations.clear();
    _serverSocket = server;
    _serverSocketToken = uri.queryParameters['token'];
    server.events.listen((event) {
      switch (event) {
        case TextDataReceived(:final text):
          _onClientMessage(server, jsonDecode(text) as List);

        case CloseReceived():
          if (identical(_serverSocket, server)) _serverSocket = null;

        case BinaryDataReceived():
          break;
      }
    });

    return AdapterWebSocketChannel(client);
  }

  Future<void> pushCurrentResults(Link backend) async {
    for (final MapEntry(:key, :value) in [...registrations.entries]) {
      pushFull(key, await FakeLiveResults.run(backend, value));
    }
  }

  void pushFull(String ref, Json data) =>
      _pushLiveResult({'ref': ref, 'full': true, 'data': data});

  void pushDelta(
    String ref, {
    required List<Json> rows,
    List<String>? order,
    int? count,
    String? endKeyset,
  }) => _pushLiveResult({
    'ref': ref,
    'full': false,
    'rows': rows,
    'order': ?order,
    'count': ?count,
    'endKeyset': ?endKeyset,
  });

  void _pushLiveResult(Json payload) => _send(_serverSocket, [
    _joinRef,
    null,
    ChangeFeedClient.topic,
    ChangeFeedClient.liveResultEvent,
    payload,
  ]);

  /// Crashes the channel process, as the server does on an unhandled error:
  /// the socket stays open, `phx_error` reaches the client and the
  /// registrations are gone.
  void crashChannel() {
    registrations.clear();
    _send(_serverSocket, [
      _joinRef,
      null,
      ChangeFeedClient.topic,
      'phx_error',
      <String, Object?>{},
    ]);
  }

  Future<void> dropConnection() async {
    final socket = _serverSocket;
    _serverSocket = null;
    registrations.clear();
    await socket?.close();
  }

  void _onClientMessage(WebSocket socket, List message) {
    final [joinRef, ref, topic, event, payload] = message;
    switch (event) {
      case 'heartbeat':
        _reply(socket, null, ref, topic, {});

      case 'phx_join' when expiredTokens.contains(_serverSocketToken):
        _send(socket, [
          joinRef,
          ref,
          topic,
          'phx_reply',
          {
            'status': 'error',
            'response': {'reason': 'token_expired'},
          },
        ]);

      case 'phx_join':
        _joinRef = joinRef as String?;
        joinRefs.add(_joinRef);
        _reply(socket, joinRef, ref, topic, {});

      case 'live:register':
        final registration = (payload as Map).cast<String, dynamic>();
        final reason = refusalFor(registration);
        if (failRegistrations) {
          _send(socket, [
            joinRef,
            ref,
            topic,
            'phx_reply',
            {'status': 'error', 'response': <String, Object?>{}},
          ]);
        } else if (reason != null) {
          _send(socket, [
            joinRef,
            ref,
            topic,
            'phx_reply',
            {
              'status': 'error',
              'response': {'reason': reason},
            },
          ]);
        } else {
          final liveRef = registration['ref'] as String;
          registrations[liveRef] = registration;
          registeredRefs.add(liveRef);
          _reply(socket, joinRef, ref, topic, {});
        }

      case 'live:unregister':
        final liveRef = (payload as Map)['ref'] as String;
        registrations.remove(liveRef);
        unregisteredRefs.add(liveRef);
        _reply(socket, joinRef, ref, topic, {});

      case 'live:resync':
        resyncedRefs.add((payload as Map)['ref'] as String);
        _reply(socket, joinRef, ref, topic, {});

      case 'phx_leave':
        _reply(socket, joinRef, ref, topic, {});
    }
  }

  void _reply(
    WebSocket socket,
    Object? joinRef,
    Object? ref,
    Object? topic,
    Map<String, Object?> response,
  ) => _send(socket, [
    joinRef,
    ref,
    topic,
    'phx_reply',
    {'status': 'ok', 'response': response},
  ]);

  void _send(WebSocket? socket, List<Object?> message) =>
      socket?.sendText(jsonEncode(message));
}
