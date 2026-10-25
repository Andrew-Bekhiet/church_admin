import 'package:graphql_flutter/graphql_flutter.dart';

class ErroringGraphQLLink extends Link {
  final String message;

  ErroringGraphQLLink(this.message);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    return Stream.value(
      Response(
        errors: [GraphQLError(message: message)],
        response: const {},
      ),
    );
  }
}
