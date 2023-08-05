import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:package_info_plus/package_info_plus.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'PackageInfoInit',
    () async {
      PackageInfo.setMockInitialValues(
        appName: 'appName',
        packageName: 'packageName',
        version: 'version',
        buildNumber: 'buildNumber',
        buildSignature: 'buildSignature',
      );

      const unit = PackageInfoInit();

      await unit.initialize();

      expect(packageInfoPluginInstance, isNotNull);
      expect(packageInfoPluginInstance.appName, 'appName');
      expect(packageInfoPluginInstance.packageName, 'packageName');
      expect(packageInfoPluginInstance.version, 'version');
      expect(packageInfoPluginInstance.buildNumber, 'buildNumber');
      expect(packageInfoPluginInstance.buildSignature, 'buildSignature');
    },
  );
}
