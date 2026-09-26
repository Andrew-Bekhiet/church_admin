import 'package:church_admin/church_admin.dart';

class FakeUserDataWiper implements UserDataWiper {
  final AuthStorage _authStorage;

  bool wasWiped = false;

  FakeUserDataWiper(this._authStorage);

  @override
  Future<void> wipeUserData() async {
    await _authStorage.clearAll();
    wasWiped = true;
  }
}
