import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class ChurchAdminApp extends StatefulWidget {
  static final GoRouter router = GoRouter(
    observers: [
      GetIt.I<LoggingService>().navigatorObserver,
    ],
    refreshListenable: GetIt.I<GoRouterRefreshStream>(),
    routes: [
      HomeScreen.route,
      LoginScreen.route,
      UpdateUserData.route,
      GoRoute(
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
        redirect: (context, state) {
          if (!AuthService.instance.isSignedIn) {
            return ChurchAdminApp.router.routeInformationParser.configuration
                .namedLocation('login');
          } else if (AuthService.instance.currentUser?.password != null &&
              AuthService.instance.currentUser?.person != null) {
            return '/';
          }
          return null;
        },
      ),
      AuthenticateScreen.route,
    ],
    errorBuilder: (context, state) {
      if (kReleaseMode) {
        GetIt.I<LoggingService>().reportError(
          state.error!,
          extras: {'location': state.location},
        );
      }

      return Scaffold(
        appBar: AppBar(
          title: Text(
            'حدث خطأ',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onErrorContainer,
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.errorContainer,
        ),
        body: ErrorWidget.builder(
          FlutterErrorDetails(exception: state.error!),
        ),
      );
    },
  );

  const ChurchAdminApp({super.key});

  @override
  State<ChurchAdminApp> createState() => _ChurchAdminAppState();
}

class _ChurchAdminAppState extends State<ChurchAdminApp> {
  late final StreamSubscription<bool> _connectivityListener;

  @override
  void initState() {
    _connectivityListener = GetIt.I<ConnectivityService>()
        .connectivityStream
        .distinct()
        .skip(1)
        .listen(_onConnectivityChanged);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ThemeData>(
      stream: GetIt.I<ThemingService>().stream,
      initialData: GetIt.I<ThemingService>().theme,
      builder: (context, themeData) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: themeData.requireData,
          scaffoldMessengerKey: scaffoldMessengerKey,
          routeInformationParser: ChurchAdminApp.router.routeInformationParser,
          routeInformationProvider:
              ChurchAdminApp.router.routeInformationProvider,
          routerDelegate: ChurchAdminApp.router.routerDelegate,
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

  void _onConnectivityChanged(bool connected) {
    final isScaffoldMessengerMounted =
        scaffoldMessengerKey.currentState?.mounted ?? false;
    final currentLifecycleState = WidgetsBinding.instance.lifecycleState;

    if (currentLifecycleState == AppLifecycleState.resumed &&
        isScaffoldMessengerMounted) {
      if (connected) {
        scaffoldMessenger.showSnackBar(
          SnackBar(
            backgroundColor: Colors.greenAccent,
            content: Row(
              children: [
                const Expanded(child: Text('تم استرجاع الاتصال بالانترنت')),
                Icon(
                  Icons.wifi,
                  color: Theme.of(context).primaryIconTheme.color,
                ),
              ],
            ),
          ),
        );
      } else {
        scaffoldMessenger.showSnackBar(
          SnackBar(
            backgroundColor: Colors.redAccent,
            content: Row(
              children: [
                const Expanded(child: Text('لا يوجد اتصال بالانترنت!')),
                Icon(
                  Icons.wifi_off,
                  color: Theme.of(context).primaryIconTheme.color,
                ),
              ],
            ),
          ),
        );
      }
    }
  }

  @override
  Future<void> dispose() async {
    super.dispose();

    await _connectivityListener.cancel();

    if (WidgetsBinding.instance.lifecycleState == AppLifecycleState.detached) {
      await GetIt.I.reset();
    }
  }
}
