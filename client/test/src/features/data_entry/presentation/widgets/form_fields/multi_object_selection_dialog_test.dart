import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import '../../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../../fakes/fake_logging_service.dart';

void main() {
  const newName = 'اسم جديد';

  setUp(() {
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      loggingServiceProvider.overrideWithValue(FakeLoggingService()),
    ]);
  });

  tearDown(defaultTearDown);

  Future<void> openDialogAndTypeNewName(
    WidgetTester tester,
    Future<Person> Function(String) onCreateCustom,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => TextButton(
            onPressed: () => unawaited(
              showDialog<Set<Person>>(
                context: context,
                builder: (context) => MultiObjectSelectionDialog<Person>(
                  fieldLabel: 'مخدوم',
                  selected: const {},
                  listController: (search) => ViewableObjectListController(
                    selectionController: SelectionController<Person>(),
                    objectsPaginatableStream: PaginatableStream.simple(
                      factory: (_) => Stream.value(
                        const PaginatableStreamResponse(data: <Person>[]),
                      ),
                    ),
                    filterStream: search,
                  ),
                  onCreateCustom: onCreateCustom,
                ),
              ),
            ),
            child: const Text('open'),
          ),
        ),
      ),
    );
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), newName);
    await tester.pumpAndSettle();
  }

  testWidgets('closing the dialog while a custom object is being created '
      'raises nothing', (tester) async {
    final creation = Completer<Person>();
    await openDialogAndTypeNewName(tester, (_) => creation.future);
    await tester.tap(find.text('إضافة $newName'));
    await tester.pump();
    await tester.tap(find.text('تم'));
    await tester.pumpAndSettle();

    creation.complete(Person(id: 'new', name: newName));
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
  });

  testWidgets('a failed creation of a custom object shows the error', (
    tester,
  ) async {
    await openDialogAndTypeNewName(
      tester,
      (_) => Future.error(Exception('offline')),
    );

    await tester.tap(find.text('إضافة $newName'));
    await tester.pumpAndSettle();

    expect(find.byType(CAErrorDialog), findsOneWidget);
  });
}
