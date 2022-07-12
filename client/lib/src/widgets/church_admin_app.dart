import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class ChurchAdminApp extends StatefulWidget {
  const ChurchAdminApp({super.key});

  @override
  State<ChurchAdminApp> createState() => _ChurchAdminAppState();
}

class _ChurchAdminAppState extends State<ChurchAdminApp> {
  final GoRouter router = GoRouter(
    observers: [
      GetIt.I<LoggingService>().navigatorObserver,
    ],
    refreshListenable: GetIt.I<GoRouterRefreshStream>(),
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      HomeScreen.route,
      LoginScreen.route,
      GoRoute(
        name: 'update_user_data',
        path: '/updateUserData',
        builder: (context, state) => Scaffold(
          body: Column(
            children: [
              ElevatedButton(
                onPressed: LocalAuthService.I.resetAuthState,
                child: const Text('updateUserData'),
              ),
              OutlinedButton(
                onPressed: LocalAuthService.I.resetAuthState,
                child: const Text('updateUserData'),
              ),
              TextButton(
                onPressed: LocalAuthService.I.resetAuthState,
                child: const Text('updateUserData'),
              ),
              const Text('data'),
            ],
          ),
        ) /* UpdateUserDataScreen() */,
        redirect: (state) {
          if (!CAAuthRepository.I.isSignedIn) {
            return state.namedLocation('login');
          } else if (LocalAuthService.I.shouldAuthenticate) {
            return state.namedLocation(
              'authenticate',
              queryParams: {'next': state.location},
            );
          }
          return null;
        },
      ),
      GoRoute(
        name: 'register_user_data',
        path: '/registerUserData',
        builder: (context, state) => Scaffold(
          body: Column(
            children: [
              ElevatedButton(
                onPressed: LocalAuthService.I.resetAuthState,
                child: const Text('updateUserData'),
              ),
              OutlinedButton(
                onPressed: LocalAuthService.I.resetAuthState,
                child: const Text('updateUserData'),
              ),
              TextButton(
                onPressed: LocalAuthService.I.resetAuthState,
                child: const Text('updateUserData'),
              ),
              const Text('data'),
            ],
          ),
        ) /* UpdateUserDataScreen() */,
        redirect: (state) {
          if (!CAAuthRepository.I.isSignedIn) {
            return state.namedLocation('login');
          } else if (CAAuthRepository.I.currentUserData != null) {
            return '/';
          }
          return null;
        },
      ),
      AuthenticateScreen.route,
    ],
    errorBuilder: (context, state) {
      GetIt.I<LoggingService>().reportError(
        state.error!,
        extras: {'location': state.location},
      );
      return Scaffold(
        appBar: AppBar(
          title: const Text('حدث خطأ'),
          backgroundColor: const Color(0xffc96e00),
        ),
        body: ErrorWidget.builder(
          FlutterErrorDetails(exception: state.error!),
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ThemeData>(
      stream: GetIt.I<ThemingService>().stream,
      initialData: GetIt.I<ThemingService>().theme,
      builder: (context, themeData) {
        return MaterialApp.router(
          theme: themeData.requireData,
          scaffoldMessengerKey: scaffoldMessengerKey,
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
          routerDelegate: router.routerDelegate,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('ar', 'EG'),
          ],
          locale: const Locale('ar', 'EG'),
          title: 'St Mary Church',
        );
      },
    );
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    if (WidgetsBinding.instance.lifecycleState == AppLifecycleState.detached) {
      await GetIt.I.reset();
    }
  }
}
