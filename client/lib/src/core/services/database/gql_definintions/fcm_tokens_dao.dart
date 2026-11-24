import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/fcm_tokens/__generated__/mutations.gql.dart';
import 'package:graphql/client.dart';

class FcmTokensDAO {
  final DatabaseService _db;
  DBGraphQLClient get graphQLClient => _db.graphQLClient;
  FcmTokensDAO({required this._db});

  Future<void> deleteByUidAndToken({
    required String uid,
    required String token,
  }) async {
    await graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationdeleteFcmTokenByUidAndToken,
        operationName: 'deleteFcmTokenByUidAndToken',
        variables: Variables_Mutation_deleteFcmTokenByUidAndToken(
          uid: uid.toUuid(),
          token: token,
        ).toJson(),
        parserFn: (json) => Mutation_deleteFcmTokenByUidAndToken.fromJson(
          json,
        ).deleteUsersFcmTokensByPk,
      ),
    );
  }
}
