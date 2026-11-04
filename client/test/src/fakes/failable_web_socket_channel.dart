import 'dart:async';

import 'package:web_socket_channel/adapter_web_socket_channel.dart';

/// A channel whose stream can fail while it is open, as the stream of a real
/// socket does when the network breaks; the adapter only reports errors
/// while connecting.
class FailableWebSocketChannel extends AdapterWebSocketChannel {
  final StreamController<dynamic> _incoming = StreamController();

  @override
  Stream<dynamic> get stream => _incoming.stream;

  FailableWebSocketChannel(super.webSocket) {
    super.stream.listen(
      _incoming.add,
      onError: _incoming.addError,
      onDone: _incoming.close,
    );
  }

  void fail(Object error) => _incoming.addError(error);
}
