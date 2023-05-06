import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:graphql/client.dart';

import 'history/__generated__/mutations.gql.dart';
import 'history/__generated__/subscriptions.gql.dart';

class HistoryDAO extends DAOBase<LastRecordedByInfo> {
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
            variables: Variables_Subscription_editHistory(
              limit: instance.limit + 1,
              where: [
                Input_HistoryEditHistoryBoolExp(
                  table: Input_NameComparisonExp(
                    $_eq: ViewablesEnum.from<T>().toPluralString(),
                  ),
                ),
                Input_HistoryEditHistoryBoolExp(
                  recordId: Input_UuidComparisonExp(
                    $_eq: id.toUuid(),
                  ),
                ),
                if (offset > 0)
                  Input_HistoryEditHistoryBoolExp(
                    time: Input_TimestamptzComparisonExp(
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
            variables: Variables_Subscription_personCallHistory(
              personId: personId.toUuid(),
              limit: instance.limit + 1,
              where: [
                if (offset > 0)
                  Input_HistoryCallHistoryBoolExp(
                    time: Input_TimestamptzComparisonExp(
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
            variables: Variables_Subscription_personConfessionHistory(
              personId: personId.toUuid(),
              limit: instance.limit + 1,
              where: [
                if (offset > 0)
                  Input_HistoryConfessionHistoryBoolExp(
                    dayId: Input_DateComparisonExp(
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
            variables: Variables_Subscription_personKodasHistory(
              personId: personId.toUuid(),
              limit: instance.limit + 1,
              where: [
                if (offset > 0)
                  Input_HistoryKodasHistoryBoolExp(
                    dayId: Input_DateComparisonExp(
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
            variables: Variables_Subscription_personVisitHistory(
              personId: personId.toUuid(),
              limit: instance.limit + 1,
              where: [
                if (offset > 0)
                  Input_HistoryVisitHistoryBoolExp(
                    time: Input_TimestamptzComparisonExp(
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
        variables: Variables_Mutation_insertPersonLastCall(
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
        variables: Variables_Mutation_insertPersonLastConfession(
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
        variables: Variables_Mutation_insertPersonLastKodas(
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
        variables: Variables_Mutation_insertPersonLastVisit(
          personId: personId.toUuid(),
          lastVisit: lastVisit,
        ).toJson(),
        parserFn: db.parser
            .singleOrNullParser(db.parser.singleOrNullParser(Person.fromJson)),
      ),
    );
  }

  @override
  Stream<List<LastRecordedByInfo>> streamAll({Stream<String?>? searchQuery}) {
    // TODO: split this class into 3 different classes
    throw UnimplementedError();
  }
}
