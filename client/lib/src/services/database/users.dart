part of '../database_service.dart';

class UsersQueries {
  const UsersQueries._();

  Stream<User> getUserInfoStream({required String uid}) {
    return GetIt.I<GraphQLClient>()
        .subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetUserInfoStream,
            operationName: 'getUserInfoStream',
            variables:
                Variables$Subscription$getUserInfoStream(uid: UuidValue(uid))
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
    return GetIt.I<GraphQLClient>()
        .subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchUser,
            operationName: 'watchUser',
            variables: Variables$Subscription$watchUser(uid: UuidValue(userId))
                .toJson(),
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

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionuserEditHistory,
            operationName: 'userEditHistory',
            variables: Variables$Subscription$userEditHistory(
              userId: UuidValue(userId),
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
            parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
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
    required List<UuidValue> groupsIds,
    required List<UuidValue> classesIds,
    required List<UuidValue> servicesIds,
  }) {
    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        fetchResults: true,
        eagerlyFetchResults: false,
        document: documentNodeQueryanalyzeUserAttendance,
        operationName: 'analyzeUserAttendance',
        variables: Variables$Query$analyzeUserAttendance(
          userId: UuidValue(userId),
          personId: UuidValue(personId),
          dateFrom: dateFrom,
          dateTo: dateTo,
          classesIds: classesIds,
          groupsIds: groupsIds,
          servicesIds: servicesIds,
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
