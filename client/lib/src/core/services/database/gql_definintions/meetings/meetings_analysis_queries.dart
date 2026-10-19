import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/queries.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/meetings_analysis_scope.dart';

class MeetingsAnalysisQueries {
  final DatabaseService db;
  final KeysetRowsReader _rows;

  MeetingsAnalysisQueries(this.db) : _rows = KeysetRowsReader(db.graphQLClient);

  Future<List<PersonMeetingAttendanceAnalysis>> personAttendance({
    required String personId,
    required DateTimeRange range,
    required List<Meeting> meetings,
    bool? asServant,
  }) async {
    final meetingsById = {for (final meeting in meetings) meeting.id: meeting};
    final (heldDaysByMeetingId, roster) = await (
      _heldDaysByMeetingId(meetingsById.keys.toList(), range),
      _rosterAttendance(
        filter: Input_RosterEntryFilterInput(
          meetingId: Input_RosterEntryFilterMeetingId(
            $in: meetingsById.keys.toList(),
          ),
          personId: Input_RosterEntryFilterPersonId(eq: personId),
          asServant: switch (asServant) {
            final asServant? => Input_RosterEntryFilterAsServant(
              eq: asServant,
            ),
            null => null,
          },
        ),
        attendedFilter: _attendedInRange(range),
      ),
    ).wait;

    return [
      for (final row in roster)
        PersonMeetingAttendanceAnalysis.fromRosterAttendanceJson(
          row,
          meetingsById[row['meetingId']]!,
          heldDaysByMeetingId[row['meetingId']] ?? const [],
        ),
    ];
  }

  Future<List<PersonMeetingAttendanceAnalysis>> meetingAttendance({
    required Meeting meeting,
    required DateTimeRange range,
    required bool asServant,
  }) async {
    final (heldDaysByMeetingId, roster) = await (
      _heldDaysByMeetingId([meeting.id], range),
      _rosterAttendance(
        filter: Input_RosterEntryFilterInput(
          meetingId: Input_RosterEntryFilterMeetingId(eq: meeting.id),
          asServant: Input_RosterEntryFilterAsServant(eq: asServant),
        ),
        attendedFilter: _attendedInRange(range),
      ),
    ).wait;

    return [
      for (final row in roster)
        PersonMeetingAttendanceAnalysis.fromRosterAttendanceJson(
          row,
          meeting,
          heldDaysByMeetingId[meeting.id] ?? const [],
        ),
    ];
  }

  Future<MeetingsAttendanceAnalysis> subjectAttendance({
    required MeetingsAnalysisSubject subject,
    required DateTimeRange range,
  }) async {
    final scope = MeetingsAnalysisScope.of(subject);
    final meetings = await _rows.read(
      document: documentNodeQuerymeetingsWithDays,
      fromJson: (row) => row,
      variables: Variables_Query_meetingsWithDays(
        filter: scope.meetings,
        sort: [
          Input_MeetingSortInput(
            field: Enum_MeetingSortField.NAME,
            order: Enum_SortOrder.ASC,
          ),
        ],
        daysFilter: scope.daysFilter(range),
      ).toJson(),
    );
    final studyYearNames = await _studyYearNamesOfDaysIn(meetings);

    return MeetingsAttendanceAnalysis(
      title: subject.title,
      color: subject.color,
      meetings: [
        for (final meeting in meetings)
          MeetingAttendanceSummary.fromMeetingWithDaysJson(
            meeting,
            studyYearNames: studyYearNames,
          ),
      ],
    );
  }

  Future<List<SingleDayRosterMember>> subjectRosterOnDay({
    required MeetingsAnalysisSubject subject,
    required DateTime day,
  }) async {
    final roster = await _rosterAttendance(
      filter: MeetingsAnalysisScope.of(subject).rosterFilter,
      attendedFilter: Input_AttendanceRecordFilterInput(
        day: Input_AttendanceRecordFilterDay(eq: day),
      ),
    );

    return roster.map(SingleDayRosterMember.fromRosterAttendanceJson).toList();
  }

