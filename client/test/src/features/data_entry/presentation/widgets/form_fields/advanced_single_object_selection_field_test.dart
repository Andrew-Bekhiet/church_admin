import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../../fakes/fake_logging_service.dart';
import '../../../../../utils.dart';

void main() {
  const newName = 'اسم جديد';

  late AdvancedFieldController<Person?, String> field;

  setUp(() {
    field = AdvancedFieldController<Person?, String>(initialValue: null);
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      loggingServiceProvider.overrideWithValue(FakeLoggingService()),
    ]);
  });

  tearDown(() {
    field.dispose();
    defaultTearDown();
  });

  Future<void> createCustomNamed(
    WidgetTester tester,
    Future<Person> Function(String) onCreateCustom,
  ) async {
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Scaffold(
          body: AdvancedSingleObjectSelectionField<Person, String>(
            field: field,
            label: 'مخدوم',
            translateError: (error) => error,
            listController: (search) => ViewableObjectListController(
              selectionController: SelectionController<Person>(),
              objectsPaginatableStream: PaginatableStream.simple(
                factory: (_) => Stream.value(
                  const PaginatableStreamResponse(data: <Person>[]),
                ),
              ),
              filterStream: search,
            ),
            previewBuilder: (person) => Text(person.name),
            onCreateCustom: onCreateCustom,
          ),
        ),
      ),
    );
    await tester.tap(find.byType(TappableInputField<Person?>));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), newName);
    await tester.pumpAndSettle();
    await tester.tap(find.text('إضافة $newName'));
    await tester.pumpAndSettle();
  }

  testWidgets('a failed creation of a custom object shows the error', (
    tester,
  ) async {
    await createCustomNamed(tester, (_) => Future.error(Exception('offline')));

    expect(find.byType(CAErrorDialog), findsOneWidget);
  });

  testWidgets('a failed creation of a custom object leaves the value '
      'unchanged', (tester) async {
    await createCustomNamed(tester, (_) => Future.error(Exception('offline')));

    expect(field.fieldValue, isNull);
  });

  testWidgets('a created custom object becomes the value', (tester) async {
    final created = Person(id: 'new', name: newName);

    await createCustomNamed(tester, (_) async => created);

    expect(field.fieldValue, created);
  });
}
