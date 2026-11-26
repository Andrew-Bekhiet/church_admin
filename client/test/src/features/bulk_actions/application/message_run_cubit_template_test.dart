import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fakes/fake_box.dart';
import 'message_run_cubit_fixture.dart';

class _RejectingWritesBox extends FakeSyncKVStore<Object?> {
  static final StateError rejection = StateError('disk full');

  @override
  void put(String key, Object? value) => throw rejection;
}

void main() {
  final mina = MessageRunCubitFixture.mina;
  final mark = MessageRunCubitFixture.mark;
  const minaPhone = MessageRunCubitFixture.minaPhone;
  const minaOtherPhone = MessageRunCubitFixture.minaOtherPhone;
  const markPhone = MessageRunCubitFixture.markPhone;
  const textSavedAfterStarting = 'مساء الخير';

  late MessageRunCubitFixture fixture;

  setUp(() => fixture = MessageRunCubitFixture());

  blocTest<MessageRunCubit, MessageRunState>(
    'starting saves the message for the next time',
    build: () => fixture.buildCubit(),
    seed: () => MessageRunComposing(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone, minaOtherPhone]),
      ],
    ),
    act: (cubit) => cubit.saveTextAndStart(fixture.template),
    verify: (_) => expect(
      fixture.userPreferences.lastWhatsappMessageText,
      fixture.template.text,
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'resuming does not save the message again',
    build: () => fixture.buildCubit(),
    seed: () => MessageRunComposing(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone]),
      ],
    ),
    act: (cubit) async {
      cubit.saveTextAndStart(fixture.template);
      await fixture.userPreferences.setLastWhatsappMessageText(
        textSavedAfterStarting,
      );
      cubit
        ..stop()
        ..resume();
    },
    verify: (_) => expect(
      fixture.userPreferences.lastWhatsappMessageText,
      textSavedAfterStarting,
    ),
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'a rejected save is logged and sending still starts',
    setUp: () => fixture = MessageRunCubitFixture(
      preferencesBox: _RejectingWritesBox(),
    ),
    build: () => fixture.buildCubit(),
    seed: () => MessageRunComposing(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(mina, [minaPhone, minaOtherPhone]),
      ],
    ),
    act: (cubit) => cubit.saveTextAndStart(fixture.template),
    wait: Duration.zero,
    verify: (cubit) {
      expect(cubit.state, isA<MessageRunSending>());
      expect(
        fixture.logging.reportedExceptions.map((record) => record.error),
        [_RejectingWritesBox.rejection],
      );
    },
  );

  blocTest<MessageRunCubit, MessageRunState>(
    'starting before the recipients load saves nothing',
    build: () => fixture.buildCubit(),
    act: (cubit) => cubit.saveTextAndStart(fixture.template),
    verify: (_) =>
        expect(fixture.userPreferences.lastWhatsappMessageText, isNull),
  );
}
