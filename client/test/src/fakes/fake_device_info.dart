import 'package:device_info_plus/device_info_plus.dart';
import 'package:device_info_plus_platform_interface/device_info_plus_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:universal_file/universal_file.dart';

class FakeDeviceInfoPlatform extends DeviceInfoPlatform {
  @override
  Future<BaseDeviceInfo> deviceInfo() async {
    if (kIsWeb) {
      WebBrowserInfo(
        appCodeName: 'appCodeName',
        appName: 'appName',
        appVersion: 'appVersion',
        deviceMemory: 8 * 1024,
        language: 'language',
        languages: [],
        platform: 'platform',
        product: 'product',
        productSub: 'productSub',
        userAgent: 'userAgent',
        vendor: 'vendor',
        vendorSub: 'vendorSub',
        maxTouchPoints: 4,
        hardwareConcurrency: 8,
      );
    }

    if (Platform.isWindows) {
      return WindowsDeviceInfo(
        numberOfCores: 8,
        systemMemoryInMegabytes: 8 * 1024,
        userName: 'userName',
        computerName: 'computerName',
        majorVersion: 10,
        minorVersion: 0,
        buildNumber: 1,
        platformId: 1,
        csdVersion: 'csdVersion',
        servicePackMajor: 1,
        servicePackMinor: 1,
        suitMask: 1,
        productType: 1,
        reserved: 0,
        buildLab: 'buildLab',
        buildLabEx: 'buildLabEx',
        digitalProductId: Uint8List(0),
        displayVersion: 'displayVersion',
        editionId: 'editionId',
        installDate: DateTime.now(),
        productId: 'productId',
        productName: 'productName',
        registeredOwner: 'registeredOwner',
        releaseId: 'releaseId',
        deviceId: 'deviceId',
      );
    } else if (Platform.isLinux) {
      return LinuxDeviceInfo(
        id: 'id',
        prettyName: 'prettyName',
        name: 'name',
        machineId: 'machineId',
      );
    }

    throw UnimplementedError();
  }
}

class FakeAndroidBuildVersion implements AndroidBuildVersion {
  @override
  String get baseOS => 'baseOS';

  @override
  String get codename => 'codename';

  @override
  String get incremental => 'incremental';

  @override
  int? get previewSdkInt => null;

  @override
  String get release => 'release';

  @override
  int get sdkInt => 22;

  @override
  String? get securityPatch => null;

  @override
  Map<String, dynamic> toMap() {
    return {};
  }
}

class FakeAndroidDisplayMetrics implements AndroidDisplayMetrics {
  @override
  double get heightInches => 1;

  @override
  double get heightPx => 1;

  @override
  double get sizeInches => 1;

  @override
  Map<String, dynamic> toMap() => {};

  @override
  double get widthInches => 1;

  @override
  double get widthPx => 1;

  @override
  double get xDpi => 1;

  @override
  double get yDpi => 1;
}

class FakeIosUtsname implements IosUtsname {
  const FakeIosUtsname();

  @override
  String get machine => 'null';

  @override
  String get nodename => 'null';

  @override
  String get release => 'null';

  @override
  String get sysname => 'null';

  @override
  String get version => 'null';
}
