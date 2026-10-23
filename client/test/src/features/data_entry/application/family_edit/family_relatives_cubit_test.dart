import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_address_form_services.dart';
import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/in_memory_families_dao.dart';
import '../../../../fakes/recording_analytics_provider.dart';

void main() {
  const parent = Family(id: 'parent', name: 'عائلة الأب');
  const storedFamily = Family(id: 'family', name: 'عائلة');

  late InMemoryFamiliesDAO families;
  late FamilyFormController form;

  FamilyRelativesCubit cubitEditing(FamilyEditIntent intent) {
    form = FamilyFormController(
      intent: intent,
      familiesDAO: families,
      analyticsService: AnalyticsService([
        RecordingAnalyticsProvider(),
      ], FakeLoggingService()),
      addressServices: FakeAddressFormServices.withNothingToSuggest(),
      currentUserId: 'me',
    );
    addTearDown(form.dispose);

    return FamilyRelativesCubit(
      form: form,
      familiesDAO: families,
      logging: FakeLoggingService(),
    );
  }

  setUp(() => families = InMemoryFamiliesDAO());

  test('a new family has no saved relatives to wait for', () {
    final cubit = cubitEditing(const CreateBlankFamily());
    addTearDown(cubit.close);

    expect(cubit.state, isA<FamilyRelativesLoaded>());
  });

  blocTest<FamilyRelativesCubit, FamilyRelativesLoadState>(
    'the saved relatives of an existing family are shown once loaded',
    setUp: () => families.relatedFamilies = storedFamily.copyWith(
      parents: [parent],
    ),
    build: () => cubitEditing(const UpdateFamily(family: storedFamily)),
    act: (cubit) => cubit.loadSavedRelatives(),
    expect: () => [isA<FamilyRelativesLoaded>()],
    verify: (_) => expect(form.parents.fieldValue, {parent}),
  );

  blocTest<FamilyRelativesCubit, FamilyRelativesLoadState>(
    'a failed load is reported',
    setUp: () => families.relatedFamiliesError = Exception('offline'),
    build: () => cubitEditing(const UpdateFamily(family: storedFamily)),
    act: (cubit) => cubit.loadSavedRelatives(),
    expect: () => [isA<FamilyRelativesFailedToLoad>()],
  );
}
