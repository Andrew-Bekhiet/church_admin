import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  const privateDetails = 'Private member details';
  const onboarding = 'Onboarding';

  late bool isReauthDue;
  late StreamController<void> reauthChanges;
  late bool isSignedIn;
  late StreamController<bool> signedInChanges;

  setUp(() {
    isReauthDue = false;
    reauthChanges = StreamController<void>.broadcast();
    isSignedIn = true;
    signedInChanges = StreamController<bool>.broadcast();

    final authBloc = _MockAuthBloc();
    when(() => authBloc.isSignedIn).thenAnswer((_) => isSignedIn);
    when(
      () => authBloc.isSignedInStream,
    ).thenAnswer((_) => signedInChanges.stream);

    final localAuthService = _MockLocalAuthService();
    when(() => localAuthService.shouldAuthenticate).thenAnswer(
      (_) => isReauthDue,
    );
    when(
      () => localAuthService.refreshUIStream,
    ).thenAnswer((_) => reauthChanges.stream);
    when(localAuthService.canCheckBiometrics).thenAnswer((_) async => false);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      localAuthServiceProvider.overrideWithValue(localAuthService),
      authRepositoryProvider.overrideWithValue(_MockAuthRepository()),
      authStorageProvider.overrideWithValue(_MockAuthStorage()),
      encryptionServiceProvider.overrideWithValue(_MockEncryptionService()),
    ]);
  });

  tearDown(() async {
    resetGlobalProviderContainer();
    await reauthChanges.close();
    await signedInChanges.close();
  });

  Future<void> setReauthDue(WidgetTester tester, {required bool due}) async {
    isReauthDue = due;
    reauthChanges.add(null);
    await tester.pumpAndSettle();
  }

  Future<void> openApp(WidgetTester tester, {required String at}) async {
    tester.view
      ..physicalSize = const Size(1170, 2532)
      ..devicePixelRatio = 3;
    addTearDown(tester.view.reset);

    final router = GoRouter(
      initialLocation: at,
      routes: [
        GoRoute(
          path: '/',
          builder: (_, _) => const Scaffold(body: Text('Home')),
          routes: [
            GoRoute(
              path: 'details',
              builder: (_, _) => const Scaffold(
                body: Column(
                  children: [
                    Text(privateDetails),
                    TextField(autofocus: true),
                  ],
                ),
              ),
            ),
          ],
        ),
        GoRoute(
          path: '/onboarding',
          builder: (_, _) => const Scaffold(body: Text(onboarding)),
        ),
      ],
    );
    addTearDown(router.dispose);

    await tester.pumpWidget(
      MaterialApp.router(
        routerConfig: router,
        builder: (context, child) => LocalAuthLock(
          routerDelegate: router.routerDelegate,
          protectedLocation: '/',
          child: child ?? const SizedBox.shrink(),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  final Finder lockScreen = find.byKey(
    BiometricsAuthScreenKeys.passwordFieldKey,
  );

  testWidgets(
    'a page opened from home stays usable while re-authentication is not due',
    (tester) async {
      await openApp(tester, at: '/details');

      expect(find.text(privateDetails).hitTestable(), findsOneWidget);
      expect(lockScreen, findsNothing);
    },
  );

  testWidgets(
    'a page opened from home is hidden behind the lock screen once '
    're-authentication is due',
    (tester) async {
      await openApp(tester, at: '/details');

      await setReauthDue(tester, due: true);

      expect(find.text(privateDetails).hitTestable(), findsNothing);
      expect(lockScreen.hitTestable(), findsOneWidget);
    },
  );

  testWidgets(
    'the locked page is hidden from screen readers',
    (tester) async {
      final semantics = tester.ensureSemantics();
      await openApp(tester, at: '/details');

      await setReauthDue(tester, due: true);

      expect(find.semantics.byLabel(privateDetails), findsNothing);
      semantics.dispose();
    },
  );

  testWidgets(
    'the keyboard of a field on the locked page closes',
    (tester) async {
      await openApp(tester, at: '/details');

      await setReauthDue(tester, due: true);

      expect(tester.testTextInput.isVisible, isFalse);
    },
  );

  testWidgets(
    'screens outside home stay usable while re-authentication is due',
    (tester) async {
      await openApp(tester, at: '/onboarding');

      await setReauthDue(tester, due: true);

      expect(find.text(onboarding).hitTestable(), findsOneWidget);
      expect(lockScreen, findsNothing);
    },
  );

  testWidgets(
    'unlocking reveals the page the user was on',
    (tester) async {
      await openApp(tester, at: '/details');
      await setReauthDue(tester, due: true);

      await setReauthDue(tester, due: false);

      expect(find.text(privateDetails).hitTestable(), findsOneWidget);
      expect(lockScreen, findsNothing);
    },
  );

  testWidgets(
    'signing out removes the lock',
    (tester) async {
      await openApp(tester, at: '/details');
      await setReauthDue(tester, due: true);

      isSignedIn = false;
      signedInChanges.add(false);
      await tester.pumpAndSettle();

      expect(lockScreen, findsNothing);
    },
  );

  testWidgets(
    'pressing back while locked does not leave the page behind the lock',
    (tester) async {
      tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        SystemChannels.platform,
        (_) async => null,
      );
      addTearDown(
        () => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
          SystemChannels.platform,
          null,
        ),
      );
      await openApp(tester, at: '/details');
      await setReauthDue(tester, due: true);

      await tester.binding.handlePopRoute();
      await tester.pumpAndSettle();
      await setReauthDue(tester, due: false);

      expect(find.text(privateDetails).hitTestable(), findsOneWidget);
    },
  );

  testWidgets(
    'signing out from the lock screen asks for confirmation above the lock',
    (tester) async {
      await openApp(tester, at: '/details');
      await setReauthDue(tester, due: true);

      await tester.tap(find.byKey(BiometricsAuthScreenKeys.signOutButtonKey));
      await tester.pumpAndSettle();

      expect(
        find.byType(SignOutConfirmationDialog).hitTestable(),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'pressing back on the sign-out confirmation dismisses it and keeps the '
    'app locked',
    (tester) async {
      await openApp(tester, at: '/details');
      await setReauthDue(tester, due: true);
      await tester.tap(find.byKey(BiometricsAuthScreenKeys.signOutButtonKey));
      await tester.pumpAndSettle();

      await tester.binding.handlePopRoute();
      await tester.pumpAndSettle();

      expect(find.byType(SignOutConfirmationDialog), findsNothing);
      expect(lockScreen.hitTestable(), findsOneWidget);
    },
  );
}

class _MockAuthBloc extends Mock implements AuthBloc {}

class _MockLocalAuthService extends Mock implements LocalAuthService {}

class _MockAuthRepository extends Mock implements AuthRepository {}

class _MockAuthStorage extends Mock implements AuthStorage {}

class _MockEncryptionService extends Mock implements EncryptionService {}
