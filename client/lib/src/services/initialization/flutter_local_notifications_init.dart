import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FlutterLocalNotificationsPluginInit implements Initializer {
  const FlutterLocalNotificationsPluginInit();

  @override
  Future<void> initialize() async {
    final localNotificationsPlugin =
        globalProviderContainer.read(localNotificationsPluginProvider);

    final bool initialized = await localNotificationsPlugin.initialize(
          const InitializationSettings(
            android: AndroidInitializationSettings('warning'),
            iOS: DarwinInitializationSettings(),
          ),
          onDidReceiveNotificationResponse:
              NotificationsServiceCallbacks.onDidReceiveNotificationResponse,
          onDidReceiveBackgroundNotificationResponse:
              NotificationsServiceCallbacks
                  .onDidReceiveBackgroundNotificationResponse,
        ) ??
        false;

    if (!initialized) {
      throw Exception(
        'FlutterLocalNotificationsPluginInit failed to initialize',
      );
    }
  }
}
