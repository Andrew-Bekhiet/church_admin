import 'package:church_admin/church_admin.dart';

class FakeLauncherService extends LauncherService {
  @override
  Future<bool> launchCall(String fomattedPhone) async => true;
}
