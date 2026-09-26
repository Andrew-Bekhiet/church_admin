import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class _MockAuthBloc extends Mock implements AuthBloc {}

class _MockLocalAuthService extends Mock implements LocalAuthService {}

class _MockBuildContext extends Mock implements BuildContext {}

void main() {
  const authUser = AuthUser(
    uid: 'uid',
    email: 'email',
    emailVerified: true,
    idToken: 'idToken',
  );
  const userData = User(uid: 'uid', email: 'email', name: 'name');

  late _MockLocalAuthService localAuthService;
  late GoRouter router;

  setUp(() {
    router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SizedBox.shrink(),
        ),
      ],
    );
  });

  GoRouterState routeState() => GoRouterState(
    router.configuration,
    uri: Uri(path: '/'),
    matchedLocation: '/',
    fullPath: '/',
    pathParameters: const {},
    pageKey: const ValueKey('/'),
  );

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
    router.dispose();
    resetGlobalProviderContainer();
    resetMocktailState();
  });

  test('signed-out users return to login', () {
    setUpRoute(const AuthUnauthenticated());

    expect(
      BiometricsAuthRoute().redirect(_MockBuildContext(), routeState()),
      '/login',
    );
  });

  test('an account requiring local auth stays on the lock screen', () {
    setUpRoute(const AuthAuthenticated(authUser: authUser, userData: userData));

    expect(
      BiometricsAuthRoute().redirect(_MockBuildContext(), routeState()),
      isNull,
    );
  });

  test('an unlocked account continues to the requested path', () {
    setUpRoute(
      const AuthAuthenticated(authUser: authUser, userData: userData),
      shouldAuthenticate: false,
    );

    expect(
      BiometricsAuthRoute(next: '/next').redirect(
        _MockBuildContext(),
        routeState(),
      ),
      '/next',
    );
  });

  test('an unlocked account without a next path returns home', () {
    setUpRoute(
      const AuthAuthenticated(authUser: authUser, userData: userData),
      shouldAuthenticate: false,
    );

    expect(
      BiometricsAuthRoute().redirect(_MockBuildContext(), routeState()),
      '/',
    );
  });

  test(
    'a protected next path keeps an unlocked account on the lock screen',
    () {
      setUpRoute(
        const AuthAuthenticated(authUser: authUser, userData: userData),
        shouldAuthenticate: false,
      );
      when(
        () => localAuthService.shouldAuthenticateForPath('/test'),
      ).thenReturn(true);

      expect(
        BiometricsAuthRoute(next: '/test').redirect(
          _MockBuildContext(),
          routeState(),
        ),
        isNull,
      );
    },
  );
}
