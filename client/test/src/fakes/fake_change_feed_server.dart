import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:web_socket/testing.dart';
import 'package:web_socket/web_socket.dart';
import 'package:web_socket_channel/adapter_web_socket_channel.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

typedef JoinReply = ({String version, bool complete});

/// A Phoenix server speaking the V2 serializer on the `changes` topic.
class FakeChangeFeedServer {
  final List<Uri> connectedUris = [];
  final List<String?> joinedSince = [];

  JoinReply Function(String? since) replyToJoin;

  WebSocket? _serverSocket;
  String? _joinRef;

  bool get isConnected => _serverSocket != null;

  List<String?> get connectedTokens =>
      connectedUris.map((uri) => uri.queryParameters['token']).toList();

  FakeChangeFeedServer({required this.replyToJoin});

  WebSocketChannel connect(Uri uri) {
    connectedUris.add(uri);
    final (client, server) = fakes();
    _serverSocket = server;
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

  void push({
    required String from,
    required String to,
    required List<EntityChange> changes,
  }) => _send(_serverSocket, [
    _joinRef,
    null,
    ChangeFeedClient.topic,
    ChangeFeedClient.changesEvent,
    {
      'from': from,
      'to': to,
      'changes': [
        for (final change in changes)
          {'type': change.type, 'id': change.id, 'op': change.op},
      ],
    },
  ]);

  Future<void> dropConnection() async {
    final socket = _serverSocket;
    _serverSocket = null;
    await socket?.close();
  }

  void _onClientMessage(WebSocket socket, List message) {
    final [joinRef, ref, topic, event, payload] = message;
    switch (event) {
      case 'heartbeat':
        _reply(socket, null, ref, topic, {});

      case 'phx_join':
        final since = (payload as Map)['since'] as String?;
        joinedSince.add(since);
        _joinRef = joinRef as String?;
        final reply = replyToJoin(since);
        _reply(socket, joinRef, ref, topic, {
          'version': reply.version,
          'complete': reply.complete,
        });

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
