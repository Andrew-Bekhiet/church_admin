import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_box.dart';

class MockUserPreferencesDAO extends Mock implements UserPreferencesDAO {}

class MockDatabaseService extends Mock implements DatabaseService {}

class MockAuthBloc extends Mock implements AuthBloc {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    registerFallbackValue(<String, dynamic>{});
  });

  late MockDatabaseService databaseService;
  late MockAuthBloc authBloc;

  setUp(() {
    databaseService = MockDatabaseService();

    final mockUserPreferencesDAO = MockUserPreferencesDAO();
    when(
      () => mockUserPreferencesDAO.updatePreferences(
        scalars: any(named: 'scalars'),
        orderByPatch: any(named: 'orderByPatch'),
        secondLinePatch: any(named: 'secondLinePatch'),
      ),
    ).thenAnswer((_) => Completer<UserPreferences>().future);

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
          scalars: any(named: 'scalars'),
          orderByPatch: any(named: 'orderByPatch'),
          secondLinePatch: any(named: 'secondLinePatch'),
        ),
      ).thenAnswer((_) async => const UserPreferences(uid: 'uid'));

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
          scalars: any(
            named: 'scalars',
            that: containsPair('darkTheme', isNull),
          ),
          orderByPatch: any(named: 'orderByPatch'),
          secondLinePatch: any(named: 'secondLinePatch'),
        ),
      );
      await unit.setGreatFeastTheme(false);
      verify(
        () => userPreferences.updatePreferences(
          scalars: any(
            named: 'scalars',
            that: containsPair('greatFeastTheme', isFalse),
          ),
          orderByPatch: any(named: 'orderByPatch'),
          secondLinePatch: any(named: 'secondLinePatch'),
        ),
      );

      await unit.setLastHomeMode(HomeMode.sundaySchool);
      verify(
        () => userPreferences.updatePreferences(
          scalars: any(
            named: 'scalars',
            that: containsPair('lastHomeMode', HomeMode.sundaySchool.name),
          ),
          orderByPatch: any(named: 'orderByPatch'),
          secondLinePatch: any(named: 'secondLinePatch'),
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
          scalars: any(named: 'scalars'),
          orderByPatch: any(named: 'orderByPatch'),
          secondLinePatch: any(named: 'secondLinePatch'),
        ),
      ).thenAnswer((_) async => const UserPreferences(uid: 'uid'));

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

        final patch =
            verify(
                  () => dao.updatePreferences(
                    scalars: any(named: 'scalars'),
                    orderByPatch: any(named: 'orderByPatch'),
                    secondLinePatch: captureAny(named: 'secondLinePatch'),
                  ),
                ).captured.single
                as Json;
        expect(patch, {key.storageKey: field.toJson()});
        expect(box.toMap(), isEmpty);
      },
    );
  });
}
