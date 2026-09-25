import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/invitations/__generated__/mutations.gql.dart';
import 'package:graphql/client.dart';

class InvitationsDAO {
  final DatabaseService _db;

  DBGraphQLClient get graphQLClient => _db.graphQLClient;

  InvitationsDAO({required this._db});

  Future<Invitation> createInvitation({
    required String userUid,
    required DateTime expiresAt,
  }) async {
    final result = await graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertInvitation,
        operationName: 'insertInvitation',
        variables: Variables_Mutation_insertInvitation(
          userUid: userUid.toUuid(),
          expiresAt: expiresAt,
        ).toJson(),
        parserFn: Mutation_insertInvitation.fromJson,
      ),
    );

    return Invitation.fromJson(result.insertAuthInvitationsOne!.toJson());
  }

  Future<void> updateInvitationExpiry({
    required String id,
    required DateTime expiresAt,
  }) async {
    await graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationupdateInvitationExpiry,
        operationName: 'updateInvitationExpiry',
        variables: Variables_Mutation_updateInvitationExpiry(
          id: id.toUuid(),
          expiresAt: expiresAt,
        ).toJson(),
        parserFn: Mutation_updateInvitationExpiry.fromJson,
      ),
    );
  }
}
