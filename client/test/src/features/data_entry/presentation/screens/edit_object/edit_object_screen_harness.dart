import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/study_years_dao.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fakes/fake_areas_dao.dart';
import '../../../../../fakes/fake_classes_dao.dart';
import '../../../../../fakes/fake_districts_dao.dart';
import '../../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../../fakes/fake_geocoder.dart';
import '../../../../../fakes/fake_groups_dao.dart';
import '../../../../../fakes/fake_logging_service.dart';
import '../../../../../fakes/fake_meetings_dao.dart';
import '../../../../../fakes/fake_person_types_dao.dart';
import '../../../../../fakes/fake_services_dao.dart';
import '../../../../../fakes/fake_stores_dao.dart';
import '../../../../../fakes/fake_streets_dao.dart';
import '../../../../../fakes/fake_study_years_dao.dart';
import '../../../../../fakes/in_memory_families_dao.dart';
import '../../../../../fakes/mock_auth_bloc.dart';
import '../../../../../fakes/mock_database_service.dart';
import '../../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../../fakes/mock_user_preferences_service.dart';
import '../../../../../fakes/mock_viewable_object_service.dart';
import '../edit_person/edit_person_screen_harness.dart'
    show FakeHobbiesDAO, FakeMetadataDAO;

class FakeFunctionsService extends Fake implements FunctionsService {}

class FakeEditObjectMetadataDAO extends FakeMetadataDAO {
  final FakeStudyYearsDAO fakeStudyYears;

  FakeEditObjectMetadataDAO({
    required super.db,
    required super.fakePersonTypes,
    required this.fakeStudyYears,
  }) : super(fakeHobbies: FakeHobbiesDAO(), fakeDistricts: FakeDistrictsDAO());

  @override
  StudyYearsDAO get studyYears => fakeStudyYears;
}

class EditObjectScreenHarness {
  static const User userWhoWritesEverything = User(
    uid: 'user-id',
    name: 'مستخدم',
    permissions: PermissionsSet.fromSet({
      UserPermission.writeAllData,
      UserPermission.deleteData,
    }),
  );

  final FakeAreasDAO areasDAO = FakeAreasDAO();
  final FakeStreetsDAO streetsDAO = FakeStreetsDAO();
  final InMemoryFamiliesDAO familiesDAO = InMemoryFamiliesDAO();
  final FakeStoresDAO storesDAO = FakeStoresDAO();
  final FakePersonTypesDAO personTypesDAO = FakePersonTypesDAO();
  final FakeServicesDAO servicesDAO = FakeServicesDAO();
  final FakeGroupsDAO groupsDAO = FakeGroupsDAO();
  final FakeMeetingsDAO meetingsDAO = FakeMeetingsDAO();
  final FakeClassesDAO classesDAO = FakeClassesDAO();
  final FakeStudyYearsDAO studyYearsDAO = FakeStudyYearsDAO();
  final FakeLoggingService logging = FakeLoggingService();

  User currentUser = userWhoWritesEverything;

  late KaiselRouter<AppRoute> _router;

  Finder get nameField => find.byKey(EditObjectScaffoldKeys.nameField);

  List<AppRoute> get routeStack => _router.stack;

  void install() {
    final authBloc = MockAuthBloc();
    when(() => authBloc.currentUserData).thenReturn(currentUser);

    final databaseService = MockDatabaseService();
    when(() => databaseService.areas).thenReturn(areasDAO);
    when(() => databaseService.streets).thenReturn(streetsDAO);
    when(() => databaseService.families).thenReturn(familiesDAO);
    when(() => databaseService.stores).thenReturn(storesDAO);
    when(() => databaseService.services).thenReturn(servicesDAO);
    when(() => databaseService.groups).thenReturn(groupsDAO);
    when(() => databaseService.meetings).thenReturn(meetingsDAO);
    when(() => databaseService.classes).thenReturn(classesDAO);
    when(() => databaseService.metadata).thenReturn(
      FakeEditObjectMetadataDAO(
        db: databaseService,
        fakePersonTypes: personTypesDAO,
        fakeStudyYears: studyYearsDAO,
      ),
    );

    registerFallbackValue(const FunctionsObjectImageInfo('areas', 'fallback'));
    final imageUrls = MockImageUrlCacheService();
    when(
      () => imageUrls.getImageUrl(any()),
    ).thenAnswer((_) => Completer<String>().future);

    final preferences = MockUserPreferencesService();
    when(() => preferences.darkTheme).thenReturn(false);
    when(() => preferences.greatFeastTheme).thenReturn(false);

    final viewableObjects = MockViewableObjectService();
    when(
      () => viewableObjects.getDefaultIconFor<IImage>(any()),
    ).thenReturn(Symbols.map);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      databaseServiceProvider.overrideWithValue(databaseService),
      imageUrlCacheServiceProvider.overrideWithValue(imageUrls),
      userPreferencesServiceProvider.overrideWithValue(preferences),
      viewableObjectServiceProvider.overrideWithValue(viewableObjects),
      loggingServiceProvider.overrideWithValue(logging),
      functionsServiceProvider.overrideWithValue(FakeFunctionsService()),
      geocoderProvider.overrideWithValue(FakeGeocoder()),
    ]);
  }

  Future<void> open(
    WidgetTester tester,
    AppRoute editRoute, {
    bool withPageBelow = false,
    bool settle = true,
  }) async {
    final routerConfig = KaiselRouterConfig<AppRoute>(
      initial: const HomeScreenRoute(),
      builder: (context, route) =>
          route == editRoute ? route.build(context) : const Scaffold(),
    );
    addTearDown(routerConfig.dispose);
    _router = routerConfig.router;

    await tester.pumpWidget(
      MaterialApp.router(
        routerConfig: routerConfig,
        locale: const Locale('ar', 'EG'),
        supportedLocales: const [Locale('ar', 'EG')],
        localizationsDelegates: const [
          ...GlobalMaterialLocalizations.delegates,
        ],
        theme: ThemingService.getDefault(
          isDarkOverride: false,
          greatFeastThemeOverride: false,
        ),
      ),
    );
    if (withPageBelow) unawaited(_router.push(const SettingsRoute()));
    unawaited(_router.push(editRoute));
    if (!settle) {
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));

      return;
    }
    await tester.pumpAndSettle();
    await tester.drag(find.byType(Scrollable).first, const Offset(0, -700));
    await tester.pumpAndSettle();
  }

  Future<void> scrollTo(WidgetTester tester, Finder finder) async {
    await tester.scrollUntilVisible(
      finder,
      100,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pump();
  }

  Future<void> pressBack(WidgetTester tester) async {
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
  }

  Future<void> tapSave(WidgetTester tester) async {
    await tester.tap(find.byKey(ObjectSaveButtonKeys.saveButton));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
  }
}
