import 'dart:async';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class AndroidAlarmManagerPluginInit implements Initializer {
  const AndroidAlarmManagerPluginInit();

  @override
  Future<void> initialize() async {
    if (kIsWeb) return;

    final currentPlatformService =
        globalProviderContainer.read(currentPlatformServiceProvider);

    final isAndroid = currentPlatformService.isAndroid;
    if (!isAndroid) return;

    final initialized = await AndroidAlarmManager.initialize();

    if (isAndroid && !initialized) {
      throw Exception('AndroidAlarmManager failed to initialize');
    }
  }
}
