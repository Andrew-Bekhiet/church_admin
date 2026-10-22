import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../../fakes/fake_logging_service.dart';
import '../../../../../material_ui_test_app.dart';
import '../../../../../utils.dart';

void main() {
  const newName = 'اسم جديد';

  late List<Person?> changes;

  setUp(() {
    changes = [];
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      loggingServiceProvider.overrideWithValue(FakeLoggingService()),
    ]);
  });

  tearDown(defaultTearDown);

  Future<void> createCustomNamed(
    WidgetTester tester,
    Future<Person> Function(String) onCreateCustom,
  ) async {
    await tester.pumpWidget(
      MaterialUiTestApp.withThemeAndLocale(
        child: Scaffold(
          body: ObjectSelectionField<Person, Person?>(
            initialValue: null,
            dialogFieldLabel: 'مخدوم',
            listController: (search) => ViewableObjectListController(
              selectionController: SelectionController<Person>(),
              objectsPaginatableStream: PaginatableStream.simple(
                factory: (_) => Stream.value(
                  const PaginatableStreamResponse(data: <Person>[]),
                ),
              ),
              filterStream: search,
            ),
            builder: (context, state) =>
                state.value == null ? null : Text(state.value!.name),
            onChanged: changes.add,
            onCreateCustom: onCreateCustom,
          ),
        ),
      ),
    );
    await tester.tap(find.byType(ObjectSelectionField<Person, Person?>));
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

    expect(changes, isEmpty);
  });

  testWidgets('a created custom object becomes the value', (tester) async {
    final created = Person(id: 'new', name: newName);

    await createCustomNamed(tester, (_) async => created);

    expect(changes, [created]);
    expect(find.text(newName), findsOneWidget);
  });
}
