import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/fcm_tokens/__generated__/fragments.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/fcm_tokens/__generated__/mutations.gql.dart';
import 'package:graphql/client.dart';

class FcmTokensDAO {
  final DatabaseService _db;
  DBGraphQLClient get graphQLClient => _db.graphQLClient;
  FcmTokensDAO({required this._db});

  Future<Fragment_FcmToken?> registerToken({
    required String uid,
    required String token,
  }) {
    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationregisterFcmToken,
        operationName: 'registerFcmToken',
        variables: Variables_Mutation_registerFcmToken(
          object: Input_UsersFcmTokensInsertInput(
            uid: uid.toUuid(),
            token: token,
          ),
        ).toJson(),
        parserFn: (json) =>
            Mutation_registerFcmToken.fromJson(json).insertUsersFcmTokensOne,
      ),
    );
  }
}
