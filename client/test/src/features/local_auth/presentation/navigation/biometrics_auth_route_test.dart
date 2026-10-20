import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockAuthBloc extends Mock implements AuthBloc {}

class _MockLocalAuthService extends Mock implements LocalAuthService {}

void main() {
  const authUser = AuthUser(
    uid: 'uid',
    email: 'email',
    emailVerified: true,
    idToken: 'idToken',
  );
  const userData = User(uid: 'uid', email: 'email', name: 'name');

  late _MockLocalAuthService localAuthService;

  void setUpRoute(AuthState authState, {bool shouldAuthenticate = true}) {
    final authBloc = _MockAuthBloc();
    when(() => authBloc.state).thenReturn(authState);

    localAuthService = _MockLocalAuthService();
    when(
      () => localAuthService.shouldAuthenticate,
    ).thenReturn(shouldAuthenticate);
    when(
      () => localAuthService.shouldAuthenticateForPath(any()),
    ).thenReturn(false);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      localAuthServiceProvider.overrideWithValue(localAuthService),
    ]);
  }

  tearDown(() {
    resetGlobalProviderContainer();
    resetMocktailState();
  });

  test('signed-out users return to login', () {
    setUpRoute(const AuthUnauthenticated());

    expect(const BiometricsAuthRoute().redirect(), const LoginRoute());
  });

  test('an account requiring local auth stays on the lock screen', () {
    setUpRoute(const AuthAuthenticated(authUser: authUser, userData: userData));

    expect(const BiometricsAuthRoute().redirect(), isNull);
  });

  test('an unlocked account continues to the requested route', () {
    setUpRoute(
      const AuthAuthenticated(authUser: authUser, userData: userData),
      shouldAuthenticate: false,
    );

    expect(
      const BiometricsAuthRoute(next: SettingsRoute()).redirect(),
      const SettingsRoute(),
    );
  });

  test('an unlocked account without a next route returns home', () {
    setUpRoute(
      const AuthAuthenticated(authUser: authUser, userData: userData),
      shouldAuthenticate: false,
    );

    expect(const BiometricsAuthRoute().redirect(), const HomeScreenRoute());
  });

  test(
    'a protected next route keeps an unlocked account on the lock screen',
    () {
      setUpRoute(
        const AuthAuthenticated(authUser: authUser, userData: userData),
        shouldAuthenticate: false,
      );
      when(
        () => localAuthService.shouldAuthenticateForPath(
          const SettingsRoute().path,
        ),
      ).thenReturn(true);

      expect(
        const BiometricsAuthRoute(next: SettingsRoute()).redirect(),
        isNull,
      );
    },
  );
}
