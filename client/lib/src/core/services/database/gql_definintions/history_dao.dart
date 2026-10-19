import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/history/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/history/__generated__/queries.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';

class HistoryDAO {
  final DatabaseService db;

  DBGraphQLClient get graphQLClient => db.graphQLClient;

  HistoryDAO({required this.db});

  PaginatableStreamBase<LastRecordedByInfo> _paginateHistory({
    required DocumentNode document,
    required Json variables,
  }) {
    final pageQuery = KeysetPageQuery(
      client: graphQLClient,
      document: document,
      fromJson: LastRecordedByInfo.fromJson,
    );

    return KeysetPaginatedStream<LastRecordedByInfo, void>(
      registry: db.liveQueries,
      parametersStream: Stream.value(null),
      fetchChunk: (_, chunk) =>
          pageQuery.fetch(variables: variables, chunk: chunk),
    );
  }

  PaginatableStreamBase<LastRecordedByInfo>
  paginateEditHistory<T extends Viewable>({
    required String id,
  }) => _paginateHistory(
    document: documentNodeQueryedits,
    variables: Variables_Query_edits(
      filter: Input_EditFilterInput(
        and: [
          Input_EditFilterInput(
            table: Input_EditFilterTable(
              eq: ViewablesEnum.from<T>().toPluralString(),
            ),
          ),
          Input_EditFilterInput(recordId: Input_EditFilterRecordId(eq: id)),
        ],
      ),
      sort: [
        Input_EditSortInput(
          field: Enum_EditSortField.TIME,
          order: Enum_SortOrder.DESC,
        ),
      ],
    ).toJson(),
  );

  PaginatableStreamBase<LastRecordedByInfo>
  paginateVisitHistory<T extends Viewable>({
    required String id,
    bool fatherVisit = false,
  }) => _paginateHistory(
    document: documentNodeQueryvisits,
    variables: Variables_Query_visits(
      filter: Input_VisitFilterInput(
        and: [
          Input_VisitFilterInput(
            table: Input_VisitFilterTable(
              eq: ViewablesEnum.from<T>().toPluralString(),
            ),
          ),
          Input_VisitFilterInput(recordId: Input_VisitFilterRecordId(eq: id)),
          Input_VisitFilterInput(
            isFatherVisit: Input_VisitFilterIsFatherVisit(eq: fatherVisit),
          ),
        ],
      ),
      sort: [
        Input_VisitSortInput(
          field: Enum_VisitSortField.TIME,
          order: Enum_SortOrder.DESC,
        ),
      ],
    ).toJson(),
  );

  PaginatableStreamBase<LastRecordedByInfo> paginatePersonCallHistory({
    required String personId,
  }) => _paginateHistory(
    document: documentNodeQuerycalls,
    variables: Variables_Query_calls(
      filter: Input_CallFilterInput(
        personId: Input_CallFilterPersonId(eq: personId),
      ),
      sort: [
        Input_CallSortInput(
          field: Enum_CallSortField.TIME,
          order: Enum_SortOrder.DESC,
        ),
      ],
    ).toJson(),
  );

  PaginatableStreamBase<LastRecordedByInfo> paginatePersonConfessionHistory({
    required String personId,
  }) => _paginateHistory(
    document: documentNodeQueryconfessions,
    variables: Variables_Query_confessions(
      filter: Input_ConfessionFilterInput(
        personId: Input_ConfessionFilterPersonId(eq: personId),
      ),
      sort: [
        Input_ConfessionSortInput(
          field: Enum_ConfessionSortField.TIME,
          order: Enum_SortOrder.DESC,
        ),
      ],
    ).toJson(),
  );

  PaginatableStreamBase<LastRecordedByInfo> paginatePersonKodasHistory({
    required String personId,
  }) => _paginateHistory(
    document: documentNodeQuerykodases,
    variables: Variables_Query_kodases(
      filter: Input_KodasFilterInput(
        personId: Input_KodasFilterPersonId(eq: personId),
      ),
      sort: [
        Input_KodasSortInput(
          field: Enum_KodasSortField.TIME,
          order: Enum_SortOrder.DESC,
        ),
      ],
    ).toJson(),
  );

