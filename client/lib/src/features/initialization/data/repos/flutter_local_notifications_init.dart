import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FlutterLocalNotificationsInit implements Initializer {
  const FlutterLocalNotificationsInit();

  @override
  Future<void> initialize() async {
    final localNotificationsPlugin = globalProviderContainer.read(
      localNotificationsPluginProvider,
    );

    final bool initialized =
        await localNotificationsPlugin.initialize(
          settings: const InitializationSettings(
            android: AndroidInitializationSettings('warning'),
            iOS: DarwinInitializationSettings(),
          ),
          onDidReceiveNotificationResponse:
              NotificationsServiceCallbacks.onForegroundNotificationTap,
          onDidReceiveBackgroundNotificationResponse:
              NotificationsServiceCallbacks.onBackgroundNotificationTap,
        ) ??
        false;

    if (!initialized) {
      throw Exception(
        'FlutterLocalNotificationsPluginInit failed to initialize',
      );
    }
  }
}
