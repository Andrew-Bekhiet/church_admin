import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import 'message_run_cubit_fixture.dart';

void main() {
  final mina = MessageRunCubitFixture.mina;
  final mark = MessageRunCubitFixture.mark;
  final peter = MessageRunCubitFixture.peter;
  const minaPhone = MessageRunCubitFixture.minaPhone;
  const minaOtherPhone = MessageRunCubitFixture.minaOtherPhone;
  const markPhone = MessageRunCubitFixture.markPhone;
  const oneSecond = Duration(seconds: 1);

  late MessageRunCubitFixture fixture;

  setUp(() => fixture = MessageRunCubitFixture());

  List<Recipient> markMinaAndPeter() => [
    fixture.recipientOf(mark, [markPhone]),
    fixture.recipientOf(mina, [minaPhone]),
    fixture.recipientOf(peter, [minaOtherPhone]),
  ];

  void openMarkAndReturn(MessageRunCubit cubit, FakeAsync async) {
    unawaited(cubit.openCurrentChat());
    async.flushMicrotasks();
    cubit.returnFromChat();
    async.flushMicrotasks();
  }

  blocTest<MessageRunCubit, MessageRunState>(
    'returning counts down the seconds before the next chat opens',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTemplateTo(
      recipients: markMinaAndPeter(),
      opensNextChatOnReturn: true,
    ),
    act: (cubit) => fakeAsync((async) {
      openMarkAndReturn(cubit, async);
      async.elapse(oneSecond);
    }),
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(cubit).secondsBeforeNextChat,
      MessageRunCubit.nextChatDelay.inSeconds - 1,
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'the next chat does not open before the countdown ends',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTemplateTo(
      recipients: markMinaAndPeter(),
      opensNextChatOnReturn: true,
    ),
    act: (cubit) => fakeAsync((async) {
      openMarkAndReturn(cubit, async);
      async.elapse(MessageRunCubit.nextChatDelay - oneSecond);
    }),
    verify: (_) => fixture.verifyOnlyChatsOpenedInOrder([(mark, markPhone)]),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'the next chat opens when the countdown ends',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTemplateTo(
      recipients: markMinaAndPeter(),
      opensNextChatOnReturn: true,
    ),
    act: (cubit) => fakeAsync((async) {
      openMarkAndReturn(cubit, async);
      async.elapse(MessageRunCubit.nextChatDelay);
    }),
    verify: (cubit) {
      fixture.verifyOnlyChatsOpenedInOrder([
        (mark, markPhone),
        (mina, minaPhone),
      ]);
      expect(
        MessageRunCubitFixture.sendingStateOf(cubit).secondsBeforeNextChat,
        isNull,
      );
    },
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'turning on opening the next chat mid-run counts down to it on return',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTemplateTo(recipients: markMinaAndPeter()),
    act: (cubit) => fakeAsync((async) {
      cubit.setOpensNextChatOnReturn(isEnabled: true);
      openMarkAndReturn(cubit, async);
      async.elapse(MessageRunCubit.nextChatDelay);
    }),
    verify: (_) => fixture.verifyOnlyChatsOpenedInOrder([
      (mark, markPhone),
      (mina, minaPhone),
    ]),
  );

  final interruptions = <String, void Function(MessageRunCubit cubit)>{
    'skipping': (cubit) => cubit.skipCurrent(),
    'stopping': (cubit) => cubit.stop(),
    'answering not sent': (cubit) => cubit.markNotSentIfSent(mark),
    'turning off opening the next chat': (cubit) =>
        cubit.setOpensNextChatOnReturn(isEnabled: false),
    'starting to edit the message or pick a number': (cubit) =>
        cubit.cancelNextChatCountdown(),
  };

  for (final MapEntry(key: interruption, value: interrupt)
      in interruptions.entries) {
    blocTest<MessageRunCubit, MessageRunState>(
      '$interruption during the countdown keeps the next chat closed',
      build: () => fixture.buildCubit(),
      seed: () => fixture.sendingTemplateTo(
        recipients: markMinaAndPeter(),
        opensNextChatOnReturn: true,
      ),
      act: (cubit) => fakeAsync((async) {
        openMarkAndReturn(cubit, async);
        interrupt(cubit);
        async.elapse(MessageRunCubit.nextChatDelay);
      }),
      verify: (_) => fixture.verifyOnlyChatsOpenedInOrder([(mark, markPhone)]),
    );
  }

  blocTest<MessageRunCubit, MessageRunState>(
    'opening the next chat by hand during the countdown opens it once',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTemplateTo(
      recipients: markMinaAndPeter(),
      opensNextChatOnReturn: true,
    ),
    act: (cubit) => fakeAsync((async) {
      openMarkAndReturn(cubit, async);
      unawaited(cubit.openCurrentChat());
      async.elapse(MessageRunCubit.nextChatDelay);
    }),
    verify: (_) => fixture.verifyOnlyChatsOpenedInOrder([
      (mark, markPhone),
      (mina, minaPhone),
    ]),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'closing during the countdown keeps the next chat closed',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTemplateTo(
      recipients: markMinaAndPeter(),
      opensNextChatOnReturn: true,
    ),
    act: (cubit) async {
      final async = FakeAsync()
        ..run((async) => openMarkAndReturn(cubit, async));
      await cubit.close();
      async.elapse(MessageRunCubit.nextChatDelay);
    },
    verify: (_) => fixture.verifyOnlyChatsOpenedInOrder([(mark, markPhone)]),
  );
}
