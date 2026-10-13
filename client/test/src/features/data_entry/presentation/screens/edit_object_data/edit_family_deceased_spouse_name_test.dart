import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../../fakes/fake_person_types_dao.dart';
import '../../../../../fakes/in_memory_families_dao.dart';
import '../../../../../fakes/mock_auth_bloc.dart';
import '../../../../../fakes/mock_database_service.dart';
import '../../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../../fakes/mock_metadata_dao.dart';
import '../../../../../fakes/mock_user_preferences_service.dart';
import '../../../../../fakes/mock_viewable_object_service.dart';
import '../../../../../utils.dart';

void main() {
  const deceasedSpouseNameField = ValueKey('deceasedSpouseName');

  late InMemoryFamiliesDAO families;

  Family widowedFamily({required MartialStatus status}) => Family(
    id: 'family-id',
    name: 'أسرة',
    address: const Address(
      area: Area(id: 'area-id', name: 'منطقة'),
      street: Street(id: 'street-id', name: 'شارع'),
    ),
    status: status,
    deceasedSpouseName: 'مينا',
  );

  Future<void> saveWithDeceasedSpouseName(
    WidgetTester tester,
    MartialStatus status,
    String enteredName,
  ) async {
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        EditFamily(family: widowedFamily(status: status)),
      ),
    );
    await tester.pumpAndSettle();

    await tester.scrollUntilVisible(
      find.byKey(deceasedSpouseNameField),
      100,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.enterText(find.byKey(deceasedSpouseNameField), enteredName);
    await tester.tap(find.byKey(EditObjectDataKeys.saveButton));
    await tester.pumpAndSettle();
  }

  setUp(() {
    final authBloc = MockAuthBloc();
    when(() => authBloc.currentUserData).thenReturn(
      const User(
        uid: 'user-id',
        name: 'مستخدم',
        permissions: PermissionsSet.fromSet({UserPermission.writeAllData}),
      ),
    );

    families = InMemoryFamiliesDAO();
    final metadata = MockMetadataDAO();
    when(() => metadata.personTypes).thenReturn(FakePersonTypesDAO());
    final databaseService = MockDatabaseService();
    when(() => databaseService.families).thenReturn(families);
    when(() => databaseService.metadata).thenReturn(metadata);

    registerFallbackValue(
      const FunctionsObjectImageInfo('families', 'fallback'),
    );
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
    ).thenReturn(Symbols.family_restroom);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      databaseServiceProvider.overrideWithValue(databaseService),
      imageUrlCacheServiceProvider.overrideWithValue(imageUrls),
      userPreferencesServiceProvider.overrideWithValue(preferences),
      viewableObjectServiceProvider.overrideWithValue(viewableObjects),
    ]);
  });

  tearDown(defaultTearDown);

  testWidgets("a widowed family's deceased spouse name is saved trimmed", (
    tester,
  ) async {
    const name = 'جرجس';

    await saveWithDeceasedSpouseName(
      tester,
      MartialStatus.widowed,
      '  $name  ',
    );

    expect(families.savedFamilies.single.deceasedSpouseName, name);
  });

  for (final status in [
    MartialStatus.widowed,
    MartialStatus.widowedWithoutChildren,
  ]) {
    testWidgets(
      'a ${status.name} family can be saved after clearing the deceased '
      "spouse's name",
      (tester) async {
        await saveWithDeceasedSpouseName(tester, status, '');

        expect(families.savedFamilies.single.deceasedSpouseName, isNull);
      },
    );
  }
}
