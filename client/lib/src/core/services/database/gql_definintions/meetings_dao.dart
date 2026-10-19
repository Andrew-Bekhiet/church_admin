import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/queries.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/meeting_audience_graphql_value.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/meetings_analysis_queries.dart';
import 'package:graphql/client.dart';

class MeetingsDAO extends DAOBase<Meeting>
    with
        KeysetStreamableDAO<Meeting>,
        CreatableDAO<Meeting>,
        UpdatableDAO<Meeting> {
  static LastRecordedByInfo _recordedAt(Json json) {
    final record = AttendanceRecord.fromJson(json);

    return LastRecordedByInfo(
      time: record.datetime,
      recordedBy: json['recordedBy'] as String?,
      user: record.recordedByUser,
    );
  }

  late final KeysetRowsReader _rows = KeysetRowsReader(graphQLClient);

  late final MeetingsAnalysisQueries _analysis = MeetingsAnalysisQueries(db);

  @override
  StreamAllConfig<Meeting> get baseStreamAllConfig => StreamAllConfig(
    document: documentNodeQuerymeetings,
    arguments: (parameters) => ListQueryArguments.fromParameters(
      parameters,
      defaultOrderBy: [OrderBy(field: MeetingFields().name)],
    ),
  );

  @override
  StreamSingleByIdConfig<Meeting> get baseStreamSingleByIdConfig =>
      const StreamSingleByIdConfig(document: documentNodeQuerymeeting);

  @override
  CreateObjectConfig<Meeting> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateMeeting,
    varsConstructor: ({required newObject}) => Variables_Mutation_createMeeting(
      input: Input_CreateMeetingInput(
        name: newObject.name,
        audience: newObject.audience.graphqlValue,
        color: colorToInt(newObject.color),
        isArchived: newObject.isArchived,
        showKodasCheckbox: newObject.showKodasCheckbox,
        serviceId: newObject.service?.id ?? newObject.serviceId,
        serviceStudyYear: newObject.serviceStudyYear,
        serviceGender: newObject.serviceGender,
        groupId: newObject.group?.id ?? newObject.groupId,
      ),
    ).toJson(),
  );

  @override
  UpdateObjectConfig<Meeting> get baseUpdateObjectConfig => UpdateObjectConfig(
    document: documentNodeMutationupdateMeeting,
    varsConstructor: ({required newObject}) => Variables_Mutation_updateMeeting(
      id: newObject.id,
      input: Input_UpdateMeetingInput.fromJson({
        'name': newObject.name,
        'audience': toJson_Enum_MeetingAudience(
          newObject.audience.graphqlValue,
        ),
        'color': colorToInt(newObject.color),
        'isArchived': newObject.isArchived,
        'showKodasCheckbox': newObject.showKodasCheckbox,
      }),
    ).toJson(),
  );

  MeetingsDAO({required super.db}) : super(fromJson: Meeting.fromJson);

  Future<Meeting?> archiveMeeting({
    required String meetingId,
    bool isArchived = true,
  }) {
    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdateMeeting,
        operationName: 'updateMeeting',
        variables: Variables_Mutation_updateMeeting(
          id: meetingId,
          input: Input_UpdateMeetingInput(isArchived: isArchived),
        ).toJson(),
        parserFn: AshResultParser(
          documentNodeMutationupdateMeeting,
        ).mutationResultOrNull(Meeting.fromJson),
      ),
    );
  }

  Future<List<MeetingRosterEntry>> getMeetingRoster({
    required String meetingId,
    required bool groupByStudyYear,
    int limit = 1000,
  }) {
    return _rows.read(
      document: documentNodeQueryrosterEntries,
      fromJson: MeetingRosterEntry.fromRosterEntryJson,
      variables: Variables_Query_rosterEntries(
        filter: Input_RosterEntryFilterInput(
          meetingId: Input_RosterEntryFilterMeetingId(eq: meetingId),
        ),
        sort: [
          if (groupByStudyYear)
            Input_RosterEntrySortInput(
              field: Enum_RosterEntrySortField.STUDY_YEAR_ID,
              order: Enum_SortOrder.ASC,
            ),
          Input_RosterEntrySortInput(
            field: Enum_RosterEntrySortField.NAME,
            order: Enum_SortOrder.ASC,
          ),
          Input_RosterEntrySortInput(
            field: Enum_RosterEntrySortField.PERSON_ID,
            order: Enum_SortOrder.ASC,
          ),
        ],
      ).toJson(),
      limit: limit,
    );
  }

  Stream<List<AttendanceRecord>> streamAttendanceHistory({
    required String meetingId,
    required DateTime fromDate,
    required DateTime toDate,
  }) {
    const document = documentNodeQueryattendanceRecords;
    final parsePage = AshResultParser(document).page(AttendanceRecord.fromJson);

    return LiveQuery<List<AttendanceRecord>>(
      client: graphQLClient,
      registry: db.liveQueries,
      kind: LiveQueryKind.list,
      options: WatchQueryOptions(
        document: document,
        operationName: 'attendanceRecords',
        variables: Variables_Query_attendanceRecords(
          filter: Input_AttendanceRecordFilterInput(
            meetingId: Input_AttendanceRecordFilterMeetingId(eq: meetingId),
            datetime: Input_AttendanceRecordFilterDatetime(
              greaterThanOrEqual: fromDate,
              lessThan: toDate,
            ),
          ),
          first: AshPagination.maxPageSize,
        ).toJson(),
        parserFn: (data) => parsePage(data).items,
      ),
    );
  }

  Future<AttendanceRecord> markAttendance({
    required String meetingId,
    required String personId,
    required DateTime datetime,
    bool asServant = false,
  }) {
    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationmarkAttendance,
        operationName: 'markAttendance',
        variables: Variables_Mutation_markAttendance(
          input: Input_MarkAttendanceInput(
            meetingId: meetingId,
            personId: personId,
            datetime: datetime,
            asServant: asServant,
          ),
        ).toJson(),
        parserFn: AshResultParser(
          documentNodeMutationmarkAttendance,
        ).mutationResult(AttendanceRecord.fromJson),
      ),
    );
  }

  Future<AttendanceRecord> unmarkAttendance({
    required String attendanceRecordId,
  }) {
    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationunmarkAttendance,
        operationName: 'unmarkAttendance',
        variables: Variables_Mutation_unmarkAttendance(
          id: attendanceRecordId,
        ).toJson(),
        parserFn: AshResultParser(
          documentNodeMutationunmarkAttendance,
        ).mutationResult(AttendanceRecord.fromJson),
      ),
    );
  }

  Future<AttendanceRecord> updateAttendanceTime({
    required String attendanceRecordId,
    required DateTime datetime,
  }) {
    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationupdateAttendanceTime,
        operationName: 'updateAttendanceTime',
        variables: Variables_Mutation_updateAttendanceTime(
          id: attendanceRecordId,
          input: Input_UpdateAttendanceTimeInput(datetime: datetime),
        ).toJson(),
        parserFn: AshResultParser(
          documentNodeMutationupdateAttendanceTime,
        ).mutationResult(AttendanceRecord.fromJson),
      ),
    );
  }

  PaginatableStreamBase<LastRecordedByInfo> paginatePersonAttendance({
    required String personId,
    required String meetingId,
    bool asServant = false,
    int? limit,
  }) {
    final pageQuery = KeysetPageQuery(
      client: graphQLClient,
      document: documentNodeQueryattendanceRecords,
      fromJson: _recordedAt,
    );
    final variables = Variables_Query_attendanceRecords(
      filter: Input_AttendanceRecordFilterInput(
        personId: Input_AttendanceRecordFilterPersonId(eq: personId),
        meetingId: Input_AttendanceRecordFilterMeetingId(eq: meetingId),
        asServant: Input_AttendanceRecordFilterAsServant(eq: asServant),
      ),
      sort: [
        Input_AttendanceRecordSortInput(
          field: Enum_AttendanceRecordSortField.DATETIME,
          order: Enum_SortOrder.DESC,
        ),
      ],
    ).toJson();

    return KeysetPaginatedStream<LastRecordedByInfo, void>(
      registry: db.liveQueries,
      pageSize: limit ?? PaginatableStream.defaultPageSize,
      parametersStream: Stream.value(null),
      fetchChunk: (_, chunk) =>
          pageQuery.fetch(variables: variables, chunk: chunk),
    );
  }

  Future<List<PersonMeetingAttendanceAnalysis>> getPersonAttendanceAnalysis({
    required String personId,
    required DateTimeRange range,
    required List<Meeting> meetings,
    bool? asServant,
  }) => _analysis.personAttendance(
    personId: personId,
    range: range,
    meetings: meetings,
    asServant: asServant,
  );

  Future<MeetingsAttendanceAnalysis> getMeetingsAttendanceAnalysis({
    required MeetingsAnalysisSubject subject,
    required DateTimeRange range,
  }) => _analysis.subjectAttendance(subject: subject, range: range);

  Future<List<SingleDayRosterMember>> getSingleDayRosterDemographics({
    required MeetingsAnalysisSubject subject,
    required DateTime day,
  }) => _analysis.subjectRosterOnDay(subject: subject, day: day);

  Future<List<PersonMeetingAttendanceAnalysis>> getAttendanceAnalyses({
    required Meeting meeting,
    required DateTimeRange range,
    required bool asServant,
  }) => _analysis.meetingAttendance(
    meeting: meeting,
    range: range,
    asServant: asServant,
  );

  Future<List<Meeting>> getPersonMeetings({
    required String personId,
    bool? asServant,
  }) => _analysis.personMeetings(personId: personId, asServant: asServant);
}
