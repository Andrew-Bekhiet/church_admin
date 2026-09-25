import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users/__generated__/subscriptions.gql.dart';
import 'package:graphql/client.dart';

class UsersDAO extends DAOBase<User> with StreamableDAO<User> {
  @override
  late final StreamAllConfig<User> baseStreamAllConfig = StreamAllConfig(
    document: documentNodeSubscriptionwatchAllUsers,
    transformRequest: _streamAllVarsConstructor,
  );
  @override
  late final StreamCountConfig<User> baseStreamCountConfig =
      const StreamCountConfig(
        document: documentNodeSubscriptionwatchAuthUsersDataCount,
      );
  @override
  late final StreamSingleByIdConfig<User> baseStreamSingleByIdConfig =
      const StreamSingleByIdConfig(document: documentNodeSubscriptionwatchUser);

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
    return streamingProxy.streamSingleById(
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

    await graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationupdateUser,
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
  }
}
