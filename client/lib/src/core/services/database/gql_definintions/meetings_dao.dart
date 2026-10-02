import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/queries.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/subscriptions.gql.dart';
import 'package:graphql/client.dart';

class MeetingsDAO extends DAOBase<Meeting>
    with StreamableDAO<Meeting>, CreatableDAO<Meeting>, UpdatableDAO<Meeting> {
  @override
  late final StreamAllConfig<Meeting> baseStreamAllConfig =
      const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllMeetings,
      );

  @override
  late final StreamSingleByIdConfig<Meeting> baseStreamSingleByIdConfig =
      StreamSingleByIdConfig(
        document: documentNodeSubscriptionwatchMeeting,
        varsConstructor: _streamSingleByIdVarsConstructor,
      );

  @override
  late final UpdateObjectConfig<Meeting> baseUpdateObjectConfig =
      UpdateObjectConfig(
        document: documentNodeMutationupdateMeeting,
        varsConstructor: _updateMeetingVarsConstructor,
      );

  @override
  late final CreateObjectConfig<Meeting> baseCreateObjectConfig =
      CreateObjectConfig(
        document: documentNodeMutationinsertMeeting,
        varsConstructor: _createMeetingVarsConstructor,
      );

  @override
  StreamCountConfig<Meeting>? get baseStreamCountConfig => null;

  MeetingsDAO({required super.db}) : super(fromJson: Meeting.fromJson);

  ({
    List<Input_HistoryMeetingsBoolExp> where,
    List<Input_HistoryMeetingDaysBoolExp> demographicsWhere,
    List<Input_HistoryMeetingRosterBoolExp> rosterWhere,
  })
  _subjectFilters(MeetingsAnalysisSubject subject) => switch (subject) {
    MeetingAnalysisSubject(:final meeting) => (
      where: [
        Input_HistoryMeetingsBoolExp(
          id: Input_UuidComparisonExp($_eq: meeting.id.toUuid()),
        ),
      ],
      demographicsWhere: const <Input_HistoryMeetingDaysBoolExp>[],
      rosterWhere: const <Input_HistoryMeetingRosterBoolExp>[],
    ),
    ServiceAnalysisSubject(:final service) => (
      where: [
        Input_HistoryMeetingsBoolExp(
          serviceId: Input_UuidComparisonExp($_eq: service.id.toUuid()),
        ),
      ],
      demographicsWhere: const <Input_HistoryMeetingDaysBoolExp>[],
      rosterWhere: const <Input_HistoryMeetingRosterBoolExp>[],
    ),
    GroupAnalysisSubject(:final group) => (
      where: [
        Input_HistoryMeetingsBoolExp(
          groupId: Input_UuidComparisonExp($_eq: group.id.toUuid()),
        ),
      ],
      demographicsWhere: const <Input_HistoryMeetingDaysBoolExp>[],
      rosterWhere: const <Input_HistoryMeetingRosterBoolExp>[],
    ),
    ClassAnalysisSubject(:final class$) => _classFilters(class$),
  };

  // Real meetings are almost always service-wide (no serviceStudyYear/
  // serviceGender set), so the class's study year/gender narrows the
  // attendee demographic rows rather than the meeting selection itself.
  ({
    List<Input_HistoryMeetingsBoolExp> where,
    List<Input_HistoryMeetingDaysBoolExp> demographicsWhere,
    List<Input_HistoryMeetingRosterBoolExp> rosterWhere,
  })
  _classFilters(Class class$) {
    final serviceId = class$.service?.id.toUuid() ?? class$.serviceId?.toUuid();
    final studyYearFrom = class$.studyYearFromOrder;
    final studyYearTo = class$.studyYearToOrder;
    final serviceGender = class$.serviceGender;

    return (
      where: [
        Input_HistoryMeetingsBoolExp(
          serviceId: switch (serviceId) {
            final serviceId? => Input_UuidComparisonExp($_eq: serviceId),
            null => null,
          },
        ),
      ],
      demographicsWhere: [
        Input_HistoryMeetingDaysBoolExp(
          studyYearId: switch ((studyYearFrom, studyYearTo)) {
            (final from?, final to?) => Input_SmallintComparisonExp(
              $_gte: from,
              $_lte: to,
            ),
            _ => null,
          },
          gender: switch (serviceGender) {
            final serviceGender? => Input_BooleanComparisonExp(
              $_eq: serviceGender,
            ),
            null => null,
          },
        ),
      ],
      rosterWhere: [
        Input_HistoryMeetingRosterBoolExp(
          studyYearId: switch ((studyYearFrom, studyYearTo)) {
            (final from?, final to?) => Input_IntComparisonExp(
              $_gte: from,
              $_lte: to,
            ),
            _ => null,
          },
          gender: switch (serviceGender) {
            final serviceGender? => Input_BooleanComparisonExp(
              $_eq: serviceGender,
            ),
            null => null,
          },
        ),
      ],
    );
  }

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchMeeting(id: id).toJson();

  Json _createMeetingVarsConstructor({required Meeting newObject}) =>
      Variables_Mutation_insertMeeting(
        object: newObject.toInsertInput(),
      ).toJson();

  Json _updateMeetingVarsConstructor({
    required Meeting newObject,
    required Meeting oldObject,
  }) => Variables_Mutation_updateMeeting(
    id: newObject.id.toUuid(),
    $set: newObject.toUpdateInput(oldMeeting: oldObject),
  ).toJson();

  Future<Meeting?> archiveMeeting({
    required String meetingId,
    bool isArchived = true,
  }) {
    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdateMeeting,
        operationName: 'updateMeeting',
        variables: Variables_Mutation_updateMeeting(
          id: meetingId.toUuid(),
          $set: Input_HistoryMeetingsSetInput(isArchived: isArchived),
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(Meeting.fromJson),
      ),
    );
  }

  Future<List<MeetingRosterEntry>> getMeetingRoster({
    required String meetingId,
    required bool groupByStudyYear,
    int limit = 1000,
  }) async {
    final orderBy = [
      if (groupByStudyYear)
        Input_HistoryMeetingRosterOrderBy(studyYearId: Enum_OrderBy.ASC),
      Input_HistoryMeetingRosterOrderBy(name: Enum_OrderBy.ASC),
      Input_HistoryMeetingRosterOrderBy(personId: Enum_OrderBy.ASC),
    ];

    final result = await graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: documentNodeQueryhistoryMeetingRoster,
        operationName: 'historyMeetingRoster',
        variables: Variables_Query_historyMeetingRoster(
          meetingId: meetingId.toUuid(),
          orderBy: orderBy,
          limit: limit,
        ).toJson(),
        parserFn: Query_historyMeetingRoster.fromJson,
      ),
    );

    return result.historyMeetingRoster
        .map(MeetingRosterEntry.fromQueryResult)
        .toList();
  }

  Stream<List<AttendanceRecord>> streamAttendanceHistory({
    required String meetingId,
    required DateTime fromDate,
    required DateTime toDate,
  }) {
    return graphQLClient.subscribeAndReturnParsed(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchAttendanceHistory,
        operationName: 'watchAttendanceHistory',
        variables: Variables_Subscription_watchAttendanceHistory(
          meetingId: meetingId.toUuid(),
          fromDate: fromDate,
          toDate: toDate,
        ).toJson(),
        parserFn: db.parser.listParser(AttendanceRecord.fromJson),
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
          object: Input_HistoryAttendanceHistoryInsertInput(
            meetingId: meetingId.toUuid(),
            personId: personId.toUuid(),
            asServant: asServant,
            datetime: datetime,
          ),
        ).toJson(),
        parserFn: db.parser.singleParser(AttendanceRecord.fromJson),
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
          id: attendanceRecordId.toUuid(),
        ).toJson(),
        parserFn: db.parser.singleParser(AttendanceRecord.fromJson),
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
          id: attendanceRecordId.toUuid(),
          datetime: datetime,
        ).toJson(),
        parserFn: db.parser.singleParser(AttendanceRecord.fromJson),
      ),
    );
  }

  Future<List<PersonMeetingAttendanceAnalysis>> getPersonAttendanceAnalysis({
    required String personId,
    required DateTimeRange range,
    required List<Meeting> meetings,
    bool? asServant,
  }) async {
    final meetingsById = {for (final meeting in meetings) meeting.id: meeting};

    final result = await _runAttendanceAnalysis(
      range: range,
      where: [
        Input_HistoryMeetingRosterBoolExp(
          personId: Input_UuidComparisonExp($_eq: personId.toUuid()),
        ),
        if (asServant != null)
          Input_HistoryMeetingRosterBoolExp(
            asServant: Input_BooleanComparisonExp($_eq: asServant),
          ),
      ],
      meetingIds: meetings.map((e) => e.id.toUuid()).toList(),
    );

    final heldDaysByMeetingId = {
      for (final meeting in result.historyMeetings)
        meeting.id.uuid: meeting.days.map((d) => d.day).nonNulls.toList(),
    };

    return [
      for (final row in result.historyMeetingRoster)
        if (row.meetingId?.uuid case final meetingId?)
          PersonMeetingAttendanceAnalysis.fromQueryResult(
            row,
            meetingsById[meetingId]!,
            heldDaysByMeetingId[meetingId] ?? const [],
          ),
    ];
  }

  Future<MeetingsAttendanceAnalysis> getMeetingsAttendanceAnalysis({
    required MeetingsAnalysisSubject subject,
    required DateTimeRange range,
  }) async {
    final filters = _subjectFilters(subject);

    final result = await graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: documentNodeQuerymeetingsAttendanceAnalysis,
        operationName: 'meetingsAttendanceAnalysis',
        variables: Variables_Query_meetingsAttendanceAnalysis(
          dayFrom: range.start,
          dayTo: range.end,
          where: filters.where,
          demographicsWhere: filters.demographicsWhere,
        ).toJson(),
        parserFn: Query_meetingsAttendanceAnalysis.fromJson,
      ),
    );

    return MeetingsAttendanceAnalysis(
      title: subject.title,
      color: subject.color,
      meetings: result.historyMeetings
          .map(MeetingAttendanceSummary.fromQueryResult)
          .toList(),
    );
  }

  Future<List<SingleDayRosterMember>> getSingleDayRosterDemographics({
    required MeetingsAnalysisSubject subject,
    required DateTime day,
  }) async {
    final filters = _subjectFilters(subject);
    final result = await graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: documentNodeQuerymeetingsRosterDemographics,
        operationName: 'meetingsRosterDemographics',
        variables: Variables_Query_meetingsRosterDemographics(
          day: day,
          where: filters.where,
          rosterWhere: filters.rosterWhere,
        ).toJson(),
        parserFn: Query_meetingsRosterDemographics.fromJson,
      ),
    );

    return [
      for (final row in result.historyMeetingRoster)
        if (row.personId?.uuid case final personId?)
          SingleDayRosterMember(
            personId: personId,
            studyYearId: row.studyYearId,
            studyYearName: row.studyYearName,
            gender: row.gender,
            attended: row.attendanceHistory.isNotEmpty,
          ),
    ];
  }

  Future<List<PersonMeetingAttendanceAnalysis>> getAttendanceAnalyses({
    required Meeting meeting,
    required DateTimeRange range,
    required bool asServant,
  }) async {
    final result = await _runAttendanceAnalysis(
      range: range,
      where: [
        Input_HistoryMeetingRosterBoolExp(
          asServant: Input_BooleanComparisonExp($_eq: asServant),
        ),
      ],
      meetingIds: [meeting.id.toUuid()],
    );

    final heldDays =
        result.historyMeetings.singleOrNull?.days
            .map((d) => d.day)
            .nonNulls
            .toList() ??
        [];

    return result.historyMeetingRoster
        .map(
          (row) => PersonMeetingAttendanceAnalysis.fromQueryResult(
            row,
            meeting,
            heldDays,
          ),
        )
        .toList();
  }

  Future<Query_attendanceAnalysis> _runAttendanceAnalysis({
    required DateTimeRange range,
    required List<Input_HistoryMeetingRosterBoolExp> where,
    required List<UuidValue> meetingIds,
  }) async {
    return graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: documentNodeQueryattendanceAnalysis,
        operationName: 'attendanceAnalysis',
        variables: Variables_Query_attendanceAnalysis(
          dayFrom: range.start,
          dayTo: range.end,
          meetingIds: meetingIds,
          where: where,
        ).toJson(),
        parserFn: Query_attendanceAnalysis.fromJson,
      ),
    );
  }

  Future<List<Meeting>> getPersonMeetings({
    required String personId,
    bool? asServant,
  }) async {
    final where = [
      if (asServant != null)
        Input_HistoryMeetingRosterBoolExp(
          asServant: Input_BooleanComparisonExp($_eq: asServant),
        ),
    ];

    final result = await graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: documentNodeQuerypersonMeetings,
        operationName: 'personMeetings',
        variables: Variables_Query_personMeetings(
          personId: personId.toUuid(),
          where: where,
        ).toJson(),
        parserFn: Query_personMeetings.fromJson,
      ),
    );

    final meetings = [
      for (final row in result.historyMeetingRoster)
        if (row.meeting case final meeting?) Meeting.fromJson(meeting.toJson()),
    ];

    return {
      for (final meeting in meetings) meeting.id: meeting,
    }.values.toList();
  }

  PaginatableStreamBase<LastRecordedByInfo> paginatePersonAttendance({
    required String personId,
    required String meetingId,
    bool asServant = false,
    int? limit,
  }) {
    return PaginatableStream.simple(
      pageSize: limit ?? 100,
      factory: (request) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionpersonMeetingAttendance,
            operationName: 'personMeetingAttendance',
            variables: Variables_Subscription_personMeetingAttendance(
              where: [
                Input_HistoryAttendanceHistoryBoolExp(
                  personId: Input_UuidComparisonExp($_eq: personId.toUuid()),
                  meetingId: Input_UuidComparisonExp($_eq: meetingId.toUuid()),
                  asServant: Input_BooleanComparisonExp($_eq: asServant),
                ),
                if (request.cursor case final cursor?)
                  Input_HistoryAttendanceHistoryBoolExp(
                    datetime: Input_TimestamptzComparisonExp(
                      $_lt: cursor.time,
                    ),
                  ),
              ],
              orderBy: [
                Input_HistoryAttendanceHistoryOrderBy(
                  datetime: Enum_OrderBy.DESC,
                ),
              ],
              limit: request.pageSize,
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
}
