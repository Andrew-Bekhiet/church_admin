import 'package:church_admin/church_admin.dart';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoInit implements Initializer {
  const DeviceInfoInit();

  @override
  Future<void> initialize() async {
    final deviceInfoPlugin = DeviceInfoPlugin();

    final androidDeviceInfoInstance = await deviceInfoPlugin.androidInfo;
    final iosDeviceInfoInstance = await deviceInfoPlugin.iosInfo;
    final webBrowserInfoInstance = await deviceInfoPlugin.webBrowserInfo;
    final linuxDeviceInfoInstance = await deviceInfoPlugin.linuxInfo;
    final macOSDeviceInfoInstance = await deviceInfoPlugin.macOsInfo;
    final windowsDeviceInfoInstance = await deviceInfoPlugin.windowsInfo;

    deviceInfoServiceInstance = DeviceInfoService(
      androidDeviceInfo: androidDeviceInfoInstance,
      iosDeviceInfo: iosDeviceInfoInstance,
      webBrowserInfo: webBrowserInfoInstance,
      linuxDeviceInfo: linuxDeviceInfoInstance,
      macOSDeviceInfo: macOSDeviceInfoInstance,
      windowsDeviceInfo: windowsDeviceInfoInstance,
    );
  }
}
