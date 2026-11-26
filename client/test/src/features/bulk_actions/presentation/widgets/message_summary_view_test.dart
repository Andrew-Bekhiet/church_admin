import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../material_ui_test_app.dart';

void main() {
  const phone = PhoneContact(id: 'c1', phone: '01000000001');

  Recipient recipient(String name, RecipientStatus status) => Recipient.of(
    Person(id: name, name: name, contacts: const [phone]),
  ).copyWith(status: status);

  Recipient recipientWithoutPhone(String name) =>
      Recipient.of(Person(id: name, name: name));

  Future<void> pumpSummary(
    WidgetTester tester,
    List<Recipient> recipients,
  ) async {
    tester.view
      ..physicalSize = const Size(720, 1600)
      ..devicePixelRatio = 2;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      MaterialUiTestApp.withThemeAndLocale(
        child: MessageSummaryView(
          state: MessageRunPassEnded(recipients: recipients),
          onResume: () {},
          onMarkNotSent: (_) {},
        ),
      ),
    );
  }

  testWidgets('the groups that need action come first, the sent ones last', (
    tester,
  ) async {
    await pumpSummary(tester, [
      recipient('مارك', RecipientStatus.sent),
      recipientWithoutPhone('بيتر'),
      recipient('مينا', RecipientStatus.pending),
      recipient('يوحنا', RecipientStatus.skipped),
      recipient('بولس', RecipientStatus.notSent),
    ]);

    final titleTops = [
      MessageSummaryViewKeys.notSentOrOpenFailedTitle,
      MessageSummaryViewKeys.skippedTitle,
      MessageSummaryViewKeys.remainingTitle,
      MessageSummaryViewKeys.withoutPhoneTitle,
      MessageSummaryViewKeys.sentTitle,
    ].map((key) => tester.getTopLeft(find.byKey(key)).dy).toList();

    expect(titleTops, [...titleTops]..sort());
  });

  testWidgets('each group title shows how many people it holds', (
    tester,
  ) async {
    await pumpSummary(tester, [
      recipient('مارك', RecipientStatus.notSent),
      recipient('مينا', RecipientStatus.openFailed),
      recipient('يوحنا', RecipientStatus.skipped),
      recipient('بولس', RecipientStatus.skipped),
      recipient('بطرس', RecipientStatus.skipped),
    ]);

    String? titleOf(Key key) => tester.widget<Text>(find.byKey(key)).data;

    expect(
      [
        titleOf(MessageSummaryViewKeys.notSentOrOpenFailedTitle),
        titleOf(MessageSummaryViewKeys.skippedTitle),
      ].map((title) => RegExp(r'\d+').firstMatch(title ?? '')?[0]),
      ['2', '3'],
    );
  });

  testWidgets('a group with nobody in it is not shown', (tester) async {
    await pumpSummary(tester, [
      recipient('مارك', RecipientStatus.sent),
    ]);

    expect(find.byKey(MessageSummaryViewKeys.skippedTitle), findsNothing);
  });

  testWidgets('only a person whose app could not be opened says so', (
    tester,
  ) async {
    final openFailed = recipient('مارك', RecipientStatus.openFailed);
    final notSent = recipient('مينا', RecipientStatus.notSent);
    await pumpSummary(tester, [openFailed, notSent]);

    expect(
      [openFailed, notSent].map(
        (recipient) => find
            .byKey(MessageSummaryViewKeys.openFailedFor(recipient.person))
            .evaluate()
            .length,
      ),
      [1, 0],
    );
  });
}
