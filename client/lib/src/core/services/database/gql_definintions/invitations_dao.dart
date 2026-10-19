import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/invitations/__generated__/mutations.graphql.dart';
import 'package:graphql/client.dart';

class InvitationsDAO {
  final DatabaseService _db;

  DBGraphQLClient get graphQLClient => _db.graphQLClient;

  InvitationsDAO({required this._db});

  Future<Invitation> createInvitation({
    required String userUid,
    required DateTime expiresAt,
  }) {
    const document = documentNodeMutationcreateInvitation;

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: document,
        operationName: 'createInvitation',
        variables: Variables_Mutation_createInvitation(
          input: Input_CreateInvitationInput(
            userUid: userUid,
            expiresAt: expiresAt,
          ),
        ).toJson(),
        parserFn: AshResultParser(document).mutationResult(Invitation.fromJson),
      ),
    );
  }

  Future<void> updateInvitationExpiry({
    required String id,
    required DateTime expiresAt,
  }) async {
    const document = documentNodeMutationupdateInvitationExpiry;

    await graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: document,
        operationName: 'updateInvitationExpiry',
        variables: Variables_Mutation_updateInvitationExpiry(
          id: id,
          input: Input_UpdateInvitationExpiryInput(expiresAt: expiresAt),
        ).toJson(),
        parserFn: AshResultParser(document).mutationResult(Invitation.fromJson),
      ),
    );
  }
}
