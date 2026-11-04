import 'dart:math' as math;

import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';

/// One keyset list query of an Ash read action, fetched a chunk at a time.
class KeysetPageQuery<T> {
  /// Loads [rows] rows after [after] in chunks of at most [maxPageSize],
  /// each continuing from the previous chunk's end keyset; stops early at a
  /// short chunk.
  static Future<List<KeysetChunk<T>>> fetchChained<T>({
    required int rows,
    required String? after,
    required int maxPageSize,
    required Future<KeysetChunk<T>> Function(int first, String? after)
    fetchChunk,
  }) async {
    final chunks = <KeysetChunk<T>>[];
    var remaining = rows;
    var cursor = after;
    while (remaining > 0) {
      final first = math.min(remaining, maxPageSize);
      final chunk = await fetchChunk(first, cursor);
      chunks.add(chunk);
      remaining -= chunk.page.items.length;
      cursor = chunk.page.endKeyset;
      if (chunk.page.items.length < first) break;
    }

    return chunks;
  }

  final DBGraphQLClient client;
  final DocumentNode document;
  final String? operationName;
  final KeysetPage<T> Function(Json data) parsePage;

  KeysetPageQuery({
    required this.client,
    required this.document,
    required T Function(Json) fromJson,
    this.operationName,
  }) : parsePage = AshResultParser(document).page(fromJson);

  Future<KeysetChunk<T>> fetch({
    required Json variables,
    required KeysetChunkRequest chunk,
  }) async {
    final result = await client.query(
      QueryOptions(
        document: document,
        operationName: operationName,
        fetchPolicy: chunk.fetchPolicy,
        variables: {
          ...variables,
          'first': chunk.first,
          if (chunk.after case final after?) 'after': after,
        },
        parserFn: parsePage,
      ),
      autoChangeFetchPolicy: false,
    );

    return switch (result) {
      QueryResult(:final data?, :final parsedData?) => KeysetChunk(
        page: parsedData,
        data: data,
        resultHash: result.resultHash,
      ),
      _ => throw BackendUnknownException(
        '${AshResultParser.rootFieldOf(document)} answered without data',
      ),
    };
  }
}

@immutable
class KeysetChunkRequest {
  final int first;
  final String? after;
  final FetchPolicy fetchPolicy;

  const KeysetChunkRequest({
    required this.first,
    required this.after,
    required this.fetchPolicy,
  });
}

@immutable
class KeysetChunk<T> {
  final KeysetPage<T> page;
  final Json data;

  /// The server's hash of [data], present only for a chunk that came from the
  /// network.
  final String? resultHash;

  const KeysetChunk({
    required this.page,
    required this.data,
    this.resultHash,
  });
}
