import 'dart:async';

import 'package:church_admin/church_admin.dart';

class DeviceInfoInit implements Initializer {
  const DeviceInfoInit();

  @override
  Future<void> initialize() async {
    await globalProviderContainer.read(deviceInfoServiceProvider.future);
  }
}
