import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/__generated__/user_permissions.graphql.dart';
import 'package:graphql/client.dart';

class UserPermissionsDAO {
  UserPermissionsDAO({required DatabaseService db}) : _db = db;

  final DatabaseService _db;
  DBGraphQLClient get graphQLClient => _db.graphQLClient;

  Future<void> approveUser(String uid) async {
    await graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationapproveUser,
        operationName: 'approveUser',
        variables: Variables_Mutation_approveUser(uid: uid.toUuid()).toJson(),
        parserFn: Mutation_approveUser.fromJson,
      ),
    );
  }

  Future<void> unapproveUser(String uid) async {
    await graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationunapproveUser,
        operationName: 'unapproveUser',
        variables: Variables_Mutation_unapproveUser(uid: uid.toUuid()).toJson(),
        parserFn: Mutation_unapproveUser.fromJson,
      ),
    );
  }
}
