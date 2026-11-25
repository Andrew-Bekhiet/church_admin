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
  Future<void> signOut() =>
      _beforeSignOutListeners.runAllLoggingFailuresWithinTimeout();
}
