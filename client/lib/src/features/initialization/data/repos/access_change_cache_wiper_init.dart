import 'package:church_admin/church_admin.dart';

class AccessChangeCacheWiperInit implements Initializer {
  const AccessChangeCacheWiperInit();

  @override
  Future<void>? initialize() {
    globalProviderContainer.read(accessChangeCacheWiperProvider);

    return null;
  }
}
