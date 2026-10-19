import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/accounts/__generated__/mutations.graphql.dart';
import 'package:graphql/client.dart' show FetchPolicy, MutationOptions;

class AccountsDAO {
  static const _nothingToClaimCodes = {
    'unauthenticated',
    'account/not-claimable',
  };

  final DatabaseService _db;

  DBGraphQLClient get graphQLClient => _db.graphQLClient;

  AccountsDAO({required this._db});

  /// Whether the signed-in Firebase account was claimed; `false` when there
  /// is no seeded account for it to claim.
  Future<bool> tryClaimAccount() async {
    const document = documentNodeMutationtryClaimAccount;

    try {
      await graphQLClient.mutateAndReturnParsed(
        MutationOptions(
          document: document,
          operationName: 'tryClaimAccount',
          fetchPolicy: FetchPolicy.noCache,
          parserFn: AshResultParser(document).actionResult(_claimedUidOf),
        ),
        autoChangeFetchPolicy: false,
      );

      return true;
    } on BackendException catch (e) {
      if (!_nothingToClaimCodes.contains(e.code)) rethrow;

      return false;
    }
  }

  /// The uid of the account the invitation code claimed.
  Future<String> applyInvitationCode(String code) {
    const document = documentNodeMutationapplyInvitationCode;

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: document,
        operationName: 'applyInvitationCode',
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables_Mutation_applyInvitationCode(
          input: Input_ApplyInvitationCodeInput(code: code),
        ).toJson(),
        parserFn: AshResultParser(document).actionResult(_claimedUidOf),
      ),
      autoChangeFetchPolicy: false,
    );
  }

  Future<void> deleteMyAccount() async {
    const document = documentNodeMutationdeleteMyAccount;

    await graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: document,
        operationName: 'deleteMyAccount',
        fetchPolicy: FetchPolicy.noCache,
        parserFn: AshResultParser(document)
            .actionResult((value) => value == true),
      ),
      autoChangeFetchPolicy: false,
    );
  }

  String _claimedUidOf(Object? value) => switch (value) {
    {'uid': final String uid} => uid,
    _ => throw StateError('A claimed account was expected, got $value'),
  };
}
