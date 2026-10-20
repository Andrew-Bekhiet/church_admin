import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:patrol/patrol.dart';

import 'e2e_backend.dart';
import 'e2e_widget_tester.dart';

abstract final class E2eApp {
  static final List<Object> uncaughtAppErrors = [];
  static final Finder loginButton = find.byKey(
    LoginScreenKeys.loginSignupButtonKey,
  );
  static final Finder homeScreen = find.byKey(
    HomeModeCardsKeys.churchDataButtonKey,
  );
  static const _maxUnlocksWhileLeaving = 3;
  static const _launchTimeout = Duration(minutes: 2);
  static const _returnHomeTimeout = Duration(minutes: 1);

  static final Finder lockPasswordField = find.byKey(
    BiometricsAuthScreenKeys.passwordFieldKey,
  );

  static ErrorWidgetBuilder? _testErrorWidgetBuilder;

  /// Starts the app without awaiting it: `flutter_local_notifications` asks
  /// for notification permission during initialization and waits for an
  /// answer, so the native dialog has to be dismissed while `main` is running.
  /// On a fresh install the dialog can take longer than any fixed wait to
  /// appear, so it is looked for until `main` returns.
  static Future<void> launchSignedOut(PatrolIntegrationTester $) async {
    final tester = $.tester;
    _testErrorWidgetBuilder = ErrorWidget.builder;
    WidgetController.hitTestWarningShouldBeFatal = true;

    final launching =
        runZonedGuarded(app.main, _recordUncaughtAppError) ?? Future.value();
    var launched = false;
    launching.whenComplete(() => launched = true).ignore();
    final launchDeadline = DateTime.now().add(_launchTimeout);

    while (!launched) {
      if (DateTime.now().isAfter(launchDeadline)) {
        throw TestFailure('The app did not finish starting in $_launchTimeout');
      }
      if (await $.platform.mobile.isPermissionDialogVisible(
        timeout: const Duration(seconds: 2),
      )) {
        await $.platform.mobile.denyPermission();
      }
    }

    if (AuthBloc.I.state is! AuthUnauthenticated) {
      AuthBloc.I.add(const SignOut());
    }

    await tester.waitFor(loginButton, timeout: const Duration(minutes: 1));
  }

  static Future<void> signIn(
    WidgetTester tester, {
    required String email,
    required String password,
  }) async {
    await tester.typeInto(find.byKey(LoginScreenKeys.emailFieldKey), email);
    await tester.typeInto(
      find.byKey(LoginScreenKeys.passwordFieldKey),
      password,
    );
    await tester.tapOn(loginButton);
    await tester.waitForAbsent(loginButton);
  }

  static Future<void> signUp(
    WidgetTester tester, {
    required String email,
    required String password,
  }) async {
    await tester.tapOn(find.byKey(LoginScreenKeys.switchLoginSignupButtonKey));
    await tester.typeInto(find.byKey(LoginScreenKeys.emailFieldKey), email);
    await tester.typeInto(
      find.byKey(LoginScreenKeys.passwordFieldKey),
      password,
    );
    await tester.typeInto(
      find.byKey(LoginScreenKeys.passwordConfirmationFieldKey),
      password,
    );
    await tester.tapOn(loginButton);
    await tester.waitForAbsent(loginButton);
  }

  static Future<void> applyInvitationCode(
    WidgetTester tester,
    String code,
  ) async {
    await tester.typeInto(find.byKey(InvitationCodeFormKeys.codeField), code);
    await tester.tapOn(find.byKey(InvitationCodeFormKeys.applyButton));
    await tester.waitForAbsent(find.byKey(InvitationCodeFormKeys.codeField));
  }

  static Future<void> completeSpiritualData(WidgetTester tester) async {
    final saveButton = find.byKey(UpdateUserSpiritDataScreenKeys.saveButton);
    final datePicker = find.byType(DatePickerDialog);
    await tester.waitFor(saveButton);

    for (final field in [
      UpdateUserSpiritDataScreenKeys.lastCommunionField,
      UpdateUserSpiritDataScreenKeys.lastConfessionField,
    ]) {
      await tester.tapOn(find.byKey(field));
      await tester.tapOn(
        find.descendant(of: datePicker, matching: find.byType(TextButton)).last,
      );
      await tester.waitForAbsent(datePicker);
    }

    await tester.tapOn(saveButton);
    await tester.waitForAbsent(saveButton);
  }

  static Future<void> unlock(WidgetTester tester, String password) async {
    await tester.typeInto(lockPasswordField, password);
    await tester.tapOn(find.byKey(BiometricsAuthScreenKeys.submitButtonKey));
    await tester.waitForAbsent(lockPasswordField);
  }

  static Future<void> enterHome(WidgetTester tester, String password) async {
    await unlock(tester, password);
    await tester.waitFor(homeScreen);
  }

  static Future<void> openDrawerItem(WidgetTester tester, Key item) async {
    await tester.waitFor(homeScreen);
    tester
        .stateList<ScaffoldState>(find.byType(Scaffold))
        .firstWhere((scaffold) => scaffold.hasDrawer)
        .openDrawer();
    await tester.tapOn(find.byKey(item));
  }

  static Future<void> signOut(
    WidgetTester tester, {
    String password = E2eBackend.password,
  }) async {
    await returnHome(tester, password: password);
    await openDrawerItem(tester, HomeDrawerKeys.signOut);
    await tester.waitFor(loginButton);
  }

  /// Pops one screen at a time, waiting for each popped screen to leave the
  /// tree before looking again, so a screen still running its exit transition
  /// is never mistaken for one that is still open.
  static Future<void> returnHome(
    WidgetTester tester, {
    required String password,
  }) async {
    final backButton = find.byType(BackButton);
    final deadline = DateTime.now().add(_returnHomeTimeout);
    var unlocks = 0;
    bool isHomeSettled() =>
        homeScreen.hitTestable().evaluate().isNotEmpty &&
        backButton.evaluate().isEmpty;

    while (!isHomeSettled()) {
      if (DateTime.now().isAfter(deadline)) {
        throw tester.failureShowingScreen(
          'Did not get back to the home screen in $_returnHomeTimeout',
        );
      }
      if (lockPasswordField.evaluate().isNotEmpty) {
        if (++unlocks > _maxUnlocksWhileLeaving) {
          throw TestFailure(
            'The lock screen kept coming back while returning home (ENG-95)',
          );
        }
        await unlock(tester, password);
        continue;
      }
      if (backButton.hitTestable().evaluate().firstOrNull
          case final tappableBackButton?) {
        final poppedBackButton = find.byElementPredicate(
          (element) => identical(element, tappableBackButton),
        );
        await tester.tap(poppedBackButton);
        await tester.waitForAbsent(poppedBackButton);
        continue;
      }
      await tester.pump(E2eWidgetTester.pollInterval);
    }
  }

  /// Unmounts the app inside the test body so errors thrown while it tears
  /// down are recorded here rather than failing the test after it passed.
  static Future<void> finish(WidgetTester tester) async {
    await tester.pumpWidget(const SizedBox.shrink());

    if (tester.takeException() case final teardownError?) {
      uncaughtAppErrors.add(teardownError);
      debugPrint('E2E app error during teardown: $teardownError');
    }

    ErrorWidget.builder = _testErrorWidgetBuilder!;
    expect(uncaughtAppErrors, isEmpty);
  }

  static void _recordUncaughtAppError(Object error, StackTrace stackTrace) {
    uncaughtAppErrors.add(error);
    debugPrint('E2E uncaught app error: $error\n$stackTrace');
  }
}
