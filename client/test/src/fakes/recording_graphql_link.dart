import 'package:graphql_flutter/graphql_flutter.dart';

class RecordingGraphQLLink extends Link {
  final List<Request> requests = [];
  final Map<String, dynamic> data;

  RecordingGraphQLLink(this.data);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);

    return Stream.value(Response(data: data, response: const {}));
  }
}
