import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/data_checks/__generated__/mutations.gql.dart';
import 'package:graphql/client.dart';

class DataChecksDAO {
  final DatabaseService _db;
  DBGraphQLClient get graphQLClient => _db.graphQLClient;
  DataChecksDAO({required this._db});

  Future<bool> tryOverride({
    required String familyId,
    required bool isComplete,
  }) async {
    final applied = await graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationoverrideDataCheck,
        operationName: 'overrideDataCheck',
        variables: Variables_Mutation_overrideDataCheck(
          familyId: familyId.toUuid(),
          isComplete: isComplete,
        ).toJson(),
        parserFn: (json) => Mutation_overrideDataCheck.fromJson(
          json,
        ).insertDataCheckOverridesOne,
      ),
    );

    return applied != null;
  }

  Future<void> clearOverride({required String familyId}) async {
    await graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationclearDataCheckOverride,
        operationName: 'clearDataCheckOverride',
        variables: Variables_Mutation_clearDataCheckOverride(
          familyId: familyId.toUuid(),
        ).toJson(),
        parserFn: (json) => Mutation_clearDataCheckOverride.fromJson(
          json,
        ).deleteDataCheckOverridesByPk,
      ),
    );
  }
}
