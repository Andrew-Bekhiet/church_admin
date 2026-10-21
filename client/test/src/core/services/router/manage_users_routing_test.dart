import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'support/app_routing_harness.dart';

void main() {
  late AppRoutingHarness harness;

  final userManager = AppRoutingHarness.approvedUser(
    permissions: {UserPermission.manageAllUsers},
  );

  final passwordField = find.byKey(BiometricsAuthScreenKeys.passwordFieldKey);

  setUp(() => harness = AppRoutingHarness());

  testWidgets('a user who cannot manage users stays on home', (tester) async {
    harness.signIn(AppRoutingHarness.approvedUser());
    await harness.pump(tester);

    await harness.open(tester, const ManageUsersRoute());

    expect(find.byType(ManageUsersScreen), findsNothing);
    expect(find.byType(HomeScreen), findsOneWidget);
  });

  testWidgets('opening user management asks for local authentication first', (
    tester,
  ) async {
    harness.signIn(userManager);
    await harness.pump(tester);

    await harness.open(tester, const ManageUsersRoute());

    expect(find.byType(ManageUsersScreen), findsNothing);
    expect(passwordField, findsOneWidget);
  });

  testWidgets('authenticating locally opens user management', (tester) async {
    harness.signIn(userManager);
    await harness.pump(tester);
    await harness.open(tester, const ManageUsersRoute());

    await harness.unlockWithPassword(tester);

    expect(find.byType(ManageUsersScreen), findsOneWidget);
  });

  testWidgets(
    'reopening user management after leaving with the back button asks '
    'for local authentication again',
    (tester) async {
      harness.signIn(userManager);
      await harness.pump(tester);
      await harness.open(tester, const ManageUsersRoute());
      await harness.unlockWithPassword(tester);

      await harness.tapBackButton(tester);
      await harness.open(tester, const ManageUsersRoute());

      expect(find.byType(ManageUsersScreen), findsNothing);
      expect(passwordField, findsOneWidget);
    },
  );

  testWidgets(
    'reopening user management after leaving with system back asks for '
    'local authentication again',
    (tester) async {
      harness.signIn(userManager);
      await harness.pump(tester);
      await harness.open(tester, const ManageUsersRoute());
      await harness.unlockWithPassword(tester);

      await harness.pressSystemBack(tester);
      await harness.open(tester, const ManageUsersRoute());

      expect(find.byType(ManageUsersScreen), findsNothing);
      expect(passwordField, findsOneWidget);
    },
  );

  testWidgets('backing out of local authentication returns to home', (
    tester,
  ) async {
    harness.signIn(userManager);
    await harness.pump(tester);
    await harness.open(tester, const ManageUsersRoute());

    await harness.tapBackButton(tester);

    expect(passwordField, findsNothing);
    expect(find.byType(ManageUsersScreen), findsNothing);
    expect(find.byType(HomeScreen), findsOneWidget);
  });
}
