import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../material_ui_test_app.dart';

class _MockFingerprintIdsDAO extends Mock implements FingerprintIdsDAO {}

void main() {
  final mina = Person(id: 'mina-id', name: 'مينا');
  final oldCode = PersonFingerprintId(
    id: 'old-code-id',
    employeeCode: '1042',
    addedAt: DateTime(2025, 3, 14, 12),
    addedBy: const User(uid: 'abanoub-id', name: 'أبانوب'),
  );
  final newCode = PersonFingerprintId(
    id: 'new-code-id',
    employeeCode: '2077',
    addedAt: DateTime(2026, 1, 9, 12),
    addedBy: const User(uid: 'kirollos-id', name: 'كيرلس'),
  );

  late _MockFingerprintIdsDAO dao;

  setUp(() {
    dao = _MockFingerprintIdsDAO();
    when(
      () => dao.addEmployeeCode(
        personId: any(named: 'personId'),
        employeeCode: any(named: 'employeeCode'),
      ),
    ).thenAnswer((_) async {});
    when(() => dao.remove(any())).thenAnswer((_) async {});
  });

  Future<void> pumpSheetShowing(
    WidgetTester tester,
    Stream<List<PersonFingerprintId>> fingerprintIds,
  ) async {
    when(() => dao.streamOfPerson(mina.id)).thenAnswer((_) => fingerprintIds);
    final cubit = PersonFingerprintIdsCubit(
      personId: mina.id,
      fingerprintIds: dao,
    );
    addTearDown(cubit.close);

    await tester.pumpWidget(
      MaterialUiTestApp.withThemeAndLocale(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: BlocProvider.value(
            value: cubit,
            child: PersonFingerprintIdsSheet(personName: mina.name),
          ),
        ),
      ),
    );
    await tester.pump();
  }

  Future<void> submitEmployeeCode(WidgetTester tester, String code) async {
    await tester.enterText(
      find.byKey(PersonFingerprintIdsSheetKeys.employeeCodeField),
      code,
    );
    await tester.pump();
    await tester.tap(find.byKey(PersonFingerprintIdsSheetKeys.addButton));
    await tester.pump();
  }

  testWidgets('every fingerprint number of the person is listed', (
    tester,
  ) async {
    await pumpSheetShowing(tester, Stream.value([oldCode, newCode]));

    expect(
      [
        for (final fingerprintId in [oldCode, newCode])
          tester
              .widget<Text>(
                find.byKey(
                  PersonFingerprintIdTileKeys.employeeCodeFor(fingerprintId.id),
                ),
              )
              .data,
      ],
      [oldCode.employeeCode, newCode.employeeCode],
    );
  });

  testWidgets('a fingerprint number names the user who added it', (
    tester,
  ) async {
    await pumpSheetShowing(tester, Stream.value([oldCode, newCode]));

    final addition = tester.widget<Text>(
      find.byKey(PersonFingerprintIdTileKeys.additionFor(newCode.id)),
    );
    expect(addition.data, contains(newCode.addedBy.name));
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

    await pumpSheetShowing(tester, neverLoaded.stream);

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

  testWidgets('adding a number links the typed code to the person', (
    tester,
  ) async {
    await pumpSheetShowing(tester, Stream.value([oldCode]));

    await submitEmployeeCode(tester, newCode.employeeCode);

    verify(
      () => dao.addEmployeeCode(
        personId: mina.id,
        employeeCode: newCode.employeeCode,
      ),
    );
  });

  testWidgets('the field empties once the number is added', (tester) async {
    await pumpSheetShowing(tester, Stream.value([oldCode]));

    await submitEmployeeCode(tester, newCode.employeeCode);

    final field = tester.widget<TextField>(
      find.byKey(PersonFingerprintIdsSheetKeys.employeeCodeField),
    );
    expect(field.controller?.text, isEmpty);
  });

  testWidgets('a number that is already linked is refused beside the field', (
    tester,
  ) async {
    when(
      () => dao.addEmployeeCode(
        personId: mina.id,
        employeeCode: oldCode.employeeCode,
      ),
    ).thenThrow(
      FingerprintEmployeeCodeAlreadyLinkedException(
        employeeCode: oldCode.employeeCode,
        upstreamMessage: 'duplicate key',
      ),
    );
    await pumpSheetShowing(tester, Stream.value([oldCode]));

    await submitEmployeeCode(tester, oldCode.employeeCode);

    expect(
      find.byKey(
        PersonFingerprintIdsSheetKeys.employeeCodeAlreadyLinkedMessage,
      ),
      findsOneWidget,
    );
  });

  testWidgets('a refused number stays in the field for correction', (
    tester,
  ) async {
    when(
      () => dao.addEmployeeCode(
        personId: mina.id,
        employeeCode: oldCode.employeeCode,
      ),
    ).thenThrow(
      FingerprintEmployeeCodeAlreadyLinkedException(
        employeeCode: oldCode.employeeCode,
        upstreamMessage: 'duplicate key',
      ),
    );
    await pumpSheetShowing(tester, Stream.value([oldCode]));

    await submitEmployeeCode(tester, oldCode.employeeCode);

    final field = tester.widget<TextField>(
      find.byKey(PersonFingerprintIdsSheetKeys.employeeCodeField),
    );
    expect(field.controller?.text, oldCode.employeeCode);
  });

  testWidgets('an add that fails for another reason reports a failed save', (
    tester,
  ) async {
    when(
      () => dao.addEmployeeCode(
        personId: mina.id,
        employeeCode: newCode.employeeCode,
      ),
    ).thenThrow(Exception('offline'));
    await pumpSheetShowing(tester, Stream.value([oldCode]));

    await submitEmployeeCode(tester, newCode.employeeCode);

    expect(
      find.byKey(PersonFingerprintIdsSheetKeys.writeFailedMessage),
      findsOneWidget,
    );
  });

  testWidgets('correcting the number dismisses the refusal', (tester) async {
    when(
      () => dao.addEmployeeCode(
        personId: mina.id,
        employeeCode: oldCode.employeeCode,
      ),
    ).thenThrow(
      FingerprintEmployeeCodeAlreadyLinkedException(
        employeeCode: oldCode.employeeCode,
        upstreamMessage: 'duplicate key',
      ),
    );
    await pumpSheetShowing(tester, Stream.value([oldCode]));
    await submitEmployeeCode(tester, oldCode.employeeCode);

    await tester.enterText(
      find.byKey(PersonFingerprintIdsSheetKeys.employeeCodeField),
      newCode.employeeCode,
    );
    await tester.pump();

    expect(
      find.byKey(
        PersonFingerprintIdsSheetKeys.employeeCodeAlreadyLinkedMessage,
      ),
      findsNothing,
    );
  });

  testWidgets('a blank number cannot be added', (tester) async {
    await pumpSheetShowing(tester, Stream.value([oldCode]));

    await submitEmployeeCode(tester, '   ');

    verifyNever(
      () => dao.addEmployeeCode(
        personId: any(named: 'personId'),
        employeeCode: any(named: 'employeeCode'),
      ),
    );
  });

  testWidgets('removing a number asks for confirmation first', (tester) async {
    await pumpSheetShowing(tester, Stream.value([oldCode, newCode]));

    await tester.tap(
      find.byKey(PersonFingerprintIdTileKeys.removeButtonFor(oldCode.id)),
    );
    await tester.pumpAndSettle();

    expect(find.byKey(ConfirmationDialogKeys.confirmButton), findsOneWidget);
    verifyNever(() => dao.remove(any()));
  });

  testWidgets('confirming the removal removes only that number', (
    tester,
  ) async {
    await pumpSheetShowing(tester, Stream.value([oldCode, newCode]));
    await tester.tap(
      find.byKey(PersonFingerprintIdTileKeys.removeButtonFor(oldCode.id)),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(ConfirmationDialogKeys.confirmButton));
    await tester.pumpAndSettle();

    verify(() => dao.remove(oldCode.id));
    verifyNever(() => dao.remove(newCode.id));
  });

  testWidgets('cancelling the removal keeps the number', (tester) async {
    await pumpSheetShowing(tester, Stream.value([oldCode, newCode]));
    await tester.tap(
      find.byKey(PersonFingerprintIdTileKeys.removeButtonFor(oldCode.id)),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(ConfirmationDialogKeys.cancelButton));
    await tester.pumpAndSettle();

    verifyNever(() => dao.remove(any()));
  });
}
