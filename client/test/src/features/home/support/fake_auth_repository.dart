import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeAuthRepository extends Fake implements AuthRepository {
  @override
  bool isSignedIn = true;

  @override
  Future<void> signOut() async => isSignedIn = false;
}
