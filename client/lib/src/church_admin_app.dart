import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:phone_form_field/phone_form_field.dart';

class ChurchAdminApp extends StatefulWidget {
  const ChurchAdminApp({super.key});

  @override
  State<ChurchAdminApp> createState() => _ChurchAdminAppState();
}

class _ChurchAdminAppState extends State<ChurchAdminApp>
    with WidgetsBindingObserver {
  late final StreamSubscription<bool> _connectivityListener;
  late final StreamSubscription<Notification> _notificationsListener;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _connectivityListener = ConnectivityService.I.connectivityStream
        .distinct()
        .skip(1)
        .listen(_onConnectivityChanged);
    _notificationsListener = NotificationsService.I.onNotificationTapStream
        .listen(_onNotificationTapped);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ThemeData>(
      stream: ThemingService.I.stream,
      initialData: ThemingService.I.theme,
      builder: (context, themeData) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: themeData.requireData,
          scaffoldMessengerKey: scaffoldMessengerKey,
          routerConfig: $appRouter,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            ...PhoneFieldLocalization.delegates,
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
  void reassemble() {
    super.reassemble();

    ThemingService.I.theme = ThemingService.getDefault();
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
                  Symbols.wifi,
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
                  Symbols.wifi_off,
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
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        unawaited(SyncKVStore.flushAll());

      case AppLifecycleState.resumed:
      case AppLifecycleState.inactive:
      case AppLifecycleState.hidden:
        break;
    }
  }

  void _onNotificationTapped(Notification notification) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => showDialog(
        context: $appRouter.routerDelegate.navigatorKey.currentContext!,
        builder: (context) =>
            NotificationDetailsDialog(notification: notification),
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    unawaited(_connectivityListener.cancel());
    unawaited(_notificationsListener.cancel());

    globalProviderContainer.dispose();

    super.dispose();
  }
}
