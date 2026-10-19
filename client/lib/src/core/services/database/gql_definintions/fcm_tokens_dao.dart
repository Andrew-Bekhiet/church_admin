import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/fcm_tokens/__generated__/mutations.graphql.dart';
import 'package:graphql/client.dart';

class FcmTokensDAO {
  final DatabaseService _db;
  DBGraphQLClient get graphQLClient => _db.graphQLClient;
  FcmTokensDAO({required this._db});

  Future<FcmToken> registerToken({required String token}) {
    const document = documentNodeMutationregisterFcmToken;

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: document,
        operationName: 'registerFcmToken',
        variables: Variables_Mutation_registerFcmToken(
          input: Input_RegisterFcmTokenInput(token: token),
        ).toJson(),
        parserFn: AshResultParser(document).mutationResult(FcmToken.fromJson),
      ),
    );
  }
}
