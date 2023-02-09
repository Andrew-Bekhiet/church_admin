import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:graphql/client.dart';

import 'history/__generated__/mutations.graphql.dart';
import 'history/__generated__/subscriptions.graphql.dart';

class HistoryDAO extends DAOBase {
  const HistoryDAO({
    required super.db,
  });

  GQLPaginatableStream<LastRecordedByInfo>
      paginateEditHistory<T extends Viewable>({
    required String id,
  }) {
    return GQLPaginatableStream(
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptioneditHistory,
            operationName: 'editHistory',
            variables: Variables$Subscription$editHistory(
              limit: instance.limit + 1,
              where: [
                Input$HistoryEditHistoryBoolExp(
                  table: Input$NameComparisonExp(
                    $_eq: ViewablesEnum.from<T>().toPluralString(),
                  ),
                ),
                Input$HistoryEditHistoryBoolExp(
                  recordId: Input$UuidComparisonExp(
                    $_eq: id.toUuid(),
                  ),
                ),
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
            parserFn: db.parser.singleListParser(LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> paginatePersonCallHistory({
    required String personId,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionpersonCallHistory,
            operationName: 'personCallHistory',
            variables: Variables$Subscription$personCallHistory(
              personId: personId.toUuid(),
              limit: instance.limit + 1,
              where: [
                if (offset > 0)
                  Input$HistoryCallHistoryBoolExp(
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
            parserFn: db.parser.singleListParser(LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> paginatePersonConfessionHistory({
    required String personId,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionpersonConfessionHistory,
            operationName: 'personConfessionHistory',
            variables: Variables$Subscription$personConfessionHistory(
              personId: personId.toUuid(),
              limit: instance.limit + 1,
              where: [
                if (offset > 0)
                  Input$HistoryConfessionHistoryBoolExp(
                    dayId: Input$DateComparisonExp(
                      $_lt: instance
                          .currentValue[(offset - 1) * instance.limit +
                              instance.limit -
                              1]
                          .time,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: db.parser.singleListParser(LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> paginatePersonKodasHistory({
    required String personId,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionpersonKodasHistory,
            operationName: 'personKodasHistory',
            variables: Variables$Subscription$personKodasHistory(
              personId: personId.toUuid(),
              limit: instance.limit + 1,
              where: [
                if (offset > 0)
                  Input$HistoryKodasHistoryBoolExp(
                    dayId: Input$DateComparisonExp(
                      $_lt: instance
                          .currentValue[(offset - 1) * instance.limit +
                              instance.limit -
                              1]
                          .time,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: db.parser.singleListParser(LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  GQLPaginatableStream<LastRecordedByInfo> paginatePersonVisitHistory({
    required String personId,
  }) {
    return GQLPaginatableStream<LastRecordedByInfo>(
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionpersonVisitHistory,
            operationName: 'personVisitHistory',
            variables: Variables$Subscription$personVisitHistory(
              personId: personId.toUuid(),
              limit: instance.limit + 1,
              where: [
                if (offset > 0)
                  Input$HistoryVisitHistoryBoolExp(
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
            parserFn: db.parser.singleListParser(LastRecordedByInfo.fromJson),
          ),
        );
      },
    );
  }

  Future<Person?> updatePersonLastCall({
    required String personId,
    required DateTime lastCall,
  }) {
    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertPersonLastCall,
        operationName: 'insertPersonLastCall',
        variables: Variables$Mutation$insertPersonLastCall(
          personId: personId.toUuid(),
          lastCall: lastCall,
        ).toJson(),
        parserFn: db.parser
            .singleOrNullParser(db.parser.singleOrNullParser(Person.fromJson)),
      ),
    );
  }

  Future<Person?> updatePersonLastConfession({
    required String personId,
    required DateTime lastConfession,
  }) {
    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertPersonLastConfession,
        operationName: 'insertPersonLastConfession',
        variables: Variables$Mutation$insertPersonLastConfession(
          personId: personId.toUuid(),
          lastConfession: lastConfession,
        ).toJson(),
        parserFn: db.parser
            .singleOrNullParser(db.parser.singleOrNullParser(Person.fromJson)),
      ),
    );
  }

  Future<Person?> updatePersonLastKodas({
    required String personId,
    required DateTime lastKodas,
  }) {
    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertPersonLastKodas,
        operationName: 'updatePersonLastKodas',
        variables: Variables$Mutation$insertPersonLastKodas(
          personId: personId.toUuid(),
          lastKodas: lastKodas,
        ).toJson(),
        parserFn: db.parser
            .singleOrNullParser(db.parser.singleOrNullParser(Person.fromJson)),
      ),
    );
  }

  Future<Person?> updatePersonLastVisit({
    required String personId,
    required DateTime lastVisit,
  }) {
    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertPersonLastVisit,
        operationName: 'insertPersonLastVisit',
        variables: Variables$Mutation$insertPersonLastVisit(
          personId: personId.toUuid(),
          lastVisit: lastVisit,
        ).toJson(),
        parserFn: db.parser
            .singleOrNullParser(db.parser.singleOrNullParser(Person.fromJson)),
      ),
    );
  }
}