  PaginatableStreamBase<LastRecordedByInfo> paginatePersonVisitHistory({
    required String personId,
  }) => _paginateHistory(
    document: documentNodeQueryvisits,
    variables: Variables_Query_visits(
      filter: Input_VisitFilterInput(
        and: [
          Input_VisitFilterInput(
            table: Input_VisitFilterTable(
              eq: ViewablesEnum.person.toPluralString(),
            ),
          ),
          Input_VisitFilterInput(
            recordId: Input_VisitFilterRecordId(eq: personId),
          ),
        ],
      ),
      sort: [
        Input_VisitSortInput(
          field: Enum_VisitSortField.TIME,
          order: Enum_SortOrder.DESC,
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

  Stream<List<KodasRecord>> streamDayKodas({required DateTime day}) {
    const document = documentNodeQuerydayKodases;
    final parsePage = AshResultParser(document).page(KodasRecord.fromJson);

    return LiveQuery<List<KodasRecord>>(
      client: graphQLClient,
      registry: db.liveQueries,
      kind: LiveQueryKind.list,
      options: WatchQueryOptions(
        document: document,
        operationName: 'dayKodases',
        variables: Variables_Query_dayKodases(
          filter: Input_KodasFilterInput(
            dayId: Input_KodasFilterDayId(eq: day),
          ),
          first: AshPagination.maxPageSize,
        ).toJson(),
        parserFn: (data) => parsePage(data).items,
      ),
    );
  }

  Future<LastRecordedByInfo> updatePersonLastCall({
    required String personId,
    required DateTime lastCall,
  }) {
    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationrecordCall,
        operationName: 'recordCall',
        variables: Variables_Mutation_recordCall(
          input: Input_RecordCallInput(personId: personId, time: lastCall),
        ).toJson(),
        parserFn: AshResultParser(
          documentNodeMutationrecordCall,
        ).mutationResult(LastRecordedByInfo.fromJson),
      ),
    );
  }

  Future<LastRecordedByInfo> updatePersonLastConfession({
    required String personId,
    required DateTime lastConfession,
  }) {
    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationrecordConfession,
        operationName: 'recordConfession',
        variables: Variables_Mutation_recordConfession(
          input: Input_RecordConfessionInput(
            personId: personId,
            day: lastConfession,
          ),
        ).toJson(),
        parserFn: AshResultParser(
          documentNodeMutationrecordConfession,
        ).mutationResult(LastRecordedByInfo.fromJson),
      ),
    );
  }

  Future<KodasRecord?> recordKodas({
    required String personId,
    required DateTime day,
  }) {
    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationrecordKodas,
        operationName: 'recordKodas',
        variables: Variables_Mutation_recordKodas(
          input: Input_RecordKodasInput(personId: personId, day: day),
        ).toJson(),
        parserFn: AshResultParser(
          documentNodeMutationrecordKodas,
        ).mutationResultOrNull(KodasRecord.fromJson),
      ),
    );
  }

  Future<KodasRecord> deleteKodas({required String kodasRecordId}) async {
    final deleted = await graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationdeleteKodas,
        operationName: 'deleteKodas',
        variables: Variables_Mutation_deleteKodas(id: kodasRecordId).toJson(),
        parserFn: AshResultParser(
          documentNodeMutationdeleteKodas,
        ).mutationResultOrNull(KodasRecord.fromJson),
      ),
    );

    return deleted ?? (throw const KodasChangeRejectedException());
  }

  Future<LastRecordedByInfo> updatePersonLastVisit({
    required String personId,
    required DateTime lastVisit,
  }) => _recordVisit(
    Input_RecordVisitInput(
      subject: Enum_VisitSubject.PERSONS,
      recordId: personId,
      time: lastVisit,
    ),
  );

  Future<LastRecordedByInfo> updateFamilyLastVisit({
    required String familyId,
    required DateTime lastVisit,
    bool isFatherVisit = false,
  }) => _recordVisit(
    Input_RecordVisitInput(
      subject: Enum_VisitSubject.FAMILIES,
      recordId: familyId,
      time: lastVisit,
      isFatherVisit: isFatherVisit,
    ),
  );

  Future<LastRecordedByInfo> updateStreetLastVisit({
    required String streetId,
    required DateTime lastVisit,
  }) => _recordVisit(
    Input_RecordVisitInput(
      subject: Enum_VisitSubject.STREETS,
      recordId: streetId,
      time: lastVisit,
    ),
  );

  Future<LastRecordedByInfo> _recordVisit(Input_RecordVisitInput input) {
    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationrecordVisit,
        operationName: 'recordVisit',
        variables: Variables_Mutation_recordVisit(input: input).toJson(),
        parserFn: AshResultParser(
          documentNodeMutationrecordVisit,
        ).mutationResult(LastRecordedByInfo.fromJson),
      ),
    );
  }
}
