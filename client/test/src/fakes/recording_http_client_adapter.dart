import 'dart:typed_data';

import 'package:dio/dio.dart';

class RecordedHttpRequest {
  final String method;
  final Uri uri;
  final Map<String, dynamic> headers;
  final List<int> body;

  const RecordedHttpRequest({
    required this.method,
    required this.uri,
    required this.headers,
    required this.body,
  });
}

class RecordingHttpClientAdapter implements HttpClientAdapter {
  final List<RecordedHttpRequest> requests = [];

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    final body = <int>[];
    if (requestStream != null) {
      await for (final chunk in requestStream) {
        body.addAll(chunk);
      }
    }

    requests.add(
      RecordedHttpRequest(
        method: options.method,
        uri: options.uri,
        headers: {...options.headers},
        body: body,
      ),
    );

    return ResponseBody.fromString('', 200);
  }

  @override
  void close({bool force = false}) {}
}
