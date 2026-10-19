import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/data_check_free_documents.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users/__generated__/subscriptions.gql.dart';
import 'package:graphql/client.dart';

class UsersDAO extends DAOBase<User>
    with LegacyStreamableDAO<User>, DataCheckFreeDocuments<User> {
  @override
  late final LegacyStreamAllConfig<User> baseStreamAllConfig = LegacyStreamAllConfig(
    document: documentNodeSubscriptionwatchAllUsers,
    transformRequest: _streamAllVarsConstructor,
  );
  @override
  late final LegacyStreamCountConfig<User> baseStreamCountConfig =
      const LegacyStreamCountConfig(
        document: documentNodeSubscriptionwatchAuthUsersDataCount,
      );
  @override
  late final LegacyStreamSingleByIdConfig<User> baseStreamSingleByIdConfig =
      const LegacyStreamSingleByIdConfig(document: documentNodeSubscriptionwatchUser);

  UsersDAO({required super.db}) : super(fromJson: User.fromJson);

  Json _streamAllVarsConstructor(
    PaginatableStreamRequest<User, StreamableDAOParameters<User>?> request,
  ) {
    final orderBy = request.param?.orderBy;

    return db.varsTransformer.transformrequestForPagination(
      request,
      overrideOrderBy: [
        ...?orderBy,
        OrderBy(field: UserFields().name),
      ],
    );
  }

  Json _streamSingleByIdVarsConstructor({
    required UuidValue id,
    bool fullData = false,
  }) => Variables_Subscription_watchUser(uid: id, fullData: fullData).toJson();

  @override
  Stream<User?> streamSingleById({
    required String id,
    bool fullData = false,
  }) {
    return streamSingleByIdWithConfig(
      id: id,
      streamSingleByIdConfig: baseStreamSingleByIdConfig.copyWith(
        variables: _streamSingleByIdVarsConstructor(
          id: id.toUuid(),
          fullData: fullData,
        ),
      ),
    );
  }

  Future<void> updateUser(UserUpdate update) async {
    if (!update.hasChanges) return;

    final result = await graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: transformDocument(documentNodeMutationupdateUser),
        operationName: 'updateUser',
        variables: Variables_Mutation_updateUser(
          uid: update.uid.toUuid(),
          $set: Input_AuthUsersDataSetInput.fromJson({
            if (update.name case final name?) 'name': name,
            if (update.email case final email?)
              'email': email.isEmpty ? null : email,
          }),
          updateUser: update.name != null || update.email != null,
          linkPersonId: update.linkPersonId?.toUuid(),
          linkPerson: update.linkPersonId != null,
          unlinkPersonId: update.unlinkPersonId?.toUuid(),
          unlinkPerson: update.unlinkPersonId != null,
        ).toJson(),
        parserFn: Mutation_updateUser.fromJson,
      ),
    );

    if (update.linkPersonId case final personId?
        when result.link?.affectedRows != 1) {
      if (update.unlinkPersonId case final unlinkedPersonId?
          when result.unlink?.affectedRows == 1) {
        await updateUser(
          UserUpdate(uid: update.uid, linkPersonId: unlinkedPersonId),
        );
      }

      throw PersonAlreadyLinkedException(personId);
    }
  }
}
