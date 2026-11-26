import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeSignedInAuthRepository extends Fake implements AuthRepository {
  @override
  bool isSignedIn;

  FakeSignedInAuthRepository({required this.isSignedIn});
}
