import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import '../edit_object/edit_object_screen_harness.dart';

void main() {
  const service = Service(id: 'service', name: 'ابتدائي');

  late EditObjectScreenHarness harness;

  setUp(() {
    harness = EditObjectScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('a group added from a service is saved in it and opens its '
      'details', (tester) async {
    await harness.open(
      tester,
      const EditGroupRoute(intent: CreateGroupInService(service: service)),
    );

    await tester.enterText(harness.nameField, 'مجموعة الشمامسة');
    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    final created = harness.groupsDAO.createdObjects.single;
    expect(created.serviceId, service.id);
    expect(
      harness.routeStack.last,
      isA<ViewGroupRoute>().having((route) => route.id, 'id', created.id),
    );
  });

  testWidgets('a group without a service shows why and is not saved', (
    tester,
  ) async {
    await harness.open(tester, const EditGroupRoute());

    await tester.enterText(harness.nameField, 'مجموعة');
    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    expect(find.text(ObjectEditError.serviceRequired.message), findsOneWidget);
    expect(harness.groupsDAO.createdObjects, isEmpty);
  });
}
