import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/hobbies_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types_dao.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fakes/fake_areas_dao.dart';
import '../../../../../fakes/fake_districts_dao.dart';
import '../../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../../fakes/fake_geocoder.dart';
import '../../../../../fakes/fake_logging_service.dart';
import '../../../../../fakes/fake_person_types_dao.dart';
import '../../../../../fakes/fake_persons_dao.dart';
import '../../../../../fakes/fake_photo_uploader.dart';
import '../../../../../fakes/fake_services_dao.dart';
import '../../../../../fakes/fake_streets_dao.dart';
import '../../../../../fakes/in_memory_families_dao.dart';
import '../../../../../fakes/mock_auth_bloc.dart';
import '../../../../../fakes/mock_database_service.dart';
import '../../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../../fakes/mock_user_preferences_service.dart';
import '../../../../../fakes/mock_viewable_object_service.dart';

class FakeHobbiesDAO extends Fake implements HobbiesDAO {
  List<Hobby> hobbies = const [];

  @override
  PaginatableStreamBase<Hobby> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
  }) => PaginatableStream.simple(
    factory: (_) => Stream.value(PaginatableStreamResponse(data: hobbies)),
  );
}

class FakeMetadataDAO extends MetadataDAO {
  final FakePersonTypesDAO fakePersonTypes;
  final FakeHobbiesDAO fakeHobbies;
  final FakeDistrictsDAO fakeDistricts;

  FakeMetadataDAO({
    required super.db,
    required this.fakePersonTypes,
    required this.fakeHobbies,
    required this.fakeDistricts,
  });

  @override
  PersonTypesDAO get personTypes => fakePersonTypes;

  @override
  HobbiesDAO get hobbies => fakeHobbies;

  @override
  DistrictsDAO get districts => fakeDistricts;
}

class FakePhotosDAO extends Fake implements PhotosDAO {
  final List<({Enum_PhotoSubject subject, String id})> deletedPhotos = [];

  @override
  Future<void> deletePhoto({
    required Enum_PhotoSubject subject,
    required String id,
  }) async => deletedPhotos.add((subject: subject, id: id));
}

class EditPersonScreenHarness {
  static const String discardDialogTitle = 'هل تريد تجاهل التغييرات؟';
  static const User userWhoWritesEverything = User(
    uid: 'user-id',
    name: 'مستخدم',
    permissions: PermissionsSet.fromSet({UserPermission.writeAllData}),
  );

  final FakePersonsDAO persons = FakePersonsDAO();
  final InMemoryFamiliesDAO families = InMemoryFamiliesDAO();
  final FakePersonTypesDAO personTypes = FakePersonTypesDAO();
  final FakeHobbiesDAO hobbies = FakeHobbiesDAO();
  final FakePhotoUploader photos = FakePhotoUploader();
  final FakeLoggingService logging = FakeLoggingService();
  final FakePhotosDAO photosDao = FakePhotosDAO();
  final FakeStreetsDAO streets = FakeStreetsDAO();
  final FakeAreasDAO areas = FakeAreasDAO();
  final FakeServicesDAO services = FakeServicesDAO();

  User? currentUser = userWhoWritesEverything;

  void install() {
    final authBloc = MockAuthBloc();
    when(() => authBloc.currentUserData).thenReturn(currentUser);

    final databaseService = MockDatabaseService();
    when(() => databaseService.persons).thenReturn(persons);
    when(() => databaseService.families).thenReturn(families);
    when(() => databaseService.areas).thenReturn(areas);
    when(() => databaseService.streets).thenReturn(streets);
    when(() => databaseService.photos).thenReturn(photosDao);
    when(() => databaseService.services).thenReturn(services);
    when(() => databaseService.metadata).thenReturn(
      FakeMetadataDAO(
        db: databaseService,
        fakePersonTypes: personTypes,
        fakeHobbies: hobbies,
        fakeDistricts: FakeDistrictsDAO(),
      ),
    );

    registerFallbackValue(
      const ObjectPhotoInfo(Enum_PhotoSubject.PERSONS, 'fallback'),
    );
    final imageUrls = MockImageUrlCacheService();
    when(() => imageUrls.getImageUrl(any()))
        .thenAnswer((_) => Completer<String>().future);

    final preferences = MockUserPreferencesService();
    when(() => preferences.darkTheme).thenReturn(false);
    when(() => preferences.greatFeastTheme).thenReturn(false);

    final viewableObjects = MockViewableObjectService();
    when(() => viewableObjects.getDefaultIconFor<IImage>(any()))
        .thenReturn(Symbols.person);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      databaseServiceProvider.overrideWithValue(databaseService),
      imageUrlCacheServiceProvider.overrideWithValue(imageUrls),
      userPreferencesServiceProvider.overrideWithValue(preferences),
      viewableObjectServiceProvider.overrideWithValue(viewableObjects),
      loggingServiceProvider.overrideWithValue(logging),
      geocoderProvider.overrideWithValue(FakeGeocoder()),
    ]);
  }

  Future<void> open(
    WidgetTester tester,
    PersonEditIntent intent, {
    bool membershipsLoaded = true,
    bool withPageBelow = false,
    bool scrollPastPhoto = true,
  }) async {
    if (membershipsLoaded) persons.respondWithSavedMemberships(null);

    final editRoute = EditPersonRoute(intent: intent);
    Widget openButtonPage(BuildContext context) => Scaffold(
      body: TextButton(
        onPressed: () => unawaited(editRoute.push(context)),
        child: const Text('open'),
      ),
    );

    final router = KaiselRouterConfig<AppRoute>(
      initial: const HomeScreenRoute(),
      builder: (context, route) => switch (route) {
        ViewPersonRoute(:final id) => Text('viewing $id'),
        HomeScreenRoute() || SettingsRoute() => openButtonPage(context),
        _ => route.build(context),
      },
    );
    addTearDown(router.dispose);

    await tester.pumpWidget(
      MaterialApp.router(
        routerConfig: router,
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
    if (withPageBelow) {
      unawaited(router.router.push(const SettingsRoute()));
      await tester.pumpAndSettle();
    }
    await tester.tap(find.text('open'));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
    if (membershipsLoaded) await tester.pumpAndSettle();
    if (scrollPastPhoto) {
      await tester.drag(find.byType(Scrollable).first, const Offset(0, -700));
      await tester.pump();
    }
  }

  Future<void> scrollTo(WidgetTester tester, Finder finder) async {
    final scrollable = find.byType(Scrollable).first;
    await tester.scrollUntilVisible(finder, 100, scrollable: scrollable);
    final viewportCenter = tester.getCenter(scrollable).dy;
    for (var attempt = 0; attempt < 20; attempt++) {
      final distance = tester.getCenter(finder.first).dy - viewportCenter;
      if (distance.abs() < 100) break;

      await tester.drag(scrollable, Offset(0, -distance.clamp(-300.0, 300.0)));
      await tester.pumpAndSettle();
    }
  }

  Future<void> pressBack(WidgetTester tester) async {
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
  }

  Future<void> tapSave(WidgetTester tester) async {
    await tester.tap(find.byKey(EditPersonSaveButtonKeys.saveButton));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
  }
}
