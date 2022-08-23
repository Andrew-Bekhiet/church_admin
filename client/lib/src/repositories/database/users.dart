part of '../database_repository.dart';

class UsersQueries {
  UsersQueries._();

  Stream<QueryResult<GetUserInfoStream$SubscriptionRoot$Users>>
      getUserInfoStream({required String uid}) {
    final subscription = GetUserInfoStreamSubscription(
      variables: GetUserInfoStreamArguments(uid: UuidValue(uid)),
    );
    return GetIt.I<GraphQLClient>()
        .subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (m) => GetUserInfoStream$SubscriptionRoot$Users.fromJson(
              m.values.single,
            ),
          ),
        )
        .map(_exceptionsMiddleware);
  }

  Stream<User?> watchUser({
    required String userId,
  }) {
    final WatchUserSubscription subscription = WatchUserSubscription(
      variables: WatchUserArguments(uid: UuidValue(userId)),
    );

    return GetIt.I<GraphQLClient>()
        .subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) {
              if (d.values.single == null) return null;

              return User.fromJson(d.values.single);
            },
          ),
        )
        .map(_exceptionsMiddleware)
        .map((u) => u.parsedData);
  }

  DelegatingPaginatableStream<LastRecordedByInfo> userEditHistory({
    required String userId,
  }) {
    return DelegatingPaginatableStream<LastRecordedByInfo>(
      onQuery: (instance, offset) {
        final UserEditHistorySubscription subscription =
            UserEditHistorySubscription(
          variables: UserEditHistoryArguments(
            userId: UuidValue(userId),
            limit: instance.limit + 1,
            addWhere: [
              if (offset > 0)
                HistoryEditHistoryBoolExp(
                  time: TimestamptzComparisonExp(
                    $lt: instance
                        .currentValue[
                            (offset - 1) * instance.limit + instance.limit - 1]
                        .time,
                  ),
                ),
            ],
          ),
        );

        return GetIt.I<GraphQLClient>()
            .subscribe(
              SubscriptionOptions(
                document: subscription.document,
                operationName: subscription.operationName,
                variables: subscription.variables.toJson().stripNullValues(),
                parserFn: (d) => _parseListOfT(d, LastRecordedByInfo.fromJson),
              ),
            )
            .map(_exceptionsMiddleware)
            .map(
              (event) => _clampResults(
                null,
                null,
                offset,
                instance,
                event.parsedData!.toList(),
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
    final AnalyzeUserAttendanceQuery query = AnalyzeUserAttendanceQuery(
      variables: AnalyzeUserAttendanceArguments(
        userId: UuidValue(userId),
        personId: UuidValue(personId),
        dateFrom: dateFrom,
        dateTo: dateTo,
        classesIds: classesIds,
        groupsIds: groupsIds,
        servicesIds: servicesIds,
      ),
    );

    final watchQuery = GetIt.I<GraphQLClient>().watchQuery(
      WatchQueryOptions(
        fetchResults: true,
        eagerlyFetchResults: false,
        document: query.document,
        operationName: query.operationName,
        variables: query.variables.toJson().stripNullValues(),
        parserFn: (d) => User.fromJson(
          d.values.single,
        ),
      ),
    );
    watchQuery.onData([
      (r) => r?.source == QueryResultSource.cache && watchQuery.isRefetchSafe
          ? watchQuery.refetch()
          : null
    ]);

    return watchQuery.stream
        .map(_exceptionsMiddleware)
        .map((value) => value.parsedData);
  }
}
