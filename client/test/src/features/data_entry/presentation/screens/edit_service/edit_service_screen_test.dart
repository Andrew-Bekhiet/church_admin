import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import '../edit_object/edit_object_screen_harness.dart';

void main() {
  late EditObjectScreenHarness harness;

  setUp(() {
    harness = EditObjectScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('renaming a service without study years saves without adding '
      'them and goes back', (tester) async {
    await harness.open(
      tester,
      const EditServiceRoute(
        intent: UpdateService(
          service: Service(id: 's', name: 'خدمة قديمة'),
        ),
      ),
    );

    await tester.enterText(harness.nameField, 'خدمة جديدة');
    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    final saved = harness.services.updates.single.editedObject;
    expect(
      (saved.name, saved.studyYearFrom, saved.studyYearTo),
      (
        'خدمة جديدة',
        null,
        null,
      ),
    );
    expect(find.text('open'), findsOneWidget);
  });

  testWidgets('a new service is created with the default meeting it offers', (
    tester,
  ) async {
    await harness.open(tester, const EditServiceRoute());

    await tester.enterText(harness.nameField, 'خدمة ابتدائي');
    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    expect(harness.meetings.createdMeetings.single.name, 'اجتماع ابتدائي');
  });
}
