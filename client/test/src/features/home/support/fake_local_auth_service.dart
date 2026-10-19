import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeLocalAuthService extends Fake implements LocalAuthService {
  @override
  bool shouldAuthenticate = false;

  @override
  void scheduleReauth() => shouldAuthenticate = true;
}
