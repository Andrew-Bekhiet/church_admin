import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fakes/fake_box.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'UserSettingsService => darkTheme',
    () async {
      final unit = UserSettingsService(box: FakeSyncKVStore());

      expect(unit.darkTheme, isNull);

      await unit.setDarkTheme(true);
      expect(unit.darkTheme, isTrue);

      await unit.setDarkTheme(false);
      expect(unit.darkTheme, isFalse);

      await unit.setDarkTheme(null);
      expect(unit.darkTheme, isNull);
    },
  );
  test(
    'UserSettingsService => registeredFCMToken',
    () async {
      final unit = UserSettingsService(box: FakeSyncKVStore());

      expect(unit.registeredFCMToken, isNull);

      await unit.setRegisteredFCMToken('token');
      expect(unit.registeredFCMToken, 'token');

      await unit.setRegisteredFCMToken(null);
      expect(unit.registeredFCMToken, isNull);
    },
  );
  test(
    'UserSettingsService => greatFeastTheme',
    () async {
      final unit = UserSettingsService(box: FakeSyncKVStore());

      expect(unit.greatFeastTheme, isTrue);

      await unit.setGreatFeastTheme(false);
      expect(unit.greatFeastTheme, isFalse);

      await unit.setGreatFeastTheme(true);
      expect(unit.greatFeastTheme, isTrue);
    },
  );
}
