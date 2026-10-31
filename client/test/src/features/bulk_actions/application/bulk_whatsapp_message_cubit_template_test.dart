import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'bulk_whatsapp_message_cubit_fixture.dart';

void main() {
  const savedTemplateText = 'اهلا {name}';

  late BulkWhatsappMessageCubitFixture fixture;

  setUp(() => fixture = BulkWhatsappMessageCubitFixture());

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'starting saves the message for the next time',
    build: () => fixture.buildCubit(),
    seed: () =>
        BulkWhatsappComposing(recipients: fixture.markThenMinaWithTwoPhones()),
    act: (cubit) => cubit.start(fixture.template),
    verify: (_) => expect(
      fixture.userPreferences.lastWhatsappMessageTemplate,
      fixture.template.text,
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'the last saved message is offered with the given fields',
    setUp: () => fixture.userPreferences.setLastWhatsappMessageTemplate(
      savedTemplateText,
    ),
    build: () => fixture.buildCubit(),
    verify: (cubit) => expect(
      cubit.lastTemplateOr(fixture.template),
      MessageTemplate(text: savedTemplateText, fields: fixture.template.fields),
    ),
  );

  blocTest<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
    'without a saved message the given template is offered',
    build: () => fixture.buildCubit(),
    verify: (cubit) =>
        expect(cubit.lastTemplateOr(fixture.template), fixture.template),
  );
}
