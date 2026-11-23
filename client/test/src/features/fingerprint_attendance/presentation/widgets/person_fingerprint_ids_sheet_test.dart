import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../material_ui_test_app.dart';

class _MockFingerprintIdsDAO extends Mock implements FingerprintIdsDAO {}

void main() {
  final person = Person(id: 'person-id', name: 'اسم المخدوم');
  final oldFingerprintId = PersonFingerprintId(
    id: 'old-code-id',
    employeeCode: '1042',
    addedAt: DateTime(2025, 3, 14, 12),
    addedBy: const User(uid: 'old-code-adder-id', name: 'مضيف الرقم القديم'),
  );
  final newFingerprintId = PersonFingerprintId(
    id: 'new-code-id',
    employeeCode: '2077',
    addedAt: DateTime(2026, 1, 9, 12),
    addedBy: const User(uid: 'new-code-adder-id', name: 'مضيف الرقم الجديد'),
  );

  late _MockFingerprintIdsDAO dao;

  setUp(() {
    dao = _MockFingerprintIdsDAO();
    when(() => dao.remove(any())).thenAnswer((_) async {});
  });

  Future<void> pumpSheetWhileLoading(
    WidgetTester tester,
    Stream<List<PersonFingerprintId>> fingerprintIds,
  ) async {
    when(() => dao.streamOfPerson(person.id)).thenAnswer((_) => fingerprintIds);
    final cubit = PersonFingerprintIdsCubit(
      personId: person.id,
      fingerprintIdsDao: dao,
    );
    addTearDown(cubit.close);

    await tester.pumpWidget(
      MaterialUiTestApp.withThemeAndLocale(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: BlocProvider.value(
            value: cubit,
            child: PersonFingerprintIdsSheet(personName: person.name),
          ),
        ),
      ),
    );
  }

  Future<void> pumpSheetShowing(
    WidgetTester tester,
    Stream<List<PersonFingerprintId>> fingerprintIds,
  ) async {
    await pumpSheetWhileLoading(tester, fingerprintIds);
    await tester.pumpAndSettle();
  }

  testWidgets('every fingerprint number of the person is listed', (
    tester,
  ) async {
    await pumpSheetShowing(
      tester,
      Stream.value([oldFingerprintId, newFingerprintId]),
    );

    expect(
      [
        for (final fingerprintId in [oldFingerprintId, newFingerprintId])
          tester
              .widget<Text>(
                find.byKey(
                  PersonFingerprintIdTileKeys.employeeCodeFor(fingerprintId.id),
                ),
              )
              .data,
      ],
      [oldFingerprintId.employeeCode, newFingerprintId.employeeCode],
    );
  });

  testWidgets('a fingerprint number names the user who added it', (
    tester,
  ) async {
    await pumpSheetShowing(
      tester,
      Stream.value([oldFingerprintId, newFingerprintId]),
    );

    final addedByAndDate = tester.widget<Text>(
      find.byKey(
        PersonFingerprintIdTileKeys.addedByAndDateFor(newFingerprintId.id),
      ),
    );
    expect(addedByAndDate.data, contains(newFingerprintId.addedBy.name));
  });

  testWidgets('a fingerprint number shows the day it was added', (
    tester,
  ) async {
    await pumpSheetShowing(tester, Stream.value([newFingerprintId]));

    final addedByAndDate = tester.widget<Text>(
      find.byKey(
        PersonFingerprintIdTileKeys.addedByAndDateFor(newFingerprintId.id),
      ),
    );
    expect(
      addedByAndDate.data,
      contains('${Unicode.LRI}2026/1/9${Unicode.PDI}'),
    );
  });

  testWidgets('a person without fingerprint numbers sees what they are for', (
    tester,
  ) async {
    await pumpSheetShowing(tester, Stream.value([]));

    expect(
      find.byKey(PersonFingerprintIdsSheetKeys.emptyNotice),
      findsOneWidget,
    );
  });

  testWidgets('a progress indicator shows until the numbers arrive', (
    tester,
  ) async {
    final neverLoaded = StreamController<List<PersonFingerprintId>>();
    addTearDown(neverLoaded.close);

    await pumpSheetWhileLoading(tester, neverLoaded.stream);

    expect(
      find.byKey(PersonFingerprintIdsSheetKeys.loadingIndicator),
      findsOneWidget,
    );
  });

  testWidgets('numbers that fail to load are reported instead of an add form', (
    tester,
  ) async {
    await pumpSheetShowing(tester, Stream.error(Exception('offline')));

    expect(
      find.byKey(PersonFingerprintIdsSheetKeys.loadErrorNotice),
      findsOneWidget,
    );
    expect(
      find.byKey(PersonFingerprintIdsSheetKeys.employeeCodeField),
      findsNothing,
    );
  });

  testWidgets('removing a number asks for confirmation first', (tester) async {
    await pumpSheetShowing(
      tester,
      Stream.value([oldFingerprintId, newFingerprintId]),
    );

    await tester.tap(
      find.byKey(
        PersonFingerprintIdTileKeys.removeButtonFor(oldFingerprintId.id),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byKey(ConfirmationDialogKeys.confirmButton), findsOneWidget);
    verifyNever(() => dao.remove(any()));
  });

  testWidgets('confirming the removal removes only that number', (
    tester,
  ) async {
    await pumpSheetShowing(
      tester,
      Stream.value([oldFingerprintId, newFingerprintId]),
    );
    await tester.tap(
      find.byKey(
        PersonFingerprintIdTileKeys.removeButtonFor(oldFingerprintId.id),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(ConfirmationDialogKeys.confirmButton));
    await tester.pumpAndSettle();

    verify(() => dao.remove(oldFingerprintId.id));
    verifyNever(() => dao.remove(newFingerprintId.id));
  });

  testWidgets('cancelling the removal keeps the number', (tester) async {
    await pumpSheetShowing(
      tester,
      Stream.value([oldFingerprintId, newFingerprintId]),
    );
    await tester.tap(
      find.byKey(
        PersonFingerprintIdTileKeys.removeButtonFor(oldFingerprintId.id),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(ConfirmationDialogKeys.cancelButton));
    await tester.pumpAndSettle();

    verifyNever(() => dao.remove(any()));
  });
}
