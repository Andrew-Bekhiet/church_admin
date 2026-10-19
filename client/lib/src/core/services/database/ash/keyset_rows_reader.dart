import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

class KeysetRowsReader {
  static const everyRow = 1 << 20;

  final DBGraphQLClient client;

  const KeysetRowsReader(this.client);

  Future<List<T>> read<T>({
    required DocumentNode document,
    required T Function(Json row) fromJson,
    required Json variables,
    int limit = everyRow,
  }) async {
    final pageQuery = KeysetPageQuery(
      client: client,
      document: document,
      fromJson: fromJson,
    );
    final fetchPolicy = client.queryFetchPolicy(onlineFirst: false);
    final chunks = await KeysetPageQuery.fetchChained(
      rows: limit,
      after: null,
      maxPageSize: AshPagination.maxPageSize,
      fetchChunk: (first, after) => pageQuery.fetch(
        variables: variables,
        chunk: KeysetChunkRequest(
          first: first,
          after: after,
          fetchPolicy: fetchPolicy,
        ),
      ),
    );

    return [for (final chunk in chunks) ...chunk.page.items];
  }
}
