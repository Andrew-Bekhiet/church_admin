import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../../fakes/fake_logging_service.dart';
import '../../../../../utils.dart';

void main() {
  const newName = 'اسم جديد';
  const fieldLabel = 'مخدومين';

  setUp(() {
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      loggingServiceProvider.overrideWithValue(FakeLoggingService()),
    ]);
  });

  tearDown(defaultTearDown);

  testWidgets('closing the picker while a custom object is being created '
      'raises nothing', (tester) async {
    final creation = Completer<Person>();
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: MultiObjectSelectionField<Person>(
            labelText: fieldLabel,
            initialValue: const {},
            builder: (context, state) => null,
            listController: (search) => ViewableObjectListController(
              objectsPaginatableStream: PaginatableStream.simple(
                factory: (_) => Stream.value(
                  const PaginatableStreamResponse(data: <Person>[]),
                ),
              ),
              filterStream: search.map((query) => query ?? ''),
            ),
            onCreateCustom: (_) => creation.future,
          ),
        ),
      ),
    );
    await tester.tap(find.byType(MultiObjectSelectionField<Person>));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), newName);
    await tester.pumpAndSettle();
    await tester.tap(find.text('إضافة $newName'));
    await tester.pump();
    await tester.tap(find.text('تم'));
    await tester.pumpAndSettle();

    creation.complete(Person(id: 'new', name: newName));
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
  });
}
