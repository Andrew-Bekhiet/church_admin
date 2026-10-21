import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  const route = ManageUsersRoute();
  const biometricsAuth = BiometricsAuthRoute(next: route);

  late LocalAuthService localAuthService;
  late DateTime now;

  AppRoute? redirect() => route.redirect();

  setUp(() {
    now = DateTime(2026);
    binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);

    final authBloc = _MockAuthBloc();
    when(() => authBloc.currentUserData).thenReturn(
      const User(
        uid: 'uid',
        name: 'admin',
        permissions: PermissionsSet.fromSet({UserPermission.manageAllUsers}),
      ),
    );

    final notificationsService = _MockNotificationsService();
    when(() => notificationsService.isPaused).thenReturn(false);
    final authRepository = _MockAuthRepository();
    when(() => authRepository.isSignedIn).thenReturn(true);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      authRepositoryProvider.overrideWithValue(authRepository),
      localAuthServiceProvider.overrideWith(
        (ref) => LocalAuthService.noInitialAuth(
          localAuthPlugin: ref.read(localAuthPluginProvider),
          authRepository: authRepository,
          notificationService: notificationsService,
          userDataWiper: _MockUserDataWiper(),
          clock: Clock(() => now),
        ),
      ),
    ]);
    localAuthService = LocalAuthService.I;
  });

  tearDown(() async {
    await localAuthService.dispose();
    resetGlobalProviderContainer();
  });

  test('entering manage users asks for local authentication', () {
    expect(redirect(), biometricsAuth);
  });

  test(
    'an unlocked manage users screen stays open when the router re-evaluates it',
    () {
      localAuthService.resetAuthState(route: route);
      redirect();

      expect(redirect(), isNull);
    },
  );

  test(
    'an unlocked manage users screen stays open after the screen turns off and the app is unlocked again',
    () {
      void turnScreenOff() => [
        AppLifecycleState.inactive,
        AppLifecycleState.hidden,
        AppLifecycleState.paused,
      ].forEach(binding.handleAppLifecycleStateChanged);

      void turnScreenOn() => [
        AppLifecycleState.hidden,
        AppLifecycleState.inactive,
        AppLifecycleState.resumed,
      ].forEach(binding.handleAppLifecycleStateChanged);

      localAuthService.resetAuthState(route: route);
      redirect();

      turnScreenOff();
      now = now.add(localAuthService.timeToReauth);
      turnScreenOn();

      expect(localAuthService.shouldAuthenticate, isTrue);

      localAuthService.resetAuthState();

      expect(redirect(), isNull);
    },
  );

  test(
    'leaving manage users asks for local authentication on the next entry',
    () {
      localAuthService.resetAuthState(route: route);
      redirect();

      route.onExit();

      expect(redirect(), biometricsAuth);
    },
  );
}

final class _MockAuthBloc extends Mock implements AuthBloc {}

final class _MockAuthRepository extends Mock implements AuthRepository {}

final class _MockNotificationsService extends Mock
    implements NotificationsService {}

final class _MockUserDataWiper extends Mock implements UserDataWiper {}
