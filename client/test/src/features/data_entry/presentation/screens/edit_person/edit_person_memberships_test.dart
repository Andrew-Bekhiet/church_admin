import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  const family = Family(id: 'family-id', name: 'أسرة');
  const primary = Service(id: 'primary', name: 'ابتدائي');
  final person = Person(
    id: 'person-id',
    name: 'مينا',
    family: family,
    familyId: family.id,
  );

  late EditPersonScreenHarness harness;

  setUp(() {
    harness = EditPersonScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('a person without services or groups says so', (tester) async {
    await harness.open(tester, UpdatePerson(person: person));

    expect(find.text('لا يوجد خدمات أو مجموعات'), findsOneWidget);
  });

  testWidgets("the person's services are listed", (tester) async {
    await harness.open(
      tester,
      UpdatePerson(person: person.copyWith(services: const [primary])),
    );

    expect(find.text(primary.name), findsOneWidget);
    expect(find.text('لا يوجد خدمات أو مجموعات'), findsNothing);
  });

  testWidgets('a spinner shows while the saved memberships load', (
    tester,
  ) async {
    await harness.open(
      tester,
      UpdatePerson(person: person),
      membershipsLoaded: false,
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('the spinner goes away once the memberships have loaded', (
    tester,
  ) async {
    await harness.open(
      tester,
      UpdatePerson(person: person),
      membershipsLoaded: false,
    );

    harness.persons.respondWithSavedMemberships(null);
    await tester.pumpAndSettle();

    expect(find.byKey(EditPersonSaveButtonKeys.saveButton), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsNothing);
  });

  testWidgets('a service picked on the selection page joins the memberships', (
    tester,
  ) async {
    harness.services.pickableServices = const [primary];
    await harness.open(tester, UpdatePerson(person: person));
    final memberships = find.byKey(PersonEditMembershipsSectionKeys.field);
    await tester.ensureVisible(memberships);
    await tester.pumpAndSettle();

    await tester.tap(memberships);
    await tester.pumpAndSettle();
    await tester.tap(
      find.byKey(PersonServiceSelectionPageKeys.checkboxFor(primary)),
    );
    await tester.pump();
    await tester.tap(find.byKey(PersonServiceSelectionPageKeys.confirmButton));
    await tester.pumpAndSettle();

    expect(find.byType(PersonServiceSelectionPage), findsNothing);
    expect(find.text(primary.name), findsOneWidget);
  });

  testWidgets('the services loaded late are listed', (tester) async {
    await harness.open(
      tester,
      UpdatePerson(person: person),
      membershipsLoaded: false,
    );

    harness.persons.respondWithSavedMemberships(
      person.copyWith(services: const [primary]),
    );
    await tester.pumpAndSettle();

    expect(find.text(primary.name), findsOneWidget);
  });
}
