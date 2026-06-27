import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/subscriptions.gql.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

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
        operationName: 'archiveMeeting',
        variables: Variables_Mutation_updateMeeting(
          id: meetingId.toUuid(),
          $set: Input_HistoryMeetingsSetInput(archived: isArchived),
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(Meeting.fromJson),
      ),
    );
  }

  /// Streams the roster of persons eligible for [meetingId].
  ///
  /// Returns one entry per eligible person. [attendanceId] / [attendanceDatetime]
  /// are non-null if the person attended in the [fromDate, toDate) window as
  /// [asServant]; otherwise null (person has not been marked yet for that session).
  ///
  /// Pass [searchQuery] for search-as-you-type on name/phone.
  PaginatableStreamBase<MeetingRosterEntry> streamMeetingRoster({
    required String meetingId,
    required bool asServant,
    required DateTime fromDate,
    required DateTime toDate,
    Stream<String?>? searchQuery,
    int limit = 200,
  }) {
    final searchStream = (searchQuery ?? Stream.value(null)).shareValue();

    return PaginatableStream.simple(
      pageSize: limit,
      factory: (request) {
        return searchStream.switchMap((search) {
          final whereFilters = [
            if (search != null && search.isNotEmpty)
              Input_HistoryMeetingsPersonsBoolExp(
                person: Input_PersonsBoolExp(
                  $_or: [
                    Input_PersonsBoolExp(
                      name: Input_StringComparisonExp($_ilike: '%$search%'),
                    ),
                    Input_PersonsBoolExp(
                      mainPhone: Input_StringComparisonExp(
                        $_ilike: '%$search%',
                      ),
                    ),
                  ],
                ),
              ),
            if (request.cursor case final cursor?)
              Input_HistoryMeetingsPersonsBoolExp(
                person: Input_PersonsBoolExp(
                  name: Input_StringComparisonExp(
                    $_gt: cursor.person.name,
                  ),
                ),
              ),
          ];

          return graphQLClient.subscribeAndReturnParsed(
            SubscriptionOptions(
              document: documentNodeSubscriptionwatchMeetingRoster,
              operationName: 'watchMeetingRoster',
              variables: Variables_Subscription_watchMeetingRoster(
                meetingId: meetingId.toUuid(),
                asServant: asServant,
                fromDate: fromDate,
                toDate: toDate,
                where: whereFilters,
                limit: request.pageSize + 1,
              ).toJson(),
              parserFn: db.parser.singleListParser(
                MeetingRosterEntry.fromJson,
                pageSize: request.pageSize,
              ),
            ),
          );
        });
      },
    );
  }

  /// Live count of persons who have attended [meetingId] for the given [asServant] flag.
  Stream<int?> streamPresentCount({
    required String meetingId,
    required DateTime fromDate,
    required DateTime toDate,
    bool asServant = false,
  }) {
    return graphQLClient.subscribeAndReturnParsed(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchMeetingPresentCount,
        operationName: 'watchMeetingPresentCount',
        variables: Variables_Subscription_watchMeetingPresentCount(
          meetingId: meetingId.toUuid(),
          asServant: asServant,
          fromDate: fromDate,
          toDate: toDate,
        ).toJson(),
        parserFn: db.parser.countParser,
      ),
    );
  }

  /// Live count of persons eligible for [meetingId] via the `meeting_roster` view.
  Stream<int?> streamEligibleCount({required String meetingId}) {
    return graphQLClient.subscribeAndReturnParsed(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchMeetingEligibleCount,
        operationName: 'watchMeetingEligibleCount',
        variables: Variables_Subscription_watchMeetingEligibleCount(
          meetingId: meetingId.toUuid(),
        ).toJson(),
        parserFn: db.parser.countParser,
      ),
    );
  }

  /// Marks a person as present at a meeting.
  Future<AttendanceRecord?> markAttendance({
    required String meetingId,
    required String personId,
    bool asServant = false,
  }) {
    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationmarkAttendance,
        operationName: 'markAttendance',
        variables: Variables_Mutation_markAttendance(
          object: Input_HistoryAttendanceHistoryInsertInput(
            meetingId: meetingId.toUuid(),
            personId: personId.toUuid(),
            asServant: asServant,
          ),
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(AttendanceRecord.fromJson),
      ),
    );
  }

  /// Marks multiple persons as present at a meeting in a single request.
  Future<void> markAttendanceMany({
    required String meetingId,
    required List<String> personIds,
    bool asServant = false,
  }) {
    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationmarkAttendanceMany,
        operationName: 'markAttendanceMany',
        variables: Variables_Mutation_markAttendanceMany(
          objects: personIds
              .map(
                (id) => Input_HistoryAttendanceHistoryInsertInput(
                  meetingId: meetingId.toUuid(),
                  personId: id.toUuid(),
                  asServant: asServant,
                ),
              )
              .toList(),
        ).toJson(),
        parserFn: (_) => null,
      ),
    );
  }

  /// Unmarks attendance by the attendance record [id] (preferred when id is known).
  Future<void> unmarkAttendance({required String id}) {
    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationunmarkAttendance,
        operationName: 'unmarkAttendance',
        variables: Variables_Mutation_unmarkAttendance(
          id: id.toUuid(),
        ).toJson(),
        parserFn: (_) => null,
      ),
    );
  }

  /// Unmarks attendance by meeting + person + asServant when record id is not known.
  Future<void> unmarkAttendanceBy({
    required String meetingId,
    required String personId,
    bool asServant = false,
  }) {
    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationunmarkAttendanceBy,
        operationName: 'unmarkAttendanceBy',
        variables: Variables_Mutation_unmarkAttendanceBy(
          meetingId: meetingId.toUuid(),
          personId: personId.toUuid(),
          asServant: asServant,
        ).toJson(),
        parserFn: (_) => null,
      ),
    );
  }
}
