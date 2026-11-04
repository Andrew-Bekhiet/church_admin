import 'package:graphql/client.dart';

extension QueryResultHash on QueryResult<Object?> {
  /// The server's `extensions.resultHash` of this result's data, known only
  /// when the result came from the network.
  String? get resultHash {
    if (source != QueryResultSource.network) return null;

    return switch (context.entry<ResponseExtensions>()?.extensions) {
      {'resultHash': final String hash} => hash,
      _ => null,
    };
  }
}
