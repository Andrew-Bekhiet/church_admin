import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  const membershipsLabel = 'الخدمات والمجموعات المشارك بها';
  const familyLabel = 'العائلة';
  const family = Family(id: 'family-id', name: 'أسرة');
  const primary = Service(id: 'primary', name: 'ابتدائي');
  const kindergarten = Service(id: 'kg', name: 'حضانة');
  const address = Address(id: 'address-id', houseCode: '12');

  late EditPersonScreenHarness harness;

  setUp(() {
    harness = EditPersonScreenHarness();
  });

  tearDown(defaultTearDown);

  testWidgets(
    'saving a person nothing places shows why below the memberships',
    (
      tester,
    ) async {
      harness.install();
      await harness.open(tester, const CreateBlankPerson());
      await tester.enterText(find.widgetWithText(TextField, 'الاسم'), 'جرجس');

      await harness.tapSave(tester);
      await tester.pumpAndSettle();

      final message = find.text(const NothingPlacesThePerson().message);
      await harness.scrollTo(tester, message);
      expect(message, findsOneWidget);
      expect(
        tester.getTopLeft(message).dy,
        greaterThan(tester.getBottomLeft(find.text(membershipsLabel)).dy),
      );
    },
  );

  testWidgets('services that do not fit the study year are explained below '
      'the memberships', (tester) async {
    harness.install();
    final student = Person(
      id: 'person-id',
      name: 'مينا',
      family: family,
      familyId: family.id,
      workStatus: WorkStatus.student,
      studyYear: StudyYear(order: 1, name: 'الأولى'),
      services: [
        Service(
          id: 'upper',
          name: 'إعدادي',
          studyYearFrom: StudyYear(order: 7, name: 'السابعة'),
        ),
      ],
    );
    await harness.open(tester, UpdatePerson(person: student));

    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    final message = find.text(const ServicesOutsideStudyYear().message);
    await harness.scrollTo(tester, message);
    expect(message, findsOneWidget);
    expect(
      tester.getTopLeft(message).dy,
      greaterThan(tester.getBottomLeft(find.text(membershipsLabel)).dy),
    );
  });

  testWidgets('an address change that cannot be combined with a move is '
      'explained below the address', (tester) async {
    harness.currentUser = const User(
      uid: 'me',
      name: 'خادم',
      adminOn: [
        AdminOnData(
          permissionId: 'grant',
          service: primary,
          serviceGender: true,
        ),
      ],
    );
    harness.install();
    final boy = Person(
      id: 'person-id',
      name: 'مينا',
      gender: true,
      family: family,
      familyId: family.id,
      address: address,
      services: const [primary, kindergarten],
    );
    await harness.open(tester, UpdatePerson(person: boy));
    final houseCode = find.descendant(
      of: find.byKey(AddressFormPlaceFieldsKeys.houseCode),
      matching: find.byType(TextField),
    );
    await harness.scrollTo(tester, houseCode);
    await tester.enterText(houseCode, '34');
    await harness.scrollTo(tester, find.text('أنثى'));
    await tester.tap(find.text('أنثى'));
    await tester.pumpAndSettle();

    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    final message = find.text(const AddressChangeBlockedByMove().message);
    await harness.scrollTo(tester, message);
    expect(message, findsOneWidget);
    expect(
      tester.getTopLeft(message).dy,
      lessThan(tester.getTopLeft(find.text(familyLabel)).dy),
    );
  });
}
