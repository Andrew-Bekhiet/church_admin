import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'message_run_cubit_fixture.dart';

void main() {
  final mina = MessageRunCubitFixture.mina;
  final mark = MessageRunCubitFixture.mark;
  const minaPhone = MessageRunCubitFixture.minaPhone;
  const markPhone = MessageRunCubitFixture.markPhone;

  late MessageRunCubitFixture fixture;

  setUp(() => fixture = MessageRunCubitFixture());

  blocTest<MessageRunCubit, MessageRunState>(
    'a person whose app could not be opened is marked so',
    build: () {
      fixture.stubWhatsappLaunch(() async => false);

      return fixture.buildCubit();
    },
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone]),
      ],
    ),
    act: (cubit) => cubit.openCurrentChat(),
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(cubit).current.status,
      RecipientStatus.openFailed,
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'skipping a person whose app could not be opened keeps them open-failed',
    build: () {
      fixture.stubWhatsappLaunch(() async => false);

      return fixture.buildCubit();
    },
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone]),
      ],
    ),
    act: (cubit) async {
      await cubit.openCurrentChat();
      cubit.skipCurrent();
    },
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(cubit).recipients.first.status,
      RecipientStatus.openFailed,
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'opening the app after it failed once marks the person sent',
    build: () {
      fixture.stubWhatsappLaunch(() async => false);

      return fixture.buildCubit();
    },
    seed: () => fixture.sendingTemplateTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone]),
      ],
    ),
    act: (cubit) async {
      await cubit.openCurrentChat();
      fixture.stubWhatsappLaunch(() async => true);
      await cubit.openCurrentChat();
    },
    verify: (cubit) => expect(
      MessageRunCubitFixture.sendingStateOf(cubit).current.status,
      RecipientStatus.sent,
    ),
  );
}
