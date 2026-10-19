import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users_preferences/__generated__/mutations.graphql.dart';
import 'package:graphql/client.dart';

class UserPreferencesDAO {
  final DatabaseService _db;
  DBGraphQLClient get graphQLClient => _db.graphQLClient;
  UserPreferencesDAO({required this._db});

  /// Writes the signed-in user's preferences. [scalars] are set as given, a
  /// null value included; a patch merges into its stored map, and a null
  /// value inside it removes that key. An empty patch leaves the map alone.
  Future<UserPreferences> updatePreferences({
    Json scalars = const {},
    Json orderByPatch = const {},
    Json secondLinePatch = const {},
  }) {
    const document = documentNodeMutationupdateMyPreferences;

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: document,
        operationName: 'updateMyPreferences',
        variables: Variables_Mutation_updateMyPreferences(
          input: Input_UpdateMyPreferencesInput.fromJson({
            ...scalars,
            if (orderByPatch.isNotEmpty)
              'orderByPreferencesPatch': orderByPatch,
            if (secondLinePatch.isNotEmpty)
              'secondLinePreferencesPatch': secondLinePatch,
          }),
        ).toJson(),
        parserFn: AshResultParser(
          document,
        ).mutationResult(UserPreferences.fromJson),
      ),
    );
  }
}
