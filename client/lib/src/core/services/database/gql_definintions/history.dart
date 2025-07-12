import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/history/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/history/__generated__/subscriptions.gql.dart';
import 'package:graphql/client.dart';

class HistoryDAO {
  final DatabaseService db;

  DBGraphQLClient get graphQLClient => db.graphQLClient;

  HistoryDAO({required this.db});

  PaginatableStreamBase<LastRecordedByInfo>
      paginateEditHistory<T extends Viewable>({
    required String id,
  }) {
    return PaginatableStream.simple(
      factory: (request) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptioneditHistory,
            operationName: 'editHistory',
            variables: Variables_Subscription_editHistory(
              limit: request.pageSize,
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
                if (request.cursor != null)
                  Input_HistoryEditHistoryBoolExp(
                    time: Input_TimestamptzComparisonExp(
                      $_lt: request.cursor!.time,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: db.parser.singleListParser(
              LastRecordedByInfo.fromJson,
              pageSize: request.pageSize,
            ),
          ),
        );
      },
    );
  }

  PaginatableStreamBase<LastRecordedByInfo>
      paginateVisitHistory<T extends Viewable>({
    required String id,
    bool fatherVisit = false,
  }) {
    return PaginatableStream.simple(
      factory: (request) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionvisitHistory,
            operationName: 'visitHistory',
            variables: Variables_Subscription_visitHistory(
              limit: request.pageSize,
              where: [
                Input_HistoryVisitHistoryBoolExp(
                  table: Input_NameComparisonExp(
                    $_eq: ViewablesEnum.from<T>().toPluralString(),
                  ),
                ),
                Input_HistoryVisitHistoryBoolExp(
                  recordId: Input_UuidComparisonExp(
                    $_eq: id.toUuid(),
                  ),
                ),
                Input_HistoryVisitHistoryBoolExp(
                  isFatherVisit: Input_BooleanComparisonExp($_eq: fatherVisit),
                ),
                if (request.cursor != null)
                  Input_HistoryVisitHistoryBoolExp(
                    time: Input_TimestamptzComparisonExp(
                      $_lt: request.cursor!.time,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: db.parser.singleListParser(
              LastRecordedByInfo.fromJson,
              pageSize: request.pageSize,
            ),
          ),
        );
      },
    );
  }

  PaginatableStreamBase<LastRecordedByInfo> paginatePersonCallHistory({
    required String personId,
  }) {
    return PaginatableStream.simple(
      factory: (request) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionpersonCallHistory,
            operationName: 'personCallHistory',
            variables: Variables_Subscription_personCallHistory(
              personId: personId.toUuid(),
              limit: request.pageSize,
              where: [
                if (request.cursor != null)
                  Input_HistoryCallHistoryBoolExp(
                    time: Input_TimestamptzComparisonExp(
                      $_lt: request.cursor!.time,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: db.parser.singleListParser(
              LastRecordedByInfo.fromJson,
              pageSize: request.pageSize,
            ),
          ),
        );
      },
    );
  }

  PaginatableStreamBase<LastRecordedByInfo> paginatePersonConfessionHistory({
    required String personId,
  }) {
    return PaginatableStream.simple(
      factory: (request) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionpersonConfessionHistory,
            operationName: 'personConfessionHistory',
            variables: Variables_Subscription_personConfessionHistory(
              personId: personId.toUuid(),
              limit: request.pageSize,
              where: [
                if (request.cursor != null)
                  Input_HistoryConfessionHistoryBoolExp(
                    dayId: Input_DateComparisonExp(
                      $_lt: request.cursor!.time,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: db.parser.singleListParser(
              LastRecordedByInfo.fromJson,
              pageSize: request.pageSize,
            ),
          ),
        );
      },
    );
  }

  PaginatableStreamBase<LastRecordedByInfo> paginatePersonKodasHistory({
    required String personId,
  }) {
    return PaginatableStream.simple(
      factory: (request) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionpersonKodasHistory,
            operationName: 'personKodasHistory',
            variables: Variables_Subscription_personKodasHistory(
              personId: personId.toUuid(),
              limit: request.pageSize,
              where: [
                if (request.cursor != null)
                  Input_HistoryKodasHistoryBoolExp(
                    dayId: Input_DateComparisonExp(
                      $_lt: request.cursor!.time,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: db.parser.singleListParser(
              LastRecordedByInfo.fromJson,
              pageSize: request.pageSize,
            ),
          ),
        );
      },
    );
  }

  PaginatableStreamBase<LastRecordedByInfo> paginatePersonVisitHistory({
    required String personId,
  }) {
    return PaginatableStream.simple(
      factory: (request) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionpersonVisitHistory,
            operationName: 'personVisitHistory',
            variables: Variables_Subscription_personVisitHistory(
              personId: personId.toUuid(),
              limit: request.pageSize,
              where: [
                if (request.cursor != null)
                  Input_HistoryVisitHistoryBoolExp(
                    time: Input_TimestamptzComparisonExp(
                      $_lt: request.cursor!.time,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: db.parser.singleListParser(
              LastRecordedByInfo.fromJson,
              pageSize: request.pageSize,
            ),
          ),
        );
      },
    );
  }

  PaginatableStreamBase<LastRecordedByInfo> paginateFamilyVisitHistory({
    required String familyId,
    bool fatherVisit = false,
  }) {
    return paginateVisitHistory<Family>(
      id: familyId,
      fatherVisit: fatherVisit,
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

  Future<LastRecordedByInfo?> updatePersonLastVisit({
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
        parserFn: db.parser.singleOrNullParser(
          db.parser.singleOrNullParser(LastRecordedByInfo.fromJson),
        ),
      ),
    );
  }

  Future<LastRecordedByInfo?> updateFamilyLastVisit({
    required String familyId,
    required DateTime lastVisit,
    bool isFatherVisit = false,
  }) {
    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertFamilyLastVisit,
        operationName: 'insertFamilyLastVisit',
        variables: Variables_Mutation_insertFamilyLastVisit(
          familyId: familyId.toUuid(),
          lastVisit: lastVisit,
          isFatherVisit: isFatherVisit,
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(
          db.parser.singleOrNullParser(LastRecordedByInfo.fromJson),
        ),
      ),
    );
  }
}
