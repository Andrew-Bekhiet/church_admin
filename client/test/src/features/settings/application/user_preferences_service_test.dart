import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users_preferences/__generated__/fragments.gql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_box.dart';

class MockUserPreferencesDAO extends Mock implements UserPreferencesDAO {}

class MockDatabaseService extends Mock implements DatabaseService {}

class MockAuthBloc extends Mock implements AuthBloc {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    registerFallbackValue(Input_UsersPreferencesSetInput());
    registerFallbackValue(Input_UsersPreferencesAppendInput());
  });

  late MockDatabaseService databaseService;
  late MockAuthBloc authBloc;

  setUp(() {
    databaseService = MockDatabaseService();

    final mockUserPreferencesDAO = MockUserPreferencesDAO();
    when(
      () => mockUserPreferencesDAO.updatePreferences(
        uid: any(named: 'uid'),
        set: any(named: 'set'),
        append: any(named: 'append'),
      ),
    ).thenAnswer((_) => Completer<Fragment_UserPreferences>().future);

    when(
      () => databaseService.userPreferences,
    ).thenReturn(mockUserPreferencesDAO);

    authBloc = MockAuthBloc();
    when(() => authBloc.currentUserData).thenReturn(null);

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
      when(() => authBloc.currentUserData).thenReturn(
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
        () => userPreferences.updatePreferences(
          uid: any(named: 'uid'),
          set: any(named: 'set'),
          append: any(named: 'append'),
        ),
      ).thenAnswer((_) async => null);

      final box = FakeSyncKVStore();
      when(() => authBloc.currentUserData).thenReturn(
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
        () => userPreferences.updatePreferences(
          uid: 'uid',
          append: any(named: 'append'),
          set: any(
            that: isA<Input_UsersPreferencesSetInput>().having(
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
        () => userPreferences.updatePreferences(
          uid: 'uid',
          append: any(named: 'append'),
          set: any(
            that: isA<Input_UsersPreferencesSetInput>().having(
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
        () => userPreferences.updatePreferences(
          uid: 'uid',
          append: any(named: 'append'),
          set: any(
            that: isA<Input_UsersPreferencesSetInput>().having(
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

  group('second line field', () {
    final personType = AdvancedQueriesMetadata().allQueryables.firstWhere(
      (q) => q.name == 'Person',
    );
    final key = OrderByPreferenceKey(type: personType);
    final field = personType.fieldsMetadataByName['name']!;

    void signInWith({Json secondLinePreferences = const {}}) {
      when(() => authBloc.currentUserData).thenReturn(
        User(
          uid: 'uid',
          name: 'name',
          email: 'email',
          preferences: UserPreferences(
            uid: 'uid',
            secondLinePreferences: secondLinePreferences,
          ),
        ),
      );
    }

    MockUserPreferencesDAO acceptWrites() {
      final dao = databaseService.userPreferences as MockUserPreferencesDAO;
      when(
        () => dao.updatePreferences(
          uid: any(named: 'uid'),
          set: any(named: 'set'),
          append: any(named: 'append'),
        ),
      ).thenAnswer((_) async => null);

      return dao;
    }

    test('a chosen second line field reads back', () async {
      final unit = createUnit();

      await unit.setLastSecondLineFieldFor(key, field);

      expect(unit.getLastSecondLineFieldFor(key), field);
    });

    test('clearing the second line field reads back as no choice', () async {
      signInWith(secondLinePreferences: {key.storageKey: field.toJson()});
      final unit = createUnit();

      await unit.setLastSecondLineFieldFor(key, null);

      expect(unit.getLastSecondLineFieldFor(key), isNull);
    });

    test('a malformed stored second line reads as no choice', () {
      signInWith(secondLinePreferences: {key.storageKey: 'garbage'});

      expect(createUnit().getLastSecondLineFieldFor(key), isNull);
    });

    test(
      'a second line field is sent to the server and no longer pending',
      () async {
        final dao = acceptWrites();
        signInWith();
        final box = FakeSyncKVStore();
        final unit = createUnit(box: box);

        await unit.setLastSecondLineFieldFor(key, field);
        await Future<void>.delayed(Duration.zero);

        final append =
            verify(
                  () => dao.updatePreferences(
                    uid: 'uid',
                    set: any(named: 'set'),
                    append: captureAny(named: 'append'),
                  ),
                ).captured.single
                as Input_UsersPreferencesAppendInput;
        expect(append.secondLinePreferences, {key.storageKey: field.toJson()});
        expect(box.toMap(), isEmpty);
      },
    );
  });
}
