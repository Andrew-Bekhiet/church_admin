import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RecordingSubscriptionLink extends Link {
  final Map<String, Json> dataByOperationName;
  final List<Request> requests = [];
  final List<({Request request, StreamController<Response> responses})>
  _openSubscriptions = [];

  RecordingSubscriptionLink(this.dataByOperationName);

  List<Request> allRequestsNamed(String operationName) => [
    for (final request in requests)
      if (request.operation.operationName == operationName) request,
  ];

  List<Request> openRequestsNamed(String operationName) => [
    for (final (:request, responses: _) in _openSubscriptions)
      if (request.operation.operationName == operationName) request,
  ];

  void pushToOpenSubscriptions(String operationName, Json data) {
    for (final (:request, :responses) in _openSubscriptions) {
      if (request.operation.operationName == operationName) {
        responses.add(Response(data: data, response: const {}));
      }
    }
  }

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    late final StreamController<Response> responses;
    responses = StreamController(
      onListen: () {
        _openSubscriptions.add((request: request, responses: responses));
        if (dataByOperationName[request.operation.operationName]
            case final data?) {
          responses.add(Response(data: data, response: const {}));
        }
      },
      onCancel: () => _openSubscriptions.removeWhere(
        (subscription) => identical(subscription.responses, responses),
      ),
    );

    return responses.stream;
  }
}
