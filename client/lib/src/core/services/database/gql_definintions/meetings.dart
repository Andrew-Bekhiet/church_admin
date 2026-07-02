import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/queries.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/subscriptions.gql.dart';
import 'package:graphql/client.dart';

class MeetingsDAO extends DAOBase<Meeting>
    with StreamableDAO<Meeting>, CreatableDAO<Meeting>, UpdatableDAO<Meeting> {
  MeetingsDAO({required super.db}) : super(fromJson: Meeting.fromJson);

  @override
  late final StreamAllConfig<Meeting> baseStreamAllConfig =
      const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllMeetings,
      );

  @override
  StreamCountConfig<Meeting>? get baseStreamCountConfig => null;

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

  /// Fetches the roster of persons eligible for [meetingId] once. Eligibility
  /// is date-independent (governed by the `history.meeting_roster` view), so
  /// this query only re-runs when the meeting or grouping changes.
  Future<List<MeetingRosterEntry>> getMeetingRoster({
    required String meetingId,
    required bool groupByStudyYear,
    int limit = 1000,
  }) {
    final orderBy = [
      if (groupByStudyYear)
        Input_HistoryMeetingRosterOrderBy(studyYearId: Enum_OrderBy.ASC),
      Input_HistoryMeetingRosterOrderBy(name: Enum_OrderBy.ASC),
      Input_HistoryMeetingRosterOrderBy(personId: Enum_OrderBy.ASC),
    ];

    return graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: documentNodeQueryhistoryMeetingRoster,
        operationName: 'historyMeetingRoster',
        variables: Variables_Query_historyMeetingRoster(
          meetingId: meetingId.toUuid(),
          orderBy: orderBy,
          limit: limit,
        ).toJson(),
        parserFn: db.parser.listParser(MeetingRosterEntry.fromJson),
      ),
    );
  }

  /// Subscribes to all attendance records for [meetingId] within the given day
  /// window. Streams only the small set of attendance rows so the large person
  /// list (from [getMeetingRoster]) doesn't reload on each mark/unmark.
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
}
