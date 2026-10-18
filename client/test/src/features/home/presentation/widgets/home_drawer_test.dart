import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../utils.dart';
import '../../support/home_screen_harness.dart';

void main() {
  late HomeScreenHarness harness;

  setUp(() => harness = HomeScreenHarness());

  tearDown(defaultTearDown);

  group('manage users entry', () {
    testWidgets('is shown to a user who can manage some users', (
      tester,
    ) async {
      harness.signInAs(
        const User(
          uid: 'manager',
          name: 'manager',
          permissions: PermissionsSet.fromSet({UserPermission.manageAllUsers}),
        ),
      );
      await harness.pump(tester);

      await harness.openDrawer(tester);

      expect(find.byKey(HomeDrawerKeys.manageUsers), findsOneWidget);

      await harness.unmount(tester);
    });

    testWidgets('is shown to a user who manages the users of one area', (
      tester,
    ) async {
      harness.signInAs(
        const User(
          uid: 'area-manager',
          name: 'area manager',
          adminOn: [
            AdminOnData(permissionId: 'area-scope', areaAdminOnUsers: true),
          ],
        ),
      );
      await harness.pump(tester);

      await harness.openDrawer(tester);

      expect(find.byKey(HomeDrawerKeys.manageUsers), findsOneWidget);

      await harness.unmount(tester);
    });

    testWidgets('is hidden from a user who cannot manage users', (
      tester,
    ) async {
      harness.signInAs(const User(uid: 'servant', name: 'servant'));
      await harness.pump(tester);

      await harness.openDrawer(tester);

      expect(find.byKey(HomeDrawerKeys.manageUsers), findsNothing);

      await harness.unmount(tester);
    });
  });
}
