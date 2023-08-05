import 'package:church_admin/church_admin.dart';
import 'package:device_info_plus_platform_interface/device_info_plus_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fakes/fake_device_info.dart';

void main() {
  test(
    'DeviceInfoInit',
    () async {
      DeviceInfoPlatform.instance = FakeDeviceInfoPlatform();

      const unit = DeviceInfoInit();

      await unit.initialize();

      expect(deviceInfoServiceInstance, isNotNull);
    },
  );
}
