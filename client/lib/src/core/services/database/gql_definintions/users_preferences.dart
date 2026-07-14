import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users_preferences/__generated__/fragments.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users_preferences/__generated__/mutations.gql.dart';
import 'package:graphql/client.dart';

class UserPreferencesDAO {
  UserPreferencesDAO({required DatabaseService db}) : _db = db;

  final DatabaseService _db;
  DBGraphQLClient get graphQLClient => _db.graphQLClient;

  Future<Fragment_UserPreferences?> updatePreferences({
    required String uid,
    Input_UsersPreferencesSetInput? set,
    Input_UsersPreferencesAppendInput? append,
  }) {
    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdateUserPreferences,
        operationName: 'updateUserPreferences',
        variables: Variables_Mutation_updateUserPreferences(
          uid: uid.toUuid(),
          $set: set,
          append: append,
        ).toJson(),
        parserFn: (json) => Mutation_updateUserPreferences.fromJson(
          json,
        ).updateUsersPreferencesByPk,
      ),
    );
  }
}
