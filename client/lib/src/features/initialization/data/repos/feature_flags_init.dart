import 'package:church_admin/church_admin.dart';

class FeatureFlagsInit implements Initializer {
  const FeatureFlagsInit();

  @override
  Future<void> initialize() async {
    await FeatureFlagsRepository.I.initialize();
  }
}
