import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../utils.dart';
import '../support/record_kodas_fixture.dart';

void main() {
  group('RecordKodasCubit analytics', () {
    final sunday = DateTime(2026, 9, 27);
    final liturgy = RecordKodasFixture.meeting(id: 'liturgy');
    final liturgyProperties = {'meeting_id': liturgy.id};
    final mina = Person(id: 'mina', name: 'Mina');

    late RecordKodasFixture f;

    setUpAll(() => registerFallbackValue(liturgy));

    setUp(() {
      f = RecordKodasFixture();
      addTearDown(f.dispose);
    });
    tearDown(defaultTearDown);

    blocTest<RecordKodasCubit, RecordKodasState>(
      'recording kodas is tracked as a successful mark of that person',
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        await cubit.toggleKodas(mina);
      },
      verify: (_) => expect(f.analytics.trackedEventsOf<KodasPersonMark>(), [
        isA<KodasPersonMark>()
            .having(
              (event) => event.meetingProperties,
              'meetingProperties',
              liturgyProperties,
            )
            .having((event) => event.personId, 'personId', mina.id)
            .having((event) => event.isRecorded, 'isRecorded', isTrue)
            .having((event) => event.isSuccess, 'isSuccess', isTrue),
      ]),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'rejected kodas is tracked as an unsuccessful mark',
      setUp: () => f.server.rejectWith = const KodasChangeRejectedException(),
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        await cubit.toggleKodas(mina);
      },
      verify: (_) => expect(f.analytics.trackedEventsOf<KodasPersonMark>(), [
        isA<KodasPersonMark>().having(
          (event) => event.isSuccess,
          'isSuccess',
          isFalse,
        ),
      ]),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'undoing recorded kodas is tracked with the change it undid',
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await f.settle();
        await cubit.toggleKodas(mina);
        f.presenter.undoLast();
      },
      verify: (_) => expect(f.analytics.trackedEventsOf<KodasUndo>(), [
        isA<KodasUndo>()
            .having(
              (event) => event.meetingProperties,
              'meetingProperties',
              liturgyProperties,
            )
            .having((event) => event.personId, 'personId', mina.id)
            .having(
              (event) => event.undoneChange,
              'undoneChange',
              AttendanceUndoableChange.kodasRecorded,
            ),
      ]),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'a saved kodas column change is tracked as successful',
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await cubit.changeVisibility(visible: false);
      },
      verify: (_) => expect(f.analytics.trackedEventsOf<KodasColumnToggle>(), [
        isA<KodasColumnToggle>()
            .having(
              (event) => event.meetingProperties,
              'meetingProperties',
              liturgyProperties,
            )
            .having((event) => event.isVisible, 'isVisible', isFalse)
            .having((event) => event.isSuccess, 'isSuccess', isTrue),
      ]),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'a rejected kodas column change is tracked as unsuccessful',
      setUp: () => f.rejectMeetingUpdates = true,
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await cubit.changeVisibility(visible: false);
      },
      verify: (_) => expect(f.analytics.trackedEventsOf<KodasColumnToggle>(), [
        isA<KodasColumnToggle>().having(
          (event) => event.isSuccess,
          'isSuccess',
          isFalse,
        ),
      ]),
    );
  });
}
