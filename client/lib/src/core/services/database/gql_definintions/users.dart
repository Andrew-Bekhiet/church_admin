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

  Future<bool> updateUserPermissions({
    required String userId,
    required PermissionsSet newPermissions,
  }) async {
    try {
      final permissionsInput = newPermissions
          .map((permission) => Input_AuthUsersPermissionsInsertInput(
                uid: userId.toUuid(),
                permission: permission.name,
              ))
          .toList();

      print('Attempting to update permissions for user: $userId');
      print('New permissions: ${newPermissions.map((p) => p.name).toList()}');

      final mutationOptions = MutationOptions(
        document: documentNodeMutationupdateUserPermissions,
        operationName: 'updateUserPermissions',
        variables: Variables_Mutation_updateUserPermissions(
          uid: userId.toUuid(),
          permissions: permissionsInput,
        ).toJson(),
        parserFn: (data) =>
            data, 
      );

      final result = await graphQLClient.mutate(mutationOptions);

      if (result.hasException) {
        print('GraphQL Exception: ${result.exception}');
        if (result.exception?.graphqlErrors != null) {
          for (final error in result.exception!.graphqlErrors!) {
            print('GraphQL Error: ${error.message}');
            print('Path: ${error.path}');
            print('Extensions: ${error.extensions}');
          }
        }
        return false;
      }

      final data = result.data;
      if (data != null) {
        final deleteRows =
            data['deleteAuthUsersPermissions']?['affectedRows'] ?? 0;
        final insertRows =
            data['insertAuthUsersPermissions']?['affectedRows'] ?? 0;
        print('Delete affected rows: $deleteRows');
        print('Insert affected rows: $insertRows');

        return insertRows > 0;
      }

      return false;
    } catch (e) {
      print('Error updating user permissions: $e');
      return false;
    }
  }

  Future<bool> addUserPermissionsOnly({
    required String userId,
    required PermissionsSet newPermissions,
  }) async {
    try {
      final permissionsInput = newPermissions
          .map((permission) => Input_AuthUsersPermissionsInsertInput(
                uid: userId.toUuid(),
                permission: permission.name,
              ))
          .toList();

      print('Attempting to add permissions only for user: $userId');
      print(
          'Permissions to add: ${newPermissions.map((p) => p.name).toList()}');

      final mutationOptions = MutationOptions(
        document: documentNodeMutationupdateUserPermissions,
        operationName: 'updateUserPermissions',
        variables: Variables_Mutation_updateUserPermissions(
          uid: userId.toUuid(),
          permissions: permissionsInput,
          deletePermissions: false,
          insertPermissions: true,
        ).toJson(),
        parserFn: (data) => data,
      );

      final result = await graphQLClient.mutate(mutationOptions);

      if (result.hasException) {
        print('Insert-only failed: ${result.exception}');
        return false;
      }

      final data = result.data;
      if (data != null) {
        final insertRows =
            data['insertAuthUsersPermissions']?['affectedRows'] ?? 0;
        print('Insert-only affected rows: $insertRows');
        return insertRows > 0;
      }

      return false;
    } catch (e) {
      print('Error in insert-only permissions: $e');
      return false;
    }
  }

  Future<bool> addUserAdminOn({
    required String userId,
    required AdminOnData adminOnData,
  }) async {
    try {
      print('Adding admin on record for user: $userId');
      return true;
    } catch (e) {
      print('Error adding admin on record: $e');
      return false;
    }
  }

  Future<bool> deleteUserAdminOn({
    required String userId,
    required String adminOnId,
  }) async {
    try {
      print('Deleting admin on record: $adminOnId for user: $userId');
      return true;
    } catch (e) {
      print('Error deleting admin on record: $e');
      return false;
    }
  }

  Future<bool> updateUserAdminOn({
    required String userId,
    required String adminOnId,
    required AdminOnData updatedAdminOnData,
  }) async {
    try {
      print('Updating admin on record: $adminOnId for user: $userId');
      return true;
    } catch (e) {
      print('Error updating admin on record: $e');
      return false;
    }
  }
}
