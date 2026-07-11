import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/queries.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/study_years/__generated__/subscriptions.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users/__generated__/fragments.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users/__generated__/subscriptions.gql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';

void main() {
  group('GqlTypePolicies', () {
    const meetingId = '11111111-1111-1111-1111-111111111111';
    const personId = '22222222-2222-2222-2222-222222222222';
    const userUid = '33333333-3333-3333-3333-333333333333';

    late InMemoryStore store;
    late GraphQLCache cache;

    setUp(() {
      store = InMemoryStore();
      cache = GraphQLCache(
        store: store,
        typePolicies: GqlTypePolicies.policies,
      );
    });

    test(
      'roster rows normalize under composite keys, not inside the Query entry',
      () {
        const request = Request(
          operation: Operation(document: documentNodeQueryattendanceAnalysis),
          variables: {
            'dayFrom': '2026-01-01',
            'dayTo': '2026-01-31',
            'meetingIds': [meetingId],
            'where': <dynamic>[],
          },
        );

        final data = Query_attendanceAnalysis(
          historyMeetings: [
            Query_attendanceAnalysis_historyMeetings(
              id: stringToUuid(meetingId),
              days: [
                Query_attendanceAnalysis_historyMeetings_days(
                  day: DateTime(2026, 6, 15),
                ),
              ],
            ),
          ],
          historyMeetingRoster: [
            Query_attendanceAnalysis_historyMeetingRoster(
              personId: stringToUuid(personId),
              asServant: false,
              meetingId: stringToUuid(meetingId),
              attendanceHistory: [
                Query_attendanceAnalysis_historyMeetingRoster_attendanceHistory(
                  day: DateTime(2026, 6, 15),
                ),
              ],
            ),
          ],
        );

        cache.writeQuery(request, broadcast: false, data: data.toJson());

        const rosterKey =
            'HistoryMeetingRoster:'
            '{"asServant":false,"meetingId":"$meetingId","personId":"$personId"}';

        expect(store.get(rosterKey), isNotNull);
        expect(store.get(rosterKey), containsPair('personId', personId));

        final queryEntry = store.get('Query')!;
        final rosterField = queryEntry.entries
            .firstWhere((e) => e.key.startsWith('historyMeetingRoster'))
            .value as List<dynamic>;
        expect(rosterField.single, containsPair(r'$ref', rosterKey));
        expect(rosterField.single, isNot(contains('personId')));

        expect(store.get('HistoryMeetings:$meetingId'), isNotNull);

        expect(
          store.toMap().keys.where(
            (k) =>
                k.startsWith('HistoryMeetingDays') ||
                k.startsWith('HistoryAttendanceHistory'),
          ),
          isEmpty,
        );
      },
    );

    test('AuthUsersData normalizes under its uid, not an id', () {
      const request = Request(
        operation: Operation(document: documentNodeSubscriptionwatchAllUsers),
      );

      final data = Subscription_watchAllUsers(
        authUsersData: [
          Fragment_UserOverview(
            uid: stringToUuid(userUid),
            name: 'Nabil',
            email: 'nabil@example.com',
            permissions: [],
          ),
        ],
      );

      cache.writeQuery(request, broadcast: false, data: data.toJson());

      const userKey = 'AuthUsersData:{"uid":"$userUid"}';
      expect(store.get(userKey), isNotNull);
      expect(store.get(userKey), containsPair('name', 'Nabil'));
    });

    test('StudyYears normalizes under its order key', () {
      const request = Request(
        operation: Operation(
          document: documentNodeSubscriptionwatchAllStudyYears,
        ),
      );

      final data = Subscription_watchAllStudyYears(
        studyYears: [
          Subscription_watchAllStudyYears_studyYears(
            order: 3,
            name: 'Third year',
          ),
        ],
      );

      cache.writeQuery(request, broadcast: false, data: data.toJson());

      const yearKey = 'StudyYears:{"order":3}';
      expect(store.get(yearKey), isNotNull);
      expect(store.get(yearKey), containsPair('name', 'Third year'));
    });
  });
}
