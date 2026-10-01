import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../utils.dart';

void main() {
  const father = PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true);

  const ownMain = PhoneContact(
    id: 'own-main',
    phone: '+201001111111',
    isMainPhone: true,
  );
  const ownWork = PhoneContact(
    id: 'own-work',
    phone: '+201002222222',
    label: 'عمل',
  );
  const fatherNumber = FamilyPhoneContact(
    contact: PhoneContact(id: 'father-number', phone: '+201003333333'),
    role: father,
    personId: 'the-father',
  );

  tearDown(defaultTearDown);

  Future<void> pumpCard(
    WidgetTester tester, {
    List<PhoneContact> own = const [],
    List<FamilyPhoneContact> family = const [],
  }) => tester.pumpWidget(
    materialAppWithThemeAndLocale()(
      Scaffold(
        body: SingleChildScrollView(
          child: PhoneBookCard(own: own, family: family, onCall: (_) {}),
        ),
      ),
    ),
  );

  testWidgets('the main number is marked as main', (tester) async {
    await pumpCard(tester, own: [ownMain, ownWork]);

    expect(
      find.descendant(
        of: find.byKey(PhoneBookCardKeys.contact('own-main')),
        matching: find.text('رقم الهاتف (أساسي)'),
      ),
      findsOneWidget,
    );
  });

  testWidgets('numbers are shown in local format', (tester) async {
    await pumpCard(tester, own: [ownWork]);

    expect(
      find.descendant(
        of: find.byKey(PhoneBookCardKeys.contact('own-work')),
        matching: find.text('01002222222'),
      ),
      findsOneWidget,
    );
  });

  testWidgets("family numbers are labelled by the relative's role", (
    tester,
  ) async {
    await pumpCard(tester, own: [ownMain], family: [fatherNumber]);

    expect(
      find.descendant(
        of: find.byKey(PhoneBookCardKeys.contact('father-number')),
        matching: find.text('رقم الهاتف (الأب)'),
      ),
      findsOneWidget,
    );
  });

  testWidgets('having no numbers at all is called out', (tester) async {
    await pumpCard(tester);

    expect(find.byKey(PhoneBookCardKeys.empty), findsOneWidget);
  });
}
