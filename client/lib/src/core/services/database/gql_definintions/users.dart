import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users/__generated__/queries.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users/__generated__/subscriptions.gql.dart';
import 'package:graphql/client.dart';

class UsersDAO extends DAOBase<User> with StreamableDAO<User> {
  UsersDAO({required super.db}) : super(fromJson: User.fromJson);

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

  Json _streamAllVarsConstructor(
    PaginatableStreamRequest<User, StreamableDAOParameters<User>?> request,
  ) {
    final orderBy = request.param?.orderBy;

    return db.varsTransformer.transformrequestForPagination(
      request,
      overrideOrderBy: [
        ...?orderBy,
        OrderBy(
          field: UserFields()
              .permissionsAggregate
              .redirectTo(AggregateDataFields().count),
          value: OrderByValue.desc,
        ),
        OrderBy(field: UserFields().name),
        OrderBy(field: UserFields().email),
      ].map((o) => o.toSearchJson()).toList(),
    );
  }

  Json _streamSingleByIdVarsConstructor({
    required UuidValue id,
    bool fullData = false,
  }) =>
      Variables_Subscription_watchUser(uid: id, fullData: fullData).toJson();

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

  Future<User?> analyzeUserAttendance({
    required String personId,
    required String userId,
    required DateTime dateFrom,
    required DateTime dateTo,
    required Iterable<String> groupsIds,
    required Iterable<String> classesIds,
    required Iterable<String> servicesIds,
  }) {
    final queryOptions = WatchQueryOptions(
      fetchResults: true,
      eagerlyFetchResults: false,
      document: documentNodeQueryanalyzeUserAttendance,
      operationName: 'analyzeUserAttendance',
      variables: Variables_Query_analyzeUserAttendance(
        userId: userId.toUuid(),
        personId: personId.toUuid(),
        dateFrom: dateFrom,
        dateTo: dateTo,
        classesIds: classesIds.map((e) => e.toUuid()).toList(),
        groupsIds: groupsIds.map((e) => e.toUuid()).toList(),
        servicesIds: servicesIds.map((e) => e.toUuid()).toList(),
      ).toJson(),
      parserFn: db.parser.singleParser(User.fromJson),
    );

    return graphQLClient.queryAndReturnParsedNullable(queryOptions);
  }

  Future<void> updateUserPermissions({
    required String userId,
    required PermissionsSet newPermissions,
    required PermissionsSet oldPermissions,
  }) async {
    final difference = diff(oldPermissions, newPermissions);

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdateUserPermissions,
        operationName: 'updateUserPermissions',
        variables: Variables_Mutation_updateUserPermissions(
          uid: userId.toUuid(),
          insertPermissions: difference.added.isNotEmpty,
          deletePermissions: difference.removed.isNotEmpty,
          permissionsToDelete:
              difference.removed.map((permission) => permission.name).toList(),
          permissionsToInsert: difference.added
              .map(
                (permission) => Input_AuthUsersPermissionsInsertInput(
                  uid: userId.toUuid(),
                  permission: permission.name,
                ),
              )
              .toList(),
        ).toJson(),
        parserFn: (_) => null,
      ),
    );
  }
}