  Future<List<Meeting>> personMeetings({
    required String personId,
    bool? asServant,
  }) async {
    final entries = await _rows.read(
      document: documentNodeQuerypersonMeetingEntries,
      fromJson: (row) => row,
      variables: Variables_Query_personMeetingEntries(
        filter: Input_RosterEntryFilterInput(
          personId: Input_RosterEntryFilterPersonId(eq: personId),
          asServant: switch (asServant) {
            final asServant? => Input_RosterEntryFilterAsServant(
              eq: asServant,
            ),
            null => null,
          },
        ),
        sort: [
          Input_RosterEntrySortInput(
            field: Enum_RosterEntrySortField.AS_SERVANT,
            order: Enum_SortOrder.ASC,
          ),
          Input_RosterEntrySortInput(
            field: Enum_RosterEntrySortField.MEETING_ID,
            order: Enum_SortOrder.ASC,
          ),
        ],
      ).toJson(),
    );
    final meetings = [
      for (final entry in entries)
        if (entry['meeting'] case final Map meeting?)
          Meeting.fromJson(meeting.cast()),
    ];

    return {for (final meeting in meetings) meeting.id: meeting}.values
        .toList();
  }

  Input_AttendanceRecordFilterInput _attendedInRange(DateTimeRange range) =>
      Input_AttendanceRecordFilterInput(
        day: Input_AttendanceRecordFilterDay(
          greaterThanOrEqual: range.start,
          lessThanOrEqual: range.end,
        ),
      );

  Future<List<Json>> _rosterAttendance({
    required Input_RosterEntryFilterInput filter,
    required Input_AttendanceRecordFilterInput attendedFilter,
  }) => _rows.read(
    document: documentNodeQueryrosterAttendance,
    fromJson: (row) => row,
    variables: Variables_Query_rosterAttendance(
      filter: filter,
      sort: [
        Input_RosterEntrySortInput(
          field: Enum_RosterEntrySortField.PERSON_ID,
          order: Enum_SortOrder.ASC,
        ),
        Input_RosterEntrySortInput(
          field: Enum_RosterEntrySortField.AS_SERVANT,
          order: Enum_SortOrder.ASC,
        ),
        Input_RosterEntrySortInput(
          field: Enum_RosterEntrySortField.MEETING_ID,
          order: Enum_SortOrder.ASC,
        ),
      ],
      attendedFilter: attendedFilter,
    ).toJson(),
  );

  Future<Map<String, List<DateTime>>> _heldDaysByMeetingId(
    List<String> meetingIds,
    DateTimeRange range,
  ) async {
    final meetings = await _rows.read(
      document: documentNodeQuerymeetingsHeldDays,
      fromJson: (row) => row,
      variables: Variables_Query_meetingsHeldDays(
        filter: Input_MeetingFilterInput(
          id: Input_MeetingFilterId($in: meetingIds),
        ),
        from: range.start,
        to: range.end,
      ).toJson(),
      limit: meetingIds.length,
    );

    return {
      for (final meeting in meetings)
        meeting['id'] as String: [
          for (final day in meeting['heldDays'] as List? ?? const [])
            dateFromString(day),
        ],
    };
  }

  Future<Map<int, String>> _studyYearNamesOfDaysIn(List<Json> meetings) async {
    final anyDayHasStudyYear = meetings.any(
      (meeting) => (meeting['days'] as List? ?? const []).any(
        (day) => (day as Map)['studyYearId'] != null,
      ),
    );
    if (!anyDayHasStudyYear) return const {};

    final studyYears = await db.metadata.studyYears.query(
      limit: AshPagination.maxPageSize,
    );

    return {
      for (final studyYear in studyYears) studyYear.order: studyYear.name,
    };
  }
}
