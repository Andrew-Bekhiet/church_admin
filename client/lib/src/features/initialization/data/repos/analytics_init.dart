import 'package:church_admin/church_admin.dart';

class AnalyticsInit implements Initializer {
  const AnalyticsInit();

  @override
  Future<void> initialize() async {
    await AnalyticsService.I.initialize();
  }
}
