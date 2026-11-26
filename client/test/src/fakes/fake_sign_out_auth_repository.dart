import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeSignOutAuthRepository extends Fake implements AuthRepository {
  final BeforeSignOutListeners _beforeSignOutListeners =
      BeforeSignOutListeners();

  @override
  void addBeforeSignOutListener(Future<void> Function() listener) =>
      _beforeSignOutListeners.add(listener);

  @override
  void removeBeforeSignOutListener(Future<void> Function() listener) =>
      _beforeSignOutListeners.remove(listener);

  @override
  bool isSignedIn = true;

  @override
  Future<void> signOut() async {
    await _beforeSignOutListeners.runAllLoggingFailuresWithinTimeout();
    isSignedIn = false;
  }
}
