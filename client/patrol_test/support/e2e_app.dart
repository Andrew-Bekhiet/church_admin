import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/main.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'e2e_backend.dart';
import 'e2e_widget_tester.dart';

abstract final class E2eApp {
  static final List<Object> uncaughtAppErrors = [];
  static final Finder loginButton = find.byKey(
    LoginScreenKeys.loginSignupButtonKey,
  );
  static final Finder homeScreen = find.byKey(
    HomeScreenSummaryKeys.churchDataButtonKey,
  );
  static const _maxUnlocksWhileLeaving = 3;

  static final Finder lockPasswordField = find.byKey(
    AuthenticateScreenKeys.passwordFieldKey,
  );

  static ErrorWidgetBuilder? _testErrorWidgetBuilder;

  /// Starts the app without awaiting it: `flutter_local_notifications` asks
  /// for notification permission during initialization and waits for an
  /// answer, so the native dialog has to be dismissed while `main` is running.
  static Future<void> launchSignedOut(PatrolIntegrationTester $) async {
    final tester = $.tester;
    _testErrorWidgetBuilder = ErrorWidget.builder;
    WidgetController.hitTestWarningShouldBeFatal = true;

    final launching = runZonedGuarded(app.main, _recordUncaughtAppError);

    if (await $.platform.mobile.isPermissionDialogVisible(
      timeout: const Duration(seconds: 10),
    )) {
      await $.platform.mobile.denyPermission();
    }

    await launching;

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
    await tester.tapOn(find.byKey(AuthenticateScreenKeys.submitButtonKey));
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
    final backButton = find.byType(BackButton);
    var unlocks = 0;

    while (true) {
      await tester.idle();
      if (lockPasswordField.evaluate().isNotEmpty) {
        if (++unlocks > _maxUnlocksWhileLeaving) {
          throw TestFailure(
            'The lock screen kept coming back while returning home (ENG-95)',
          );
        }
        await unlock(tester, password);
        continue;
      }
      if (backButton.evaluate().isEmpty) break;
      await tester.tapOn(backButton);
    }

    await openDrawerItem(tester, HomeDrawerKeys.signOut);
    await tester.waitFor(loginButton);
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
    debugPrint('E2E uncaught app errors: ${uncaughtAppErrors.length}');
  }

  static void _recordUncaughtAppError(Object error, StackTrace stackTrace) {
    uncaughtAppErrors.add(error);
    debugPrint('E2E uncaught app error: $error\n$stackTrace');
  }
}
