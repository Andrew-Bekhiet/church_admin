import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'bulk_whatsapp_message_cubit_fixture.dart';

void main() {
  final mina = BulkWhatsappMessageCubitFixture.mina;
  final mark = BulkWhatsappMessageCubitFixture.mark;
  final peter = BulkWhatsappMessageCubitFixture.peter;
  const minaPhone = BulkWhatsappMessageCubitFixture.minaPhone;
  const markPhone = BulkWhatsappMessageCubitFixture.markPhone;

  late BulkWhatsappMessageCubitFixture fixture;

  setUp(() => fixture = BulkWhatsappMessageCubitFixture());

  List<WhatsappRecipient> markMinaAndPeterWithoutPhone() => [
    fixture.recipientOf(mark, [markPhone]),
    fixture.recipientOf(mina, [minaPhone]),
    fixture.recipientOf(peter, []),
  ];

  Json trackedRunFinish() => fixture.analytics
      .trackedEventsOf<BulkWhatsappRunFinish>()
      .single
      .properties;

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'after the last person with a phone the run finishes with each outcome',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeterWithoutPhone()),
    act: (cubit) async {
      await cubit.openCurrentChat();
      await cubit.showNextAndMaybeOpenItsChat();
      cubit.skipCurrent();
    },
    verify: (cubit) {
      final finished = cubit.state as BulkWhatsappFinished;
      expect(finished.recipients.map((recipient) => recipient.status), [
        WhatsappRecipientStatus.opened,
        WhatsappRecipientStatus.skipped,
        WhatsappRecipientStatus.pending,
      ]);
      expect(finished.isStopped, isFalse);
    },
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'a run that reaches its end is tracked as not stopped',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeterWithoutPhone()),
    act: (cubit) async {
      await cubit.openCurrentChat();
      await cubit.showNextAndMaybeOpenItsChat();
      cubit.skipCurrent();
    },
    verify: (_) => expect(trackedRunFinish(), {
      'recipient_count': 3,
      'opened_count': 1,
      'skipped_count': 1,
      'without_phone_count': 1,
      'opens_next_chat_on_return': false,
      'is_stopped': false,
    }),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'stopping finishes the run early',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(recipients: markMinaAndPeterWithoutPhone()),
    act: (cubit) => cubit.stop(),
    verify: (cubit) =>
        expect((cubit.state as BulkWhatsappFinished).isStopped, isTrue),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'a stopped run is tracked with how far it got',
    build: () => fixture.buildCubit(),
    seed: () => fixture.sendingTo(
      recipients: [
        fixture.recipientOf(mark, [markPhone]),
        fixture.recipientOf(peter, []),
      ],
      opensNextChatOnReturn: true,
    ),
    act: (cubit) async {
      await cubit.openCurrentChat();
      cubit.stop();
    },
    verify: (_) {
      expect(
        fixture.analytics.trackedEventsOf<BulkWhatsappRunFinish>().single.name,
        'bulk_whatsapp:run_finish',
      );
      expect(trackedRunFinish(), {
        'recipient_count': 2,
        'opened_count': 1,
        'skipped_count': 0,
        'without_phone_count': 1,
        'opens_next_chat_on_return': true,
        'is_stopped': true,
      });
    },
  );
}
