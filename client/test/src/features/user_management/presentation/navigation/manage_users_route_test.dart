import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const route = ManageUsersRoute();
  final authenticateLocation = AuthenticateRoute(next: route.location).location;

  final routerState = GoRouterState(
    RouteConfiguration(
      ValueNotifier(const RoutingConfig(routes: [])),
      navigatorKey: GlobalKey<NavigatorState>(),
    ),
    uri: Uri.parse(route.location),
    matchedLocation: route.location,
    fullPath: route.location,
    pathParameters: const {},
    pageKey: ValueKey(route.location),
  );

  late LocalAuthService localAuthService;

  String? redirect() => route.redirect(_MockBuildContext(), routerState);

  setUp(() {
    final authBloc = _MockAuthBloc();
    when(() => authBloc.isSignedIn).thenReturn(true);
    when(() => authBloc.currentUserData).thenReturn(
      const User(
        uid: 'uid',
        name: 'admin',
        permissions: PermissionsSet.fromSet({UserPermission.manageAllUsers}),
      ),
    );

    final notificationsService = _MockNotificationsService();
    when(() => notificationsService.isPaused).thenReturn(false);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      localAuthServiceProvider.overrideWith(
        (ref) => LocalAuthService.noInitialAuth(
          localAuthPlugin: ref.read(localAuthPluginProvider),
          notificationService: notificationsService,
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
    expect(redirect(), authenticateLocation);
  });

  test(
    'an unlocked manage users screen stays open when the router re-evaluates it',
    () {
      localAuthService.resetAuthState(path: route.location);
      redirect();

      expect(redirect(), isNull);
    },
  );

  test(
    'an unlocked manage users screen stays open after unlocking the app on resume',
    () {
      localAuthService.resetAuthState(path: route.location);
      redirect();

      localAuthService
        ..scheduleReauth()
        ..resetAuthState();

      expect(redirect(), isNull);
    },
  );

  test(
    'leaving manage users asks for local authentication on the next entry',
    () {
      localAuthService.resetAuthState(path: route.location);
      redirect();

      route.onExit(_MockBuildContext(), routerState);

      expect(redirect(), authenticateLocation);
    },
  );
}

final class _MockAuthBloc extends Mock implements AuthBloc {}

final class _MockNotificationsService extends Mock
    implements NotificationsService {}

final class _MockBuildContext extends Mock implements BuildContext {}
