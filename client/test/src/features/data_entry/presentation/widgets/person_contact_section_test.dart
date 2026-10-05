import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../utils.dart';

void main() {
  const motherNumber = FamilyPhoneContact(
    contact: PhoneContact(id: 'mother-number', phone: '+201003333333'),
    role: PersonType(id: 'mother', name: 'الأم', isFamilyAdmin: true),
    personId: 'the-mother',
  );

  tearDown(defaultTearDown);

  testWidgets("a family admin's info hides the family numbers", (
    tester,
  ) async {
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Scaffold(
          body: SingleChildScrollView(
            child: PersonContactSection(
              person: Person(
                id: 'the-father',
                name: 'الأب',
                personType: const PersonType(
                  id: 'father',
                  name: 'الأب',
                  isFamilyAdmin: true,
                ),
                familyContacts: const [motherNumber],
              ),
            ),
          ),
        ),
      ),
    );

    expect(
      find.byKey(PhoneBookCardKeys.contact(motherNumber.contact.id)),
      findsNothing,
    );
  });

  testWidgets("a child's info shows the family admins' numbers", (
    tester,
  ) async {
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Scaffold(
          body: SingleChildScrollView(
            child: PersonContactSection(
              person: Person(
                id: 'the-child',
                name: 'الابن',
                personType: const PersonType(id: 'son', name: 'ابن'),
                familyContacts: const [motherNumber],
              ),
            ),
          ),
        ),
      ),
    );

    expect(
      find.byKey(PhoneBookCardKeys.contact(motherNumber.contact.id)),
      findsOneWidget,
    );
  });
}
