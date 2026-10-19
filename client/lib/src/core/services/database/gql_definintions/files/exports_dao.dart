import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/files/__generated__/mutations.graphql.dart';
import 'package:graphql/client.dart' show FetchPolicy, MutationOptions;

class ExportsDAO {
  final DatabaseService _db;

  DBGraphQLClient get graphQLClient => _db.graphQLClient;

  ExportsDAO({required this._db});

  /// The absolute URL the exported workbook is downloaded from.
  Future<String> exportData({
    List<String> areasIds = const [],
    List<String> servicesIds = const [],
    List<String> classesIds = const [],
    List<String> groupsIds = const [],
  }) {
    const document = documentNodeMutationexportData;

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: document,
        operationName: 'exportData',
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables_Mutation_exportData(
          areasIds: areasIds,
          servicesIds: servicesIds,
          classesIds: classesIds,
          groupsIds: groupsIds,
        ).toJson(),
        parserFn: AshResultParser(document).actionResult(
          (value) => switch (value) {
            {'downloadUrl': final String downloadUrl} => downloadUrl,
            _ => throw StateError('An export link was expected, got $value'),
          },
        ),
      ),
      autoChangeFetchPolicy: false,
    );
  }
}
