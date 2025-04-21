import 'package:church_admin/church_admin.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeviceInfoService {
  static DeviceInfoService get I =>
      globalProviderContainer.read(deviceInfoServiceProvider).requireValue;

  final AndroidDeviceInfo? androidDeviceInfo;
  final IosDeviceInfo? iosDeviceInfo;
  final WebBrowserInfo? webBrowserInfo;
  final LinuxDeviceInfo? linuxDeviceInfo;
  final MacOsDeviceInfo? macOSDeviceInfo;
  final WindowsDeviceInfo? windowsDeviceInfo;

  const DeviceInfoService({
    required this.androidDeviceInfo,
    required this.iosDeviceInfo,
    required this.webBrowserInfo,
    required this.linuxDeviceInfo,
    required this.macOSDeviceInfo,
    required this.windowsDeviceInfo,
  });
}
