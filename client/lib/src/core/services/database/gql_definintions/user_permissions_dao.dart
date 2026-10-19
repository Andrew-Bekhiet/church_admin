import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/user_permissions/__generated__/mutations.graphql.dart';
import 'package:collection/collection.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';

class UserPermissionsDAO {
  final DatabaseService _db;
  DBGraphQLClient get graphQLClient => _db.graphQLClient;
  UserPermissionsDAO({required this._db});

  Future<void> approveUser(String uid) => _mutate(
    documentNodeMutationapproveUser,
    'approveUser',
    Variables_Mutation_approveUser(id: uid).toJson(),
  );

  Future<void> unapproveUser(String uid) => _mutate(
    documentNodeMutationunapproveUser,
    'unapproveUser',
    Variables_Mutation_unapproveUser(id: uid).toJson(),
  );

  /// Sends the desired sets; the old ones only spare a request when nothing
  /// changed.
  Future<void> updateUserPermissions({
    required String userId,
    required PermissionsSet newPermissions,
    required PermissionsSet oldPermissions,
    required List<AdminOnData> newAdminOn,
    required List<AdminOnData> oldAdminOn,
  }) {
    final changesNothing =
        const SetEquality<UserPermission>().equals(
          newPermissions.toSet(),
          oldPermissions.toSet(),
        ) &&
        const SetEquality<AdminOnData>().equals(
          newAdminOn.toSet(),
          oldAdminOn.toSet(),
        );
    if (changesNothing) return Future.value();

    return _mutate(
      documentNodeMutationupdateUserPermissions,
      'updateUserPermissions',
      Variables_Mutation_updateUserPermissions(
        id: userId,
        input: Input_UpdateUserPermissionsInput(
          permissions: newPermissions.map((p) => p.name).toList(),
          adminOn: newAdminOn.map((data) => data.toCommandInput()).toList(),
        ),
      ).toJson(),
    );
  }

  Future<void> _mutate(
    DocumentNode document,
    String operationName,
    Json variables,
  ) async {
    await graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: document,
        operationName: operationName,
        variables: variables,
        parserFn: AshResultParser(
          document,
        ).mutationResult((json) => json['id'] as String),
      ),
    );
  }
}
