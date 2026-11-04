import 'dart:math' as math;

import 'package:church_admin/church_admin.dart';
import 'package:gql/language.dart';
import 'package:graphql/client.dart';

/// Runs a registered live query against a backend link the way the server
/// does: a list window in chunks chained by their end keysets, merged into
/// one page, and anything else once.
abstract final class FakeLiveResults {
  static Future<Json> run(Link backend, Json registration) async {
    final document = parseString(registration['document'] as String);
    final operationName = registration['operationName'] as String?;
    final variables = (registration['variables'] as Map)
        .cast<String, dynamic>();

    Future<Json> execute(Json paging) async {
      final response = await backend
          .request(
            Request(
              operation: Operation(
                document: document,
                operationName: operationName,
              ),
              variables: {...variables, ...paging},
            ),
          )
          .first;

      return response.data!;
    }

    final window = registration['window'] as Map?;
    if (window == null) return execute({});

    final rootField = AshResultParser.rootFieldOf(document);
    final chunkSize = window['chunk'] as int;
    var remaining = window['rows'] as int;
    String? after;
    final results = <Object?>[];
    Json? last;
    while (remaining > 0) {
      final first = math.min(remaining, chunkSize);
      final chunk = await execute({'first': first, 'after': ?after});
      last = chunk;
      final page = chunk[rootField] as Map;
      final rows = page['results'] as List;
      results.addAll(rows);
      remaining -= rows.length;
      after = page['endKeyset'] as String?;
      if (rows.length < first) break;
    }

    return {
      ...?last,
      rootField: {
        ...(last?[rootField] as Map? ?? {}).cast<String, dynamic>(),
        'results': results,
      },
    };
  }
}
