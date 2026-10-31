import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users_preferences/__generated__/fragments.gql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_box.dart';
import '../../../fakes/mock_user_preferences_dao.dart';

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
    'UserPreferencesService => themeChoice Subject: unset '
    'Scenario: read Result: system',
    () {
      expect(createUnit().themeChoice, ThemeChoice.system);
    },
  );

  test(
    'UserPreferencesService => themeChoice Subject: set every choice '
    'Scenario: queue writes Result: getter reflects queued values',
    () async {
      final unit = createUnit();

      for (final themeChoice in ThemeChoice.values) {
        await unit.setThemeChoice(themeChoice);
        expect(unit.themeChoice, themeChoice);
      }
    },
  );

  group('a theme stored before ThemeChoice existed', () {
    for (final themeChoice in ThemeChoice.values) {
      final storedDarkTheme = switch (themeChoice) {
        ThemeChoice.dark => true,
        ThemeChoice.light => false,
        ThemeChoice.system => null,
      };

      test('queued as $storedDarkTheme loads as $themeChoice', () {
        final box = FakeSyncKVStore<Object?>()
          ..put(
            'darkTheme',
            storedDarkTheme ?? const <String, bool>{'pendingNull': true},
          );

        expect(createUnit(box: box).themeChoice, themeChoice);
      });

      test('on the server as $storedDarkTheme loads as $themeChoice', () {
        when(() => authBloc.currentUserData).thenReturn(
          User(
            uid: 'uid',
            name: 'name',
            email: 'email',
            preferences: UserPreferences.fromJson({
              'uid': 'uid',
              'darkTheme': storedDarkTheme,
            }),
          ),
        );

        expect(createUnit().themeChoice, themeChoice);
      });

      test('is still written as $storedDarkTheme for $themeChoice', () async {
        final box = FakeSyncKVStore<Object?>();

        await createUnit(box: box).setThemeChoice(themeChoice);

        expect(
          box.get('darkTheme'),
          storedDarkTheme ?? const <String, bool>{'pendingNull': true},
        );
      });
    }
  });

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
    'UserPreferencesService => themeChoice: local system overrides server',
    () async {
      final box = FakeSyncKVStore();
      when(() => authBloc.currentUserData).thenReturn(
        const User(
          uid: 'uid',
          name: 'name',
          email: 'email',
          preferences: UserPreferences(
            uid: 'uid',
            themeChoice: ThemeChoice.dark,
          ),
        ),
      );

      final unit = createUnit(box: box);
      await unit.setThemeChoice(ThemeChoice.system);

      expect(unit.themeChoice, ThemeChoice.system);
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
            themeChoice: ThemeChoice.dark,
            greatFeastTheme: false,
            lastHomeMode: HomeMode.churchData,
          ),
        ),
      );

      final unit = createUnit(box: box);

      await unit.setThemeChoice(ThemeChoice.system);
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

  test(
    'a sort the server acknowledged reads back before the signed-in '
    "user's preferences catch up",
    () async {
      final personType = AdvancedQueriesMetadata().allQueryables.firstWhere(
        (q) => q.name == 'Person',
      );
      final key = OrderByPreferenceKey(type: personType);
      final sort = [
        OrderBy(
          field: personType.fieldsMetadataByName['name']!,
          value: OrderByValue.desc,
        ),
      ];
      const uid = '6f1c1b6e-0d9a-4c1e-9b1a-3c2d4e5f6a7b';
      final dao = databaseService.userPreferences as MockUserPreferencesDAO;
      when(
        () => dao.updatePreferences(
          uid: any(named: 'uid'),
          set: any(named: 'set'),
          append: any(named: 'append'),
        ),
      ).thenAnswer(
        (_) async => Fragment_UserPreferences(
          uid: UuidValue.fromString(uid),
          orderByPreferences: {
            key.storageKey: [for (final orderBy in sort) orderBy.toJson()],
          },
          secondLinePreferences: const {},
          greatFeastTheme: true,
          updatedAt: DateTime.now(),
        ),
      );
      when(() => authBloc.currentUserData).thenReturn(
        const User(
          uid: uid,
          name: 'name',
          email: 'email',
          preferences: UserPreferences(uid: uid),
        ),
      );
      final unit = createUnit();

      await unit.setLastOrderByFor(key, sort);
      await Future<void>.delayed(Duration.zero);

      expect(unit.getLastOrderByFor(key), sort);
    },
  );

  test(
    'a sort whose acknowledgment arrives after a newer one still reads back',
    () async {
      final personType = AdvancedQueriesMetadata().allQueryables.firstWhere(
        (q) => q.name == 'Person',
      );
      final nameField = personType.fieldsMetadataByName['name']!;
      final firstKey = OrderByPreferenceKey(type: personType);
      final secondKey = OrderByPreferenceKey(
        type: personType,
        inServiceContext: true,
      );
      final firstSort = [OrderBy(field: nameField)];
      final secondSort = [
        OrderBy(field: nameField, value: OrderByValue.desc),
      ];
      const uid = '6f1c1b6e-0d9a-4c1e-9b1a-3c2d4e5f6a7b';
      final firstFlushedAt = DateTime.utc(2026, 10, 21, 10);
      final secondFlushedAt = firstFlushedAt.add(const Duration(seconds: 1));
      Fragment_UserPreferences acknowledgment(
        Map<OrderByPreferenceKey, List<OrderBy>> sorts,
        DateTime updatedAt,
      ) => Fragment_UserPreferences(
        uid: UuidValue.fromString(uid),
        orderByPreferences: {
          for (final MapEntry(:key, :value) in sorts.entries)
            key.storageKey: [for (final orderBy in value) orderBy.toJson()],
        },
        secondLinePreferences: const {},
        greatFeastTheme: true,
        updatedAt: updatedAt,
      );
      final firstFlush = Completer<Fragment_UserPreferences>();
      final secondFlush = Completer<Fragment_UserPreferences>();
      final replies = [firstFlush, secondFlush].iterator;
      final dao = databaseService.userPreferences as MockUserPreferencesDAO;
      when(
        () => dao.updatePreferences(
          uid: any(named: 'uid'),
          set: any(named: 'set'),
          append: any(named: 'append'),
        ),
      ).thenAnswer((_) {
        replies.moveNext();

        return replies.current.future;
      });
      when(() => authBloc.currentUserData).thenReturn(
        const User(
          uid: uid,
          name: 'name',
          email: 'email',
          preferences: UserPreferences(uid: uid),
        ),
      );
      final unit = createUnit();

      await unit.setLastOrderByFor(firstKey, firstSort);
      await unit.setLastOrderByFor(secondKey, secondSort);
      secondFlush.complete(
        acknowledgment({
          firstKey: firstSort,
          secondKey: secondSort,
        }, secondFlushedAt),
      );
      await Future<void>.delayed(Duration.zero);
      firstFlush.complete(
        acknowledgment({firstKey: firstSort}, firstFlushedAt),
      );
      await Future<void>.delayed(Duration.zero);

      expect(unit.getLastOrderByFor(secondKey), secondSort);
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
