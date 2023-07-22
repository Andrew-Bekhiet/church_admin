import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'users/__generated__/queries.gql.dart';
import 'users/__generated__/subscriptions.gql.dart';

class UsersDAO extends DAOBase<User> {
  const UsersDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<User> streamAll({
    Stream<String?>? searchQuery,
    List<Input_AuthUsersDataBoolExp>? where,
  }) {
    return GQLPaginatableStream<User>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final defaultSearchVars = graphQLClient.getDefaultSearchVars(
          event,
          Variables_Subscription_watchAllUsers.new,
          Input_AuthUsersDataBoolExp.new,
        );

        final variables = defaultSearchVars.copyWith(
          where: [
            if (where != null) ...where,
            if (defaultSearchVars.where != null) ...defaultSearchVars.where!,
          ],
          orderBy: [
            ...defaultSearchVars.orderBy ?? [],
            Input_AuthUsersDataOrderBy(
              permissionsAggregate: Input_AuthUsersPermissionsAggregateOrderBy(
                count: Enum_OrderBy.DESC,
              ),
            ),
            Input_AuthUsersDataOrderBy(name: Enum_OrderBy.ASC),
            Input_AuthUsersDataOrderBy(email: Enum_OrderBy.ASC),
          ],
        ).toJson();

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllUsers,
            operationName: 'watchAllUsers',
            variables: variables,
            parserFn: db.parser.singleListParser(User.fromJson),
          ),
        );
      },
    );
  }

  Stream<User?> streamSingleById({
    required String uid,
    bool fullData = false,
  }) {
    return graphQLClient.subscribeAndReturnParsedNullable(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchUser,
        operationName: 'watchUser',
        variables: Variables_Subscription_watchUser(
          uid: uid.toUuid(),
          fullData: fullData,
        ).toJson(),
        parserFn: db.parser.singleParser(User.fromJson),
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
}
