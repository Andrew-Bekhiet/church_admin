import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../fakes/fake_box.dart';

class _MockAuthBloc extends Mock implements AuthBloc {}

class _MockDatabaseService extends Mock implements DatabaseService {}

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(binding.platformDispatcher.clearPlatformBrightnessTestValue);

  test(
    'the app theme turns dark once a signed-in user who saved dark loads '
    'on a light phone',
    () async {
      binding.platformDispatcher.platformBrightnessTestValue = Brightness.light;
      final userDataChanges = StreamController<User?>.broadcast();
      addTearDown(userDataChanges.close);
      User? signedInUser;
      final authBloc = _MockAuthBloc();
      when(() => authBloc.currentUserData).thenAnswer((_) => signedInUser);
      when(
        () => authBloc.userDataStream,
      ).thenAnswer((_) => userDataChanges.stream);
      final themingService = ThemingService(
        userPreferencesService: UserPreferencesService(
          box: FakeSyncKVStore(),
          databaseService: _MockDatabaseService(),
          authBloc: authBloc,
        ),
      );
      addTearDown(themingService.dispose);

      signedInUser = const User(
        uid: 'uid',
        name: 'name',
        email: 'email',
        preferences: UserPreferences(
          uid: 'uid',
          darkTheme: true,
          greatFeastTheme: false,
        ),
      );
      userDataChanges.add(signedInUser);
      await pumpEventQueue();

      expect(themingService.theme.brightness, Brightness.dark);
    },
  );
}
