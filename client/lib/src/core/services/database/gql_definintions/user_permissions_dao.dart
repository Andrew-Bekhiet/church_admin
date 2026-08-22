import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/__generated__/user_permissions.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/user_permissions/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/user_permissions/user_permissions_update_helper.dart';
import 'package:graphql/client.dart';

class UserPermissionsDAO {
  final DatabaseService _db;
  DBGraphQLClient get graphQLClient => _db.graphQLClient;
  UserPermissionsDAO({required this._db});

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

  Future<void> updateUserPermissions({
    required String userId,
    required PermissionsSet newPermissions,
    required PermissionsSet oldPermissions,
    required List<AdminOnData> newAdminOn,
    required List<AdminOnData> oldAdminOn,
  }) async {
    final helper = UserPermissionsUpdateHelper(
      userId: userId,
      newAdminOn: newAdminOn,
      oldAdminOn: oldAdminOn,
      newPermissions: newPermissions,
      oldPermissions: oldPermissions,
    );

    if (!helper.hasChanges) return;

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdateUserPermissions,
        operationName: 'updateUserPermissions',
        variables: helper.variables.toJson(),
        parserFn: (_) => null,
      ),
    );
  }
}
