import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'users/__generated__/queries.graphql.dart';
import 'users/__generated__/subscriptions.graphql.dart';

class UsersDAO extends DAOBase {
  const UsersDAO({
    required super.db,
  });

  Stream<User> getUserInfoStream({required String uid}) {
    return graphQLClient
        .subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetUserInfoStream,
            operationName: 'getUserInfoStream',
            variables:
                Variables$Subscription$getUserInfoStream(uid: uid.toUuid())
                    .toJson(),
            parserFn: (m) => User.fromJson(m.values.first),
          ),
        )
        .map(exceptionsMiddleware)
        .map((u) => u.parsedData!);
  }

  Stream<User?> watchUser({
    required String userId,
  }) {
    return graphQLClient
        .subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchUser,
            operationName: 'watchUser',
            variables:
                Variables$Subscription$watchUser(uid: userId.toUuid()).toJson(),
            parserFn: (d) {
              if (d.values.first == null) return null;

              return User.fromJson(castAllHashMaps(d.values.first));
            },
          ),
        )
        .map(exceptionsMiddleware)
        .map((u) => u.parsedData);
  }

  GQLPaginatableStream<LastRecordedByInfo> userEditHistory({
    required String userId,
  }) {
    userId.validateUuid();

    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;

        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionuserEditHistory,
            operationName: 'userEditHistory',
            variables: Variables$Subscription$userEditHistory(
              userId: userId.toUuid(),
              limit: instance.limit + 1,
              where: [
                if (offset > 0)
                  Input$HistoryEditHistoryBoolExp(
                    time: Input$TimestamptzComparisonExp(
                      $_lt: instance
                          .currentValue[(offset - 1) * instance.limit +
                              instance.limit -
                              1]
                          .time,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  Stream<User?> analyzeUserAttendance({
    required String personId,
    required String userId,
    required DateTime dateFrom,
    required DateTime dateTo,
    required Iterable<String> groupsIds,
    required Iterable<String> classesIds,
    required Iterable<String> servicesIds,
  }) {
    final watchQuery = graphQLClient.watchQuery(
      WatchQueryOptions(
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
        parserFn: (d) => User.fromJson(
          castAllHashMaps(d.values.first),
        ),
      ),
    );
    watchQuery.onData([
      (r) async =>
          r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
              ? watchQuery.refetch()
              : null
    ]);

    return watchQuery.stream
        .map(exceptionsMiddleware)
        .map((value) => value.parsedData);
  }
}
