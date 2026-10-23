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
      verify: (_) => expect(f.trackedPropertiesOf<KodasPersonMark>(), {
        'meeting_id': liturgy.id,
        'person_id': mina.id,
        'is_recorded': true,
        'is_success': true,
      }),
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
      verify: (_) => expect(
        f.trackedPropertiesOf<KodasPersonMark>()['is_success'],
        isFalse,
      ),
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
      verify: (_) => expect(f.trackedPropertiesOf<KodasUndo>(), {
        'meeting_id': liturgy.id,
        'person_id': mina.id,
        'undone_change': AttendanceUndoableChange.kodasRecorded.name,
      }),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'a saved kodas column change is tracked as successful',
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await cubit.changeVisibility(visible: false);
      },
      verify: (_) => expect(f.trackedPropertiesOf<KodasColumnToggle>(), {
        'meeting_id': liturgy.id,
        'is_visible': false,
        'is_success': true,
      }),
    );

    blocTest<RecordKodasCubit, RecordKodasState>(
      'a rejected kodas column change is tracked as unsuccessful',
      setUp: () => f.rejectMeetingUpdates = true,
      build: () => f.createCubit(),
      act: (cubit) async {
        cubit.follow(meeting: liturgy, day: sunday);
        await cubit.changeVisibility(visible: false);
      },
      verify: (_) => expect(
        f.trackedPropertiesOf<KodasColumnToggle>()['is_success'],
        isFalse,
      ),
    );
  });
}
