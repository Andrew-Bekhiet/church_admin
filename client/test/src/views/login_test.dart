import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:churchdata_core_mocks/fakes/fake_cache_repo.dart';
import 'package:churchdata_core_mocks/utils.dart';
import 'package:firebase_auth/firebase_auth.dart'
    show FirebaseAuth, OAuthCredential, UserCredential;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

import '../widgets/church_admin_app_test.mocks.dart';
import 'login_test.mocks.dart';

@GenerateMocks([
  GoRouterState,
  GoogleSignIn,
  FirebaseAuth,
  GoogleSignInAccount,
  GoogleSignInAuthentication,
  UserCredential,
  UserSettings,
  CacheRepository,
])
void main() {
  group(
    'Login Screen tests:',
    () {
      tearDown(GetIt.I.reset);

      testWidgets(
        'Key elements',
        (tester) async {
          await tester.pumpWidget(wrapWithMaterialApp(const LoginScreen()));

          expect(find.text('كنيسة السيدة العذراء مريم'), findsOneWidget);

          expect(
            find.image(const AssetImage('assets/Logo.png')),
            findsOneWidget,
          );

          expect(find.bySubtype<ElevatedButton>(), findsOneWidget);
          expect(
            find.descendant(
              of: find.bySubtype<ElevatedButton>(),
              matching: find.image(
                const AssetImage('assets/google_logo.png'),
              ),
            ),
            findsOneWidget,
          );
          expect(
            find.descendant(
              of: find.bySubtype<ElevatedButton>(),
              matching: find.text('تسجيل الدخول بجوجل'),
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'Can login with Google',
        (tester) async {
          final auth = MockGoogleSignInAuthentication();
          when(auth.idToken).thenReturn('testId_ token');
          when(auth.accessToken).thenReturn('test_Access Token');

          final account = MockGoogleSignInAccount();
          when(account.authentication).thenAnswer((_) async => auth);

          final googleSignIn = MockGoogleSignIn();
          when(googleSignIn.signIn()).thenAnswer((_) async => account);

          GetIt.I.registerSingleton<GoogleSignIn>(googleSignIn);

          final firebaseAuth = MockFirebaseAuth();
          when(firebaseAuth.signInWithCredential(captureAny)).thenAnswer(
            (_) async => MockUserCredential(),
          );

          GetIt.I.registerSingleton<FirebaseAuth>(firebaseAuth);

          final authRepo = MockCAAuthRepository();
          final user = User(
            uid: 'uid',
            userData: UserData(
              uid: 'uid',
              permissions: CAPermissionsSet.fromSet(const {}),
              email: 'email',
              firebaseAuthUid: 'firebaseAuthUID',
              password: '',
            ),
          );
          when(authRepo.userStream).thenAnswer(
            (_) => BehaviorSubject.seeded(
              user,
            ),
          );
          when(authRepo.currentUser).thenReturn(
            user,
          );

          GetIt.I.registerSingleton<CAAuthRepository>(authRepo);

          final userSettings = MockUserSettings();
          when(userSettings.setAreaSecondLine(captureAny))
              .thenAnswer((_) async {});
          when(userSettings.setStreetSecondLine(captureAny))
              .thenAnswer((_) async {});
          when(userSettings.setFamilySecondLine(captureAny))
              .thenAnswer((_) async {});
          when(userSettings.setPersonSecondLine(captureAny))
              .thenAnswer((_) async {});

          GetIt.I.registerSingleton<UserSettings>(userSettings);

          final cacheRepository = MockCacheRepository();

          when(cacheRepository.openBox(captureAny))
              .thenAnswer((_) async => Box<NotificationSetting>('name'));
          GetIt.I.registerSingleton<CacheRepository>(cacheRepository);

          await tester.pumpWidget(wrapWithMaterialApp(const LoginScreen()));

          expect(find.bySubtype<ElevatedButton>(), findsOneWidget);

          await tester.tap(find.bySubtype<ElevatedButton>());

          verifyInOrder(
            [
              googleSignIn.signIn(),
              account.authentication,
              firebaseAuth.signInWithCredential(
                argThat(
                  predicate<OAuthCredential>(
                    (c) =>
                        c.accessToken == 'test_Access Token' &&
                        c.idToken == 'testId_ token',
                  ),
                ),
              ),
            ],
          );
        },
      );

      group(
        'Route',
        () {
          test(
            'No Signed In User',
            () async {
              final mockCAAuthRepository = MockCAAuthRepository();
              when(mockCAAuthRepository.isSignedIn).thenReturn(false);

              GetIt.I.registerSingleton<CAAuthRepository>(mockCAAuthRepository);

              final mockGoRouterState = MockGoRouterState();
              when(mockGoRouterState.namedLocation(captureAny)).thenReturn('/');

              expect(LoginScreen.route.redirect(mockGoRouterState), null);
              verifyNever(mockGoRouterState.namedLocation('home'));
            },
          );

          test(
            'Signed In User',
            () async {
              final mockCAAuthRepository = MockCAAuthRepository();
              when(mockCAAuthRepository.isSignedIn).thenReturn(true);

              GetIt.I.registerSingleton<CAAuthRepository>(mockCAAuthRepository);

              final mockGoRouterState = MockGoRouterState();
              when(mockGoRouterState.namedLocation(captureAny)).thenReturn('/');

              expect(LoginScreen.route.redirect(mockGoRouterState), '/');
              verify(mockGoRouterState.namedLocation('home'));
            },
          );
        },
      );
    },
  );
}
