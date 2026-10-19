import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/files/__generated__/queries.graphql.dart';
import 'package:graphql/client.dart' show FetchPolicy, QueryOptions;

class ReleasesDAO {
  final DatabaseService _db;

  DBGraphQLClient get graphQLClient => _db.graphQLClient;

  ReleasesDAO({required this._db});

  Future<AppDownloadLink> appDownloadLink({
    required Enum_AppPlatform platform,
  }) {
    const document = documentNodeQueryappDownloadLink;

    return graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: document,
        operationName: 'appDownloadLink',
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables_Query_appDownloadLink(platform: platform).toJson(),
        parserFn: AshResultParser(document).actionResult(
          (value) => switch (value) {
            final Json json => AppDownloadLink.fromJson(json),
            _ => throw StateError(
              'An app download link was expected, got $value',
            ),
          },
        ),
      ),
      autoChangeFetchPolicy: false,
    );
  }
}
