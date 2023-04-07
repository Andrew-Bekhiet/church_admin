import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'users/__generated__/queries.gql.dart';
import 'users/__generated__/subscriptions.gql.dart';

class UsersDAO extends DAOBase {
  const UsersDAO({
    required super.db,
  });

  GQLPaginatableStream<User> paginateUsers({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<User>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllUsers,
            operationName: 'watchAllUsers',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables$Subscription$watchAllUsers.new,
                  Input$AuthUsersDataBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(User.fromJson),
          ),
        );
      },
    );
  }

  Stream<User?> watchUser({
    required String uid,
    bool fullData = false,
  }) {
    return graphQLClient.subscribeAndReturnParsedNullable(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchUser,
        operationName: 'watchUser',
        variables: Variables$Subscription$watchUser(
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
      variables: Variables$Query$analyzeUserAttendance(
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
