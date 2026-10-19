import 'dart:async';
import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import 'meeting_fixtures.dart';

void main() {
  final byName = [...MeetingFixtures.meetings]
    ..sort((a, b) => a.name.compareTo(b.name));

  List<Meeting> listedBy(
    PaginatableStreamBase<Meeting> Function(MeetingsDAO meetings) listing,
  ) => FakeAshBackend.settledListing([
    MeetingFixtures.meetingsTable(),
  ], (db) => listing(db.meetings));

  Future<T> withBackend<T>(
    Future<T> Function(FakeAshBackend backend) body, {
    FakeAshTable? table,
  }) async {
    final backend = FakeAshBackend([table ?? MeetingFixtures.meetingsTable()]);
    addTearDown(backend.dispose);

    return body(backend);
  }

  group('listing', () {
    test('meetings are listed by name', () {
      expect(listedBy((meetings) => meetings.streamAll()), byName);
    });

    test('searching lists only the meetings whose name contains the text', () {
      expect(
        listedBy(
          (meetings) => meetings.streamAll(
            searchQuery: Stream.value(MeetingFixtures.youthMeeting.name),
          ),
        ),
        [MeetingFixtures.youthMeeting],
      );
    });

    test('filtering by archived lists only the archived meetings', () {
      expect(
        listedBy(
          (meetings) => meetings.streamAll(
            where: Stream.value([
              Filter(MeetingFields().isArchived, BooleanOperator.is$, true),
            ]),
          ),
        ),
        [MeetingFixtures.retired],
      );
    });

    test('the list follows the change feed', () {
      fakeAsync((async) {
        final table = MeetingFixtures.meetingsTable(
          rows: [
            const MeetingRow(MeetingFixtures.liturgy),
            const MeetingRow(MeetingFixtures.retired),
          ],
        );
        final backend = FakeAshBackend([table]);
        final stream = backend.db.meetings.streamAll();
        final emitted = <List<Meeting>>[];
        final subscription = stream.listen(emitted.add);
        async.elapse(FakeAshBackend.settleTime);

        table.add(const MeetingRow(MeetingFixtures.youthMeeting));
        backend.announce([
          EntityChange(
            type: 'Meeting',
            id: MeetingFixtures.youthMeeting.id,
            op: 'insert',
          ),
        ]);
        async.elapse(FakeAshBackend.settleTime);

        expect(
          emitted.last,
          [
            MeetingFixtures.liturgy,
            MeetingFixtures.retired,
            MeetingFixtures.youthMeeting,
          ]..sort((a, b) => a.name.compareTo(b.name)),
        );

        unawaited(subscription.cancel());
        unawaited(stream.dispose());
        backend.dispose();
      });
    });
  });

  test('a meeting opens with its service, study year and group', () {
    final opened = fakeAsync((async) {
      final backend = FakeAshBackend([MeetingFixtures.meetingsTable()]);
      final stream = backend.db.meetings.streamSingleById(
        id: MeetingFixtures.firstYearClass.id,
      );
      Meeting? emitted;
      final subscription = stream.listen((meeting) => emitted = meeting);
      async.elapse(FakeAshBackend.settleTime);
      unawaited(subscription.cancel());
      backend.dispose();

      return emitted;
    });

    expect(opened, MeetingFixtures.firstYearClass);
  });

  group('writing', () {
    final draft = Meeting(
      id: '',
      name: 'اجتماع جديد',
      audience: MeetingAudience.onlyServants,
      isArchived: false,
      showKodasCheckbox: false,
      color: const Color(0xFFFF9800),
      serviceId: MeetingFixtures.sundaySchool.id,
      serviceStudyYear: MeetingFixtures.firstYear.order,
      serviceGender: false,
    );

    test('creating answers the meeting the server stored', () {
      return withBackend((backend) async {
        final answered = await backend.db.meetings.createObject(
          newObject: draft,
        );

        expect(answered, draft.copyWith(id: answered.id));
      });
    });

    test('creating sends the fields the meeting is created from', () {
      return withBackend((backend) async {
        await backend.db.meetings.createObject(newObject: draft);

        expect(backend.server.sentTo('createMeeting').single.variables, {
          'input': {
            'name': draft.name,
            'audience': 'ONLY_SERVANTS',
            'color': colorToInt(draft.color),
            'isArchived': draft.isArchived,
            'showKodasCheckbox': draft.showKodasCheckbox,
            'serviceId': draft.serviceId,
            'serviceStudyYear': draft.serviceStudyYear,
            'serviceGender': draft.serviceGender,
          },
        });
      });
    });

    test('creating a meeting of a group sends the group', () {
      return withBackend((backend) async {
        await backend.db.meetings.createObject(
          newObject: Meeting(
            id: '',
            name: MeetingFixtures.youthMeeting.name,
            audience: MeetingAudience.onlyPersons,
            isArchived: false,
            group: MeetingFixtures.youthGroup,
          ),
        );

        expect(
          backend.server.sentTo('createMeeting').single.variables['input'],
          containsPair('groupId', MeetingFixtures.youthGroup.id),
        );
      });
    });

    test('updating sends the whole desired state and answers the meeting', () {
      return withBackend((backend) async {
        final renamed = MeetingFixtures.liturgy.copyWith(
          name: 'قداس الأحد',
          audience: MeetingAudience.onlyPersons,
          color: null,
          showKodasCheckbox: false,
        );

        final answered = await backend.db.meetings.updateObject(
          newObject: renamed,
          oldObject: MeetingFixtures.liturgy,
        );

        expect(answered?.name, renamed.name);
        expect(answered?.audience, renamed.audience);
        expect(
          answered?.color,
          isNull,
          reason: 'a cleared colour is sent as null',
        );
        expect(backend.server.sentTo('updateMeeting').single.variables, {
          'id': renamed.id,
          'input': {
            'name': renamed.name,
            'audience': 'ONLY_PERSONS',
            'color': null,
            'isArchived': renamed.isArchived,
            'showKodasCheckbox': renamed.showKodasCheckbox,
          },
        });
      });
    });

    test('archiving sends only the archived flag', () {
      return withBackend((backend) async {
        final archived = await backend.db.meetings.archiveMeeting(
          meetingId: MeetingFixtures.liturgy.id,
        );

        expect(archived?.isArchived, isTrue);
        expect(backend.server.sentTo('updateMeeting').single.variables, {
          'id': MeetingFixtures.liturgy.id,
          'input': {'isArchived': true},
        });
      });
    });

    test('unarchiving sends the archived flag cleared', () {
      return withBackend((backend) async {
        final unarchived = await backend.db.meetings.archiveMeeting(
          meetingId: MeetingFixtures.retired.id,
          isArchived: false,
        );

        expect(unarchived?.isArchived, isFalse);
      });
    });

    group('a rejected write throws the exception of its error code', () {
      final rejections = <String, TypeMatcher<BackendException>>{
        'forbidden': isA<BackendForbiddenException>(),
        'meeting/service-study-year-mismatch': isA<BackendRejectedException>(),
      };

      for (final MapEntry(key: code, value: matcher) in rejections.entries) {
        test(code, () {
          return withBackend((backend) async {
            backend.server.nextMutationRejectionCode = code;

            await expectLater(
              backend.db.meetings.createObject(newObject: draft),
              throwsA(
                allOf(
                  matcher,
                  predicate<BackendException>((e) => e.code == code),
                ),
              ),
            );
          });
        });
      }
    });
  });
}
