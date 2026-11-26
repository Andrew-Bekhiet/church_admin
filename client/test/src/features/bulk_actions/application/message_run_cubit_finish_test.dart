import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'message_run_cubit_fixture.dart';

void main() {
  final mina = MessageRunCubitFixture.mina;
  final mark = MessageRunCubitFixture.mark;
  final peter = MessageRunCubitFixture.peter;
  const minaPhone = MessageRunCubitFixture.minaPhone;
  const minaOtherPhone = MessageRunCubitFixture.minaOtherPhone;
  const markPhone = MessageRunCubitFixture.markPhone;

  late MessageRunCubitFixture fixture;

  setUp(() => fixture = MessageRunCubitFixture());

  List<Recipient> markMinaAndPeterWithoutPhone() => [
    fixture.recipientOf(mark, [markPhone]),
    fixture.recipientOf(mina, [minaPhone]),
    fixture.recipientOf(peter, []),
  ];

  Iterable<BulkMessageRunFinish> trackedRunFinishes() =>
      fixture.analytics.trackedEventsOf<BulkMessageRunFinish>();

  blocTest<MessageRunCubit, MessageRunState>(
    'after the last person with a phone the run finishes with each outcome',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeterWithoutPhone()),
    act: (cubit) async {
      await cubit.openCurrentChat();
      cubit
        ..askIfSentAndShowNextIfChatWasOpened()
        ..skipCurrent();
    },
    verify: (cubit) {
      final finished = cubit.state as MessageRunFinished;
      expect(finished.recipients.map((recipient) => recipient.status), [
        RecipientStatus.sent,
        RecipientStatus.skipped,
        RecipientStatus.pending,
      ]);
      expect(finished.isStopped, isFalse);
    },
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'stopping finishes the run early',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeterWithoutPhone()),
    act: (cubit) => cubit.stop(),
    verify: (cubit) =>
        expect((cubit.state as MessageRunFinished).isStopped, isTrue),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'leaving a finished run tracks it once',
    build: () => fixture.buildCubit(),
    seed: () => MessageRunComposing(recipients: markMinaAndPeterWithoutPhone()),
    act: (cubit) async {
      cubit
        ..saveTextAndStart(fixture.template)
        ..stop();
      await cubit.close();
    },
    verify: (_) => expect(trackedRunFinishes(), hasLength(1)),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'leaving in the middle of a pass tracks who was sent and who remained',
    build: () => fixture.buildCubit(),
    seed: () => MessageRunComposing(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone]),
        fixture.recipientOf(peter, [minaOtherPhone]),
      ],
    ),
    act: (cubit) async {
      cubit.saveTextAndStart(fixture.template);
      await cubit.openCurrentChat();
      await cubit.close();
    },
    verify: (_) {
      final properties = trackedRunFinishes().single.properties;
      expect(properties['sent_count'], 1);
      expect(properties['remaining_count'], 2);
    },
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'leaving a resumed run tracks both passes',
    build: () => fixture.buildCubit(),
    seed: () => MessageRunComposing(recipients: markMinaAndPeterWithoutPhone()),
    act: (cubit) async {
      cubit
        ..saveTextAndStart(fixture.template)
        ..stop()
        ..resume();
      await cubit.close();
    },
    verify: (_) =>
        expect(trackedRunFinishes().single.properties['pass_count'], 2),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'leaving before sending starts tracks no run',
    build: () => fixture.buildCubit(),
    seed: () => MessageRunComposing(recipients: markMinaAndPeterWithoutPhone()),
    act: (cubit) => cubit.close(),
    verify: (_) => expect(trackedRunFinishes(), isEmpty),
  );
}
