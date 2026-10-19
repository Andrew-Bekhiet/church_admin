import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/data_checks/__generated__/mutations.graphql.dart';
import 'package:graphql/client.dart';

class DataChecksDAO {
  final DatabaseService _db;

  DBGraphQLClient get graphQLClient => _db.graphQLClient;

  DataChecksDAO({required this._db});

  Future<bool> tryOverride({
    required String familyId,
    required bool isComplete,
  }) async {
    const document = documentNodeMutationoverrideDataCheck;

    final applied = await graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: document,
        operationName: 'overrideDataCheck',
        variables: Variables_Mutation_overrideDataCheck(
          input: Input_OverrideDataCheckInput(
            familyId: familyId,
            isComplete: isComplete,
          ),
        ).toJson(),
        parserFn: AshResultParser(document).mutationResultOrNull(
          (override) => override,
        ),
      ),
    );

    return applied != null;
  }

  Future<bool> tryClearOverride({required String familyId}) async {
    const document = documentNodeMutationclearDataCheckOverride;

    try {
      final cleared = await graphQLClient.mutateAndReturnParsedNullable(
        MutationOptions(
          document: document,
          operationName: 'clearDataCheckOverride',
          variables: Variables_Mutation_clearDataCheckOverride(
            id: familyId,
          ).toJson(),
          parserFn: AshResultParser(document).mutationResultOrNull(
            (override) => override,
          ),
        ),
      );

      return cleared != null;
    } on BackendNotFoundException {
      return false;
    }
  }
}
