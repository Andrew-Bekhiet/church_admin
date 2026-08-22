import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/history/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/history/__generated__/subscriptions.gql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';

class HistoryDAO {
  final DatabaseService db;

  DBGraphQLClient get graphQLClient => db.graphQLClient;

  HistoryDAO({required this.db});

  PaginatableStreamBase<LastRecordedByInfo> _paginateHistory({
    required DocumentNode document,
    required String operationName,
    required Map<String, dynamic> Function(
      PaginatableStreamRequest<LastRecordedByInfo, void> request,
    )
    variables,
  }) => PaginatableStream<LastRecordedByInfo, void>.simple(
    factory: (request) => graphQLClient.subscribeAndReturnParsed(
      SubscriptionOptions(
        document: document,
        operationName: operationName,
        variables: variables(request),
        parserFn: db.parser.singleListParser(
          LastRecordedByInfo.fromJson,
          pageSize: request.pageSize,
        ),
      ),
    ),
  );

  PaginatableStreamBase<LastRecordedByInfo>
  paginateEditHistory<T extends Viewable>({
    required String id,
  }) => _paginateHistory(
    document: documentNodeSubscriptioneditHistory,
    operationName: 'editHistory',
    variables: (request) => Variables_Subscription_editHistory(
      limit: request.pageSize,
      where: [
        Input_HistoryEditHistoryBoolExp(
          table: Input_NameComparisonExp(
            $_eq: ViewablesEnum.from<T>().toPluralString(),
          ),
        ),
        Input_HistoryEditHistoryBoolExp(
          recordId: Input_UuidComparisonExp($_eq: id.toUuid()),
        ),
        if (request.cursor != null)
          Input_HistoryEditHistoryBoolExp(
            time: Input_TimestamptzComparisonExp($_lt: request.cursor!.time),
          ),
      ],
    ).toJson(),
  );

  PaginatableStreamBase<LastRecordedByInfo>
  paginateVisitHistory<T extends Viewable>({
    required String id,
    bool fatherVisit = false,
  }) => _paginateHistory(
    document: documentNodeSubscriptionvisitHistory,
    operationName: 'visitHistory',
    variables: (request) => Variables_Subscription_visitHistory(
      limit: request.pageSize,
      where: [
        Input_HistoryVisitHistoryBoolExp(
          table: Input_NameComparisonExp(
            $_eq: ViewablesEnum.from<T>().toPluralString(),
          ),
        ),
        Input_HistoryVisitHistoryBoolExp(
          recordId: Input_UuidComparisonExp($_eq: id.toUuid()),
        ),
        Input_HistoryVisitHistoryBoolExp(
          isFatherVisit: Input_BooleanComparisonExp($_eq: fatherVisit),
        ),
        if (request.cursor != null)
          Input_HistoryVisitHistoryBoolExp(
            time: Input_TimestamptzComparisonExp($_lt: request.cursor!.time),
          ),
      ],
    ).toJson(),
  );

  PaginatableStreamBase<LastRecordedByInfo> paginatePersonCallHistory({
    required String personId,
  }) => _paginateHistory(
    document: documentNodeSubscriptionpersonCallHistory,
    operationName: 'personCallHistory',
    variables: (request) => Variables_Subscription_personCallHistory(
      personId: personId.toUuid(),
      limit: request.pageSize,
      where: [
        if (request.cursor != null)
          Input_HistoryCallHistoryBoolExp(
            time: Input_TimestamptzComparisonExp($_lt: request.cursor!.time),
          ),
      ],
    ).toJson(),
  );

  PaginatableStreamBase<LastRecordedByInfo> paginatePersonConfessionHistory({
    required String personId,
  }) => _paginateHistory(
    document: documentNodeSubscriptionpersonConfessionHistory,
    operationName: 'personConfessionHistory',
    variables: (request) => Variables_Subscription_personConfessionHistory(
      personId: personId.toUuid(),
      limit: request.pageSize,
      where: [
        if (request.cursor != null)
          Input_HistoryConfessionHistoryBoolExp(
            dayId: Input_DateComparisonExp($_lt: request.cursor!.time),
          ),
      ],
    ).toJson(),
  );

  PaginatableStreamBase<LastRecordedByInfo> paginatePersonKodasHistory({
    required String personId,
  }) => _paginateHistory(
    document: documentNodeSubscriptionpersonKodasHistory,
    operationName: 'personKodasHistory',
    variables: (request) => Variables_Subscription_personKodasHistory(
      personId: personId.toUuid(),
      limit: request.pageSize,
      where: [
        if (request.cursor != null)
          Input_HistoryKodasHistoryBoolExp(
            dayId: Input_DateComparisonExp($_lt: request.cursor!.time),
          ),
      ],
    ).toJson(),
  );

  PaginatableStreamBase<LastRecordedByInfo> paginatePersonVisitHistory({
    required String personId,
  }) => _paginateHistory(
    document: documentNodeSubscriptionpersonVisitHistory,
    operationName: 'personVisitHistory',
    variables: (request) => Variables_Subscription_personVisitHistory(
      personId: personId.toUuid(),
      limit: request.pageSize,
      where: [
        if (request.cursor != null)
          Input_HistoryVisitHistoryBoolExp(
            time: Input_TimestamptzComparisonExp($_lt: request.cursor!.time),
          ),
      ],
    ).toJson(),
  );

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
        parserFn: db.parser.singleOrNullParser(
          db.parser.singleOrNullParser(Person.fromJson),
        ),
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
        parserFn: db.parser.singleOrNullParser(
          db.parser.singleOrNullParser(Person.fromJson),
        ),
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
        operationName: 'insertPersonLastKodas',
        variables: Variables_Mutation_insertPersonLastKodas(
          personId: personId.toUuid(),
          lastKodas: lastKodas,
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(
          db.parser.singleOrNullParser(Person.fromJson),
        ),
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

  Future<LastRecordedByInfo?> updateStreetLastVisit({
    required String streetId,
    required DateTime lastVisit,
  }) {
    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertStreetLastVisit,
        operationName: 'insertStreetLastVisit',
        variables: Variables_Mutation_insertStreetLastVisit(
          streetId: streetId.toUuid(),
          lastVisit: lastVisit,
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(
          db.parser.singleOrNullParser(LastRecordedByInfo.fromJson),
        ),
      ),
    );
  }
}
