import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const father = PersonType(id: 'father-type', name: 'أب', isFamilyAdmin: true);

  PhoneContact contact(
    String id,
    String phone, {
    String? label,
    String? personId,
    PersonType? personType,
    bool isMain = false,
  }) => PhoneContact(
    id: id,
    phone: phone,
    label: label,
    personId: personId,
    personType: personType,
    isMainPhone: isMain,
  );

  Future<void> pumpSection(WidgetTester tester, Person person) {
    return tester.pumpWidget(
      MaterialApp(
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: SingleChildScrollView(
              child: PersonContactSection(person: person),
            ),
          ),
        ),
      ),
    );
  }

  testWidgets('own numbers are listed with the main number first and marked', (
    tester,
  ) async {
    final person = Person(
      id: 'p1',
      name: 'مينا',
      contacts: [
        contact('work', '+201112223334', label: 'العمل'),
        contact('main', '+201001234567', isMain: true),
      ],
    );

    await pumpSection(tester, person);

    final mainTop = tester.getTopLeft(
      find.byKey(PhoneContactsSectionKeys.contact('main')),
    );
    final workTop = tester.getTopLeft(
      find.byKey(PhoneContactsSectionKeys.contact('work')),
    );
    expect(mainTop.dy, lessThan(workTop.dy));
    expect(find.text('أساسي'), findsOneWidget);
  });

  testWidgets('numbers are shown in the national format', (tester) async {
    final person = Person(
      id: 'p1',
      name: 'مينا',
      contacts: [contact('main', '+201001234567', isMain: true)],
    );

    await pumpSection(tester, person);

    expect(find.text('01001234567'), findsOneWidget);
  });

  testWidgets("family numbers list the admins but not the person's own", (
    tester,
  ) async {
    final person = Person(
      id: 'p1',
      name: 'مينا',
      family: Family(
        id: 'f1',
        name: 'عائلة',
        contacts: [
          contact('own', '+201001234567', personId: 'p1', personType: father),
          contact(
            'dad',
            '+201223334445',
            personId: 'p2',
            personType: father,
          ),
        ],
      ),
    );

    await pumpSection(tester, person);

    final familySection = find.byKey(PersonContactSectionKeys.familyNumbers);
    expect(
      find.descendant(
        of: familySection,
        matching: find.byKey(PhoneContactsSectionKeys.contact('dad')),
      ),
      findsOneWidget,
    );
    expect(
      find.descendant(
        of: familySection,
        matching: find.byKey(PhoneContactsSectionKeys.contact('own')),
      ),
      findsNothing,
    );
    expect(find.text('الأب'), findsOneWidget);
  });

  testWidgets('the family section is hidden when there are no family numbers', (
    tester,
  ) async {
    final person = Person(id: 'p1', name: 'مينا');

    await pumpSection(tester, person);

    expect(find.byKey(PersonContactSectionKeys.ownNumbers), findsOneWidget);
    expect(find.byKey(PersonContactSectionKeys.familyNumbers), findsNothing);
    expect(find.text('أرقام الأسرة'), findsNothing);
  });
}
