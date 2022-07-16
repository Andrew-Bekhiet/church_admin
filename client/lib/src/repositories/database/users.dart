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
}
