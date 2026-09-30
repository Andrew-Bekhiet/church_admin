import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  const appContent = 'Private member details';
  final backgroundStates = ValueVariant({
    AppLifecycleState.inactive,
    AppLifecycleState.hidden,
    AppLifecycleState.paused,
  });

  Future<void> pumpAppOn(
    WidgetTester tester,
    PlatformValue platform, {
    bool isAuthenticationInProgress = false,
  }) async {
    final mockLocalAuthService = _MockLocalAuthService();
    when(
      () => mockLocalAuthService.isAuthenticationInProgress,
    ).thenReturn(isAuthenticationInProgress);

    initGlobalProviderContainer([
      currentPlatformServiceProvider.overrideWithValue(
        CurrentPlatformService(platform),
      ),
      localAuthServiceProvider.overrideWithValue(mockLocalAuthService),
    ]);
    addTearDown(resetGlobalProviderContainer);

    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

    await tester.pumpWidget(
      const MaterialApp(
        home: AppSwitcherPrivacyCover(
          child: Scaffold(body: Center(child: Text(appContent))),
        ),
      ),
    );
  }

  testWidgets(
    'the app content is visible while the app is in the foreground on iOS',
    (tester) async {
      await pumpAppOn(tester, PlatformValue.ios);

      expect(find.text(appContent).hitTestable(), findsOneWidget);
      expect(find.byKey(AppSwitcherPrivacyCoverKeys.cover), findsNothing);
    },
  );

  testWidgets(
    'leaving the app on iOS hides its content behind the church logo',
    (tester) async {
      await pumpAppOn(tester, PlatformValue.ios);

      tester.binding.handleAppLifecycleStateChanged(
        backgroundStates.currentValue ?? fail('Missing lifecycle state'),
      );
      await tester.pump();

      expect(find.text(appContent).hitTestable(), findsNothing);
      expect(
        find.descendant(
          of: find.byKey(AppSwitcherPrivacyCoverKeys.cover),
          matching: find.image(const AssetImage('assets/logo.png')),
        ),
        findsOneWidget,
      );
    },
    variant: backgroundStates,
  );

  testWidgets(
    'returning to the app on iOS reveals its content again',
    (tester) async {
      await pumpAppOn(tester, PlatformValue.ios);

      tester.binding
        ..handleAppLifecycleStateChanged(AppLifecycleState.inactive)
        ..handleAppLifecycleStateChanged(AppLifecycleState.hidden)
        ..handleAppLifecycleStateChanged(AppLifecycleState.paused);
      await tester.pump();

      tester.binding
        ..handleAppLifecycleStateChanged(AppLifecycleState.hidden)
        ..handleAppLifecycleStateChanged(AppLifecycleState.inactive)
        ..handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      await tester.pump();

      expect(find.text(appContent).hitTestable(), findsOneWidget);
      expect(find.byKey(AppSwitcherPrivacyCoverKeys.cover), findsNothing);
    },
  );

  testWidgets(
    'leaving the app on Android keeps its content as it is',
    (tester) async {
      await pumpAppOn(tester, PlatformValue.android);

      tester.binding.handleAppLifecycleStateChanged(
        backgroundStates.currentValue ?? fail('Missing lifecycle state'),
      );
      await tester.pump();

      expect(find.text(appContent).hitTestable(), findsOneWidget);
      expect(find.byKey(AppSwitcherPrivacyCoverKeys.cover), findsNothing);
    },
    variant: backgroundStates,
  );

  testWidgets(
    "Doesn't show if biometrics authentication is in progress",
    (tester) async {
      await pumpAppOn(
        tester,
        PlatformValue.ios,
        isAuthenticationInProgress: true,
      );

      tester.binding.handleAppLifecycleStateChanged(
        backgroundStates.currentValue ?? fail('Missing lifecycle state'),
      );
      await tester.pump();

      expect(find.text(appContent).hitTestable(), findsOneWidget);
      expect(find.byKey(AppSwitcherPrivacyCoverKeys.cover), findsNothing);
    },
    variant: backgroundStates,
  );
}

class _MockLocalAuthService extends Mock implements LocalAuthService {}
