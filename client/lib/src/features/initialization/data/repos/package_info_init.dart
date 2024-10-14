import 'package:church_admin/church_admin.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoInit implements Initializer {
  const PackageInfoInit();

  @override
  Future<void> initialize() async {
    packageInfoPluginInstance = await PackageInfo.fromPlatform();
  }
}
