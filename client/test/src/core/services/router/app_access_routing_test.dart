import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'support/app_routing_harness.dart';

void main() {
  late AppRoutingHarness harness;

  setUp(() => harness = AppRoutingHarness());

  group('the first screen follows the account state:', () {
    testWidgets('a signed-out user starts on the login screen', (
      tester,
    ) async {
      await harness.pump(tester);

      expect(find.byType(LoginScreen), findsOneWidget);
    });

    testWidgets('an unverified email starts on email verification', (
      tester,
    ) async {
      harness.signIn(AppRoutingHarness.approvedUser(), emailVerified: false);

      await harness.pump(tester);

      expect(find.byType(EmailVerificationScreen), findsOneWidget);
    });

    testWidgets('an unapproved user starts on the waiting-approval screen', (
      tester,
    ) async {
      harness.signIn(const User(uid: 'uid', name: 'name'));

      await harness.pump(tester);

      expect(find.byType(UnapprovedUserScreen), findsOneWidget);
    });

    testWidgets('stale spirit data starts on the spirit data form', (
      tester,
    ) async {
      harness.signIn(
        AppRoutingHarness.approvedUser(spiritDataUpToDate: false),
      );

      await harness.pump(tester);

      expect(find.byType(UpdateUserSpiritDataScreen), findsOneWidget);
    });

    testWidgets('a due local authentication covers home with the lock', (
      tester,
    ) async {
      harness
        ..signIn(AppRoutingHarness.approvedUser())
        ..locksOnStart = true;

      await harness.pump(tester);

      expect(
        find.byKey(BiometricsAuthScreenKeys.passwordFieldKey).hitTestable(),
        findsOneWidget,
      );
    });

    testWidgets('an approved user with complete data starts on home', (
      tester,
    ) async {
      harness.signIn(AppRoutingHarness.approvedUser());

      await harness.pump(tester);

      expect(find.byType(HomeScreen), findsOneWidget);
    });
  });

  testWidgets('signing out on home shows the login screen', (tester) async {
    harness.signIn(AppRoutingHarness.approvedUser());
    await harness.pump(tester);

    harness.signOut();
    await harness.settle(tester);

    expect(find.byType(LoginScreen), findsOneWidget);
  });

  testWidgets('verifying the email moves on to home', (tester) async {
    final user = AppRoutingHarness.approvedUser();
    harness.signIn(user, emailVerified: false);
    await harness.pump(tester);

    harness.signIn(user);
    await harness.settle(tester);

    expect(find.byType(HomeScreen), findsOneWidget);
  });

  testWidgets('a forced update published while the app runs covers it', (
    tester,
  ) async {
    harness.signIn(AppRoutingHarness.approvedUser());
    await harness.pump(tester);

    harness.featureFlags.mustForceUpdate = true;
    harness.featureFlags.publishConfigChange();
    await harness.settle(tester);

    expect(find.byType(ForceUpdateScreen), findsOneWidget);
  });

  testWidgets('lifting a forced update returns to home', (tester) async {
    harness
      ..signIn(AppRoutingHarness.approvedUser())
      ..featureFlags.mustForceUpdate = true;
    await harness.pump(tester);

    harness.featureFlags.mustForceUpdate = false;
    harness.featureFlags.publishConfigChange();
    await harness.settle(tester);

    expect(find.byType(HomeScreen), findsOneWidget);
  });

  testWidgets('maintenance published while the app runs covers it', (
    tester,
  ) async {
    harness.signIn(AppRoutingHarness.approvedUser());
    await harness.pump(tester);

    harness.featureFlags.isUnderMaintenance = true;
    harness.featureFlags.publishConfigChange();
    await harness.settle(tester);

    expect(find.byType(UnderMaintenanceScreen), findsOneWidget);
  });

  testWidgets('a screen disabled by its path in remote config is replaced '
      'by the outdated feature screen', (tester) async {
    harness
      ..signIn(AppRoutingHarness.approvedUser())
      ..featureFlags.disabledRoutes = {'/settings'};
    await harness.pump(tester);

    await harness.open(tester, const SettingsRoute());

    expect(find.byType(SettingsScreen), findsNothing);
    expect(find.byType(OutdatedFeatureScreen), findsOneWidget);
  });

  testWidgets('a screen popped as remote config changes stays closed', (
    tester,
  ) async {
    harness.signIn(AppRoutingHarness.approvedUser());
    await harness.pump(tester);
    await harness.open(tester, const SettingsRoute());

    await harness.popScreenAsRemoteConfigChanges(tester);

    expect(find.byType(SettingsScreen), findsNothing);
    expect(find.byType(HomeScreen), findsOneWidget);
  });
}
