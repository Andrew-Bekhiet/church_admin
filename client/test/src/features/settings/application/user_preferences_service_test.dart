import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../fakes/fake_box.dart';
import 'user_settings_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<DatabaseService>(),
  MockSpec<AuthBloc>(),
])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockDatabaseService databaseService;
  late MockAuthBloc authBloc;

  setUp(() {
    databaseService = MockDatabaseService();
    authBloc = MockAuthBloc();
    when(authBloc.currentUserData).thenReturn(null);
    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
    ]);
  });

  tearDown(resetGlobalProviderContainer);

  UserPreferencesService createUnit({SyncKVStore? box}) {
    return UserPreferencesService(
      box: box ?? FakeSyncKVStore(),
      databaseService: databaseService,
      authBloc: authBloc,
    );
  }

  test(
    'UserPreferencesService => darkTheme Subject: unset '
    'Scenario: read Result: null',
    () {
      expect(createUnit().darkTheme, isNull);
    },
  );

  test(
    'UserPreferencesService => darkTheme Subject: set true/false/null '
    'Scenario: queue writes Result: getter reflects queued values',
    () async {
      final unit = createUnit();

      await unit.setDarkTheme(true);
      expect(unit.darkTheme, isTrue);

      await unit.setDarkTheme(false);
      expect(unit.darkTheme, isFalse);

      await unit.setDarkTheme(null);
      expect(unit.darkTheme, isNull);
    },
  );

  test(
    'UserPreferencesService => greatFeastTheme Subject: unset '
    'Scenario: read Result: defaults to true',
    () {
      expect(createUnit().greatFeastTheme, isTrue);
    },
  );

  test(
    'UserPreferencesService => greatFeastTheme Subject: set false then true '
    'Scenario: queue writes Result: getter reflects queued values',
    () async {
      final unit = createUnit();

      await unit.setGreatFeastTheme(false);
      expect(unit.greatFeastTheme, isFalse);

      await unit.setGreatFeastTheme(true);
      expect(unit.greatFeastTheme, isTrue);
    },
  );

  test(
    'UserPreferencesService => darkTheme Subject: null queued while server is true '
    'Scenario: key present in box Result: local null overrides server',
    () async {
      final box = FakeSyncKVStore();
      when(authBloc.currentUserData).thenReturn(
        const User(
          uid: 'uid',
          name: 'name',
          email: 'email',
          preferences: UserPreferences(
            uid: 'uid',
            darkTheme: true,
          ),
        ),
      );

      final unit = createUnit(box: box);
      await unit.setDarkTheme(null);

      expect(box.toMap().containsKey('darkTheme'), isTrue);
      expect(unit.darkTheme, isNull);
    },
  );
}
