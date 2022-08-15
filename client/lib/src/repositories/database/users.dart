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
              final result = WatchUser$SubscriptionRoot.fromJson(d).usersByPk;

              if (result == null) return null;

              return User.fromJson(result.toJson());
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
                parserFn: (d) => UserEditHistory$SubscriptionRoot.fromJson(d)
                    .historyEditHistory
                    .map((e) => LastRecordedByInfo.fromJson(e.toJson())),
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
}
