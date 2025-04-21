import 'dart:async';

import 'package:church_admin/church_admin.dart';

class PackageInfoInit implements Initializer {
  const PackageInfoInit();

  @override
  Future<void> initialize() async {
    await globalProviderContainer.read(packageInfoPluginProvider.future);
  }
}
