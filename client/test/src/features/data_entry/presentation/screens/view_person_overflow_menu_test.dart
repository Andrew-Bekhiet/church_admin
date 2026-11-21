import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/mock_auth_bloc.dart';
import '../../../../fakes/mock_database_service.dart';
import '../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../fakes/mock_user_preferences_service.dart';
import '../../../../fakes/mock_viewable_object_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';
import '../../../../material_ui_test_app.dart';
import '../../../../utils.dart';

class _MockPersonsDAO extends Mock implements PersonsDAO {}

class _MockFingerprintIdsDAO extends Mock implements FingerprintIdsDAO {}

void main() {
  final editableMina = Person(id: 'mina-id', name: 'مينا', userCanEdit: true);
  final readOnlyMina = Person(id: 'mina-id', name: 'مينا');

  late MockAuthBloc authBloc;
  late _MockPersonsDAO persons;

  setUpAll(() => registerFallbackValue(Person(id: '', name: '')));

  setUp(() {
    authBloc = MockAuthBloc();
    persons = _MockPersonsDAO();
    final fingerprintIds = _MockFingerprintIdsDAO();
    when(
      () => fingerprintIds.streamOfPerson(any()),
    ).thenAnswer((_) => Stream.value([]));
    final database = MockDatabaseService();
    when(() => database.persons).thenReturn(persons);
    when(() => database.fingerprintIds).thenReturn(fingerprintIds);
    final preferences = MockUserPreferencesService();
    when(() => preferences.themeChoice).thenReturn(ThemeChoice.light);
    when(() => preferences.greatFeastTheme).thenReturn(false);
    final viewableObjects = MockViewableObjectService();
    when(
      () => viewableObjects.getDefaultIconFor<IImage>(any()),
    ).thenReturn(Symbols.person);
    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      databaseServiceProvider.overrideWithValue(database),
      userPreferencesServiceProvider.overrideWithValue(preferences),
      viewableObjectServiceProvider.overrideWithValue(viewableObjects),
      imageUrlCacheServiceProvider.overrideWithValue(
        MockImageUrlCacheService(),
      ),
      analyticsServiceProvider.overrideWithValue(
        AnalyticsService([RecordingAnalyticsProvider()], FakeLoggingService()),
      ),
    ]);
  });
  tearDown(defaultTearDown);

  Future<void> pumpPersonViewedBy(
    WidgetTester tester, {
    required Person person,
    required Set<UserPermission> viewerPermissions,
  }) async {
    when(() => authBloc.currentUserData).thenReturn(
      User(
        uid: 'viewer-id',
        name: 'أمين الخدمة',
        permissions: PermissionsSet.fromSet(viewerPermissions),
      ),
    );
    final livePerson = StreamController<Person?>()..add(person);
    addTearDown(livePerson.close);
    when(
      () => persons.streamSingleById(
        id: person.id,
        servicesLimit: any(named: 'servicesLimit'),
        classesLimit: any(named: 'classesLimit'),
        groupsLimit: any(named: 'groupsLimit'),
      ),
    ).thenAnswer((_) => livePerson.stream);
    tester.view
      ..physicalSize = const Size(390, 844)
      ..devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      MaterialUiTestApp.withThemeAndLocale(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ViewPerson(personId: person.id, person: person),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
  }

  testWidgets(
    'a fingerprint manager who can edit the person finds fingerprint attendance in the menu',
    (tester) async {
      await pumpPersonViewedBy(
        tester,
        person: editableMina,
        viewerPermissions: {
          UserPermission.approved,
          UserPermission.manageFingerprintIds,
        },
      );

      await tester.tap(find.byKey(PersonOverflowMenuKeys.self));
      await tester.pumpAndSettle();

      expect(
        find.byKey(
          PersonOverflowMenuKeys.itemFor(
            PersonOverflowAction.manageFingerprintIds,
          ),
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'choosing fingerprint attendance opens the fingerprint numbers of the person',
    (tester) async {
      await pumpPersonViewedBy(
        tester,
        person: editableMina,
        viewerPermissions: {
          UserPermission.approved,
          UserPermission.manageFingerprintIds,
        },
      );
      await tester.tap(find.byKey(PersonOverflowMenuKeys.self));
      await tester.pumpAndSettle();

      await tester.tap(
        find.byKey(
          PersonOverflowMenuKeys.itemFor(
            PersonOverflowAction.manageFingerprintIds,
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(
        find.byKey(PersonFingerprintIdsSheetKeys.emptyNotice),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'a fingerprint manager who cannot edit the person gets no overflow menu',
    (tester) async {
      await pumpPersonViewedBy(
        tester,
        person: readOnlyMina,
        viewerPermissions: {
          UserPermission.approved,
          UserPermission.manageFingerprintIds,
        },
      );

      expect(find.byKey(PersonOverflowMenuKeys.self), findsNothing);
    },
  );

  testWidgets(
    'an editor without the fingerprint permission gets no overflow menu',
    (tester) async {
      await pumpPersonViewedBy(
        tester,
        person: editableMina,
        viewerPermissions: {UserPermission.approved},
      );

      expect(find.byKey(PersonOverflowMenuKeys.self), findsNothing);
    },
  );
}
