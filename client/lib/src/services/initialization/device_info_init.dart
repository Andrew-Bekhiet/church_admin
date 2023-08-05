import 'package:church_admin/church_admin.dart';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoInit implements Initializer {
  const DeviceInfoInit();

  @override
  Future<void> initialize() async {
    final deviceInfoPlugin = DeviceInfoPlugin();

    deviceInfoServiceInstance = DeviceInfoService(
      androidDeviceInfo: CurrentPlatformService.I.isAndroid
          ? await deviceInfoPlugin.androidInfo
          : null,
      iosDeviceInfo: CurrentPlatformService.I.isIOS
          ? await deviceInfoPlugin.iosInfo
          : null,
      webBrowserInfo: CurrentPlatformService.I.isWeb
          ? await deviceInfoPlugin.webBrowserInfo
          : null,
      linuxDeviceInfo: CurrentPlatformService.I.isLinux
          ? await deviceInfoPlugin.linuxInfo
          : null,
      macOSDeviceInfo: CurrentPlatformService.I.isMacOS
          ? await deviceInfoPlugin.macOsInfo
          : null,
      windowsDeviceInfo: CurrentPlatformService.I.isWindows
          ? await deviceInfoPlugin.windowsInfo
          : null,
    );
  }
}
