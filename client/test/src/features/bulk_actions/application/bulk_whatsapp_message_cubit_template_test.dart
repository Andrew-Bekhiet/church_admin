import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'bulk_whatsapp_message_cubit_fixture.dart';

void main() {
  const lastSentText = 'اهلا';

  late BulkWhatsappMessageCubitFixture fixture;

  setUp(() => fixture = BulkWhatsappMessageCubitFixture());

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'starting saves the message for the next time',
    build: () => fixture.buildCubit(),
    seed: () =>
        BulkWhatsappComposing(recipients: fixture.markThenMinaWithTwoPhones()),
    act: (cubit) => cubit.saveTextAndStart(fixture.template),
    verify: (_) => expect(
      fixture.userPreferences.lastWhatsappMessageText,
      fixture.template.text,
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'starting before the recipients load saves nothing',
    build: () => fixture.buildCubit(),
    act: (cubit) => cubit.saveTextAndStart(fixture.template),
    verify: (_) =>
        expect(fixture.userPreferences.lastWhatsappMessageText, isNull),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'the last saved message is offered with the given fields',
    setUp: () => fixture.userPreferences.setLastWhatsappMessageText(
      lastSentText,
    ),
    build: () => fixture.buildCubit(),
    verify: (cubit) => expect(
      cubit.withLastSentTextOr(fixture.template),
      MessageTemplate(text: lastSentText, fields: fixture.template.fields),
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'without a saved message the given template is offered',
    build: () => fixture.buildCubit(),
    verify: (cubit) =>
        expect(cubit.withLastSentTextOr(fixture.template), fixture.template),
  );
}
