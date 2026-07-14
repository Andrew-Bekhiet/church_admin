import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users_preferences/__generated__/fragments.gql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../fakes/fake_box.dart';
import 'user_preferences_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<UserPreferencesDAO>(),
  MockSpec<DatabaseService>(),
  MockSpec<AuthBloc>(),
])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockDatabaseService databaseService;
  late MockAuthBloc authBloc;

  setUp(() {
    databaseService = MockDatabaseService();

    final mockUserPreferencesDAO = MockUserPreferencesDAO();
    when(
      mockUserPreferencesDAO.updatePreferences(
        uid: anyNamed('uid'),
        set: anyNamed('set'),
        append: anyNamed('append'),
      ),
    ).thenAnswer((_) => Completer<Fragment_UserPreferences>().future);

    when(
      databaseService.userPreferences,
    ).thenReturn(mockUserPreferencesDAO);

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
    'UserPreferencesService => darkTheme: local null overrides server',
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

      expect(unit.darkTheme, isNull);
    },
  );

  test(
    'UserPreferencesService => scalar settings are flushed to server',
    () async {
      final userPreferences =
          databaseService.userPreferences as MockUserPreferencesDAO;
      when(
        userPreferences.updatePreferences(
          uid: anyNamed('uid'),
          set: anyNamed('set'),
          append: anyNamed('append'),
        ),
      ).thenAnswer((_) async => null);

      final box = FakeSyncKVStore();
      when(authBloc.currentUserData).thenReturn(
        const User(
          uid: 'uid',
          name: 'name',
          email: 'email',
          preferences: UserPreferences(
            uid: 'uid',
            darkTheme: true,
            greatFeastTheme: false,
            lastHomeMode: HomeMode.churchData,
          ),
        ),
      );

      final unit = createUnit(box: box);

      await unit.setDarkTheme(null);
      verify(
        userPreferences.updatePreferences(
          uid: 'uid',
          append: anyNamed('append'),
          set: argThat(
            isA<Input_UsersPreferencesSetInput>().having(
              (i) => i.darkTheme,
              'darkTheme',
              isNull,
            ),
            named: 'set',
          ),
        ),
      );
      await unit.setGreatFeastTheme(false);
      verify(
        userPreferences.updatePreferences(
          uid: 'uid',
          append: anyNamed('append'),
          set: argThat(
            isA<Input_UsersPreferencesSetInput>().having(
              (i) => i.greatFeastTheme,
              'greatFeastTheme',
              isFalse,
            ),
            named: 'set',
          ),
        ),
      );

      await unit.setLastHomeMode(HomeMode.sundaySchool);
      verify(
        userPreferences.updatePreferences(
          uid: 'uid',
          append: anyNamed('append'),
          set: argThat(
            isA<Input_UsersPreferencesSetInput>().having(
              (i) => i.lastHomeMode,
              'lastHomeMode',
              HomeMode.sundaySchool.name,
            ),
            named: 'set',
          ),
        ),
      );
    },
  );
}
