import 'dart:async';

import 'package:church_admin/church_admin.dart';
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
    when(
      () => dao.addEmployeeCode(
        personId: any(named: 'personId'),
        employeeCode: any(named: 'employeeCode'),
      ),
    ).thenAnswer((_) async {});
  });

  Future<void> pumpSheetShowing(
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
    await tester.pumpAndSettle();
  }

  Future<void> submitEmployeeCode(WidgetTester tester, String code) async {
    await tester.enterText(
      find.byKey(PersonFingerprintIdsSheetKeys.employeeCodeField),
      code,
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(PersonFingerprintIdsSheetKeys.addButton));
    await tester.pumpAndSettle();
  }

  TextField employeeCodeTextField(WidgetTester tester) => tester.widget(
    find.descendant(
      of: find.byKey(PersonFingerprintIdsSheetKeys.employeeCodeField),
      matching: find.byType(TextField),
    ),
  );

  testWidgets('adding a number links the typed code to the person', (
    tester,
  ) async {
    await pumpSheetShowing(tester, Stream.value([oldFingerprintId]));

    await submitEmployeeCode(tester, newFingerprintId.employeeCode);

    verify(
      () => dao.addEmployeeCode(
        personId: person.id,
        employeeCode: newFingerprintId.employeeCode,
      ),
    );
  });

  testWidgets('the field empties once the number is added', (tester) async {
    await pumpSheetShowing(tester, Stream.value([oldFingerprintId]));

    await submitEmployeeCode(tester, newFingerprintId.employeeCode);

    expect(employeeCodeTextField(tester).controller?.text, isEmpty);
  });

  testWidgets('a number that is already linked is refused beside the field', (
    tester,
  ) async {
    when(
      () => dao.addEmployeeCode(
        personId: person.id,
        employeeCode: oldFingerprintId.employeeCode,
      ),
    ).thenThrow(
      FingerprintEmployeeCodeAlreadyLinkedException(
        employeeCode: oldFingerprintId.employeeCode,
        upstreamMessage: 'duplicate key',
      ),
    );
    await pumpSheetShowing(tester, Stream.value([oldFingerprintId]));

    await submitEmployeeCode(tester, oldFingerprintId.employeeCode);

    expect(
      employeeCodeTextField(tester).decoration?.errorText,
      FingerprintEmployeeCodeError.alreadyLinked.message,
    );
  });

  testWidgets('a refused number stays in the field for correction', (
    tester,
  ) async {
    when(
      () => dao.addEmployeeCode(
        personId: person.id,
        employeeCode: oldFingerprintId.employeeCode,
      ),
    ).thenThrow(
      FingerprintEmployeeCodeAlreadyLinkedException(
        employeeCode: oldFingerprintId.employeeCode,
        upstreamMessage: 'duplicate key',
      ),
    );
    await pumpSheetShowing(tester, Stream.value([oldFingerprintId]));

    await submitEmployeeCode(tester, oldFingerprintId.employeeCode);

    expect(
      employeeCodeTextField(tester).controller?.text,
      oldFingerprintId.employeeCode,
    );
  });

  testWidgets('an add that fails for another reason reports a failed save', (
    tester,
  ) async {
    when(
      () => dao.addEmployeeCode(
        personId: person.id,
        employeeCode: newFingerprintId.employeeCode,
      ),
    ).thenThrow(Exception('offline'));
    await pumpSheetShowing(tester, Stream.value([oldFingerprintId]));

    await submitEmployeeCode(tester, newFingerprintId.employeeCode);

    expect(
      employeeCodeTextField(tester).decoration?.errorText,
      FingerprintEmployeeCodeError.changeNotSaved.message,
    );
  });

  testWidgets('correcting the number dismisses the refusal', (tester) async {
    when(
      () => dao.addEmployeeCode(
        personId: person.id,
        employeeCode: oldFingerprintId.employeeCode,
      ),
    ).thenThrow(
      FingerprintEmployeeCodeAlreadyLinkedException(
        employeeCode: oldFingerprintId.employeeCode,
        upstreamMessage: 'duplicate key',
      ),
    );
    await pumpSheetShowing(tester, Stream.value([oldFingerprintId]));
    await submitEmployeeCode(tester, oldFingerprintId.employeeCode);

    await tester.enterText(
      find.byKey(PersonFingerprintIdsSheetKeys.employeeCodeField),
      newFingerprintId.employeeCode,
    );
    await tester.pumpAndSettle();

    expect(employeeCodeTextField(tester).decoration?.errorText, isNull);
  });

  testWidgets('a blank number cannot be added with the add button', (
    tester,
  ) async {
    await pumpSheetShowing(tester, Stream.value([oldFingerprintId]));

    await tester.enterText(
      find.byKey(PersonFingerprintIdsSheetKeys.employeeCodeField),
      '   ',
    );
    await tester.pumpAndSettle();

    final addButton = tester.widget<FilledButton>(
      find.byKey(PersonFingerprintIdsSheetKeys.addButton),
    );
    expect(addButton.enabled, isFalse);
  });

  testWidgets('a blank number submitted from the keyboard is refused beside '
      'the field', (tester) async {
    await pumpSheetShowing(tester, Stream.value([oldFingerprintId]));

    await tester.enterText(
      find.byKey(PersonFingerprintIdsSheetKeys.employeeCodeField),
      '   ',
    );
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();

    expect(
      employeeCodeTextField(tester).decoration?.errorText,
      FingerprintEmployeeCodeError.blank.message,
    );
  });

  testWidgets('a blank number submitted from the keyboard a second time is '
      'still refused beside the field', (tester) async {
    await pumpSheetShowing(tester, Stream.value([oldFingerprintId]));
    await tester.enterText(
      find.byKey(PersonFingerprintIdsSheetKeys.employeeCodeField),
      '   ',
    );
    await tester.testTextInput.receiveAction(TextInputAction.done);

    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();

    expect(
      employeeCodeTextField(tester).decoration?.errorText,
      FingerprintEmployeeCodeError.blank.message,
    );
  });

  testWidgets('the add button waits while a number is being saved', (
    tester,
  ) async {
    final save = Completer<void>();
    addTearDown(save.complete);
    when(
      () => dao.addEmployeeCode(
        personId: person.id,
        employeeCode: newFingerprintId.employeeCode,
      ),
    ).thenAnswer((_) => save.future);
    await pumpSheetShowing(tester, Stream.value([oldFingerprintId]));
    await tester.enterText(
      find.byKey(PersonFingerprintIdsSheetKeys.employeeCodeField),
      newFingerprintId.employeeCode,
    );
    await tester.pump();

    await tester.tap(find.byKey(PersonFingerprintIdsSheetKeys.addButton));
    await tester.pump();
    await tester.pump();

    final addButton = tester.widget<FilledButton>(
      find.byKey(PersonFingerprintIdsSheetKeys.addButton),
    );
    expect(addButton.enabled, isFalse);
  });

  testWidgets('the number field asks for a plain text keyboard that neither '
      'autocorrects nor suggests', (tester) async {
    await pumpSheetShowing(tester, Stream.value([oldFingerprintId]));

    expect(
      employeeCodeTextField(tester),
      isA<TextField>()
          .having(
            (field) => field.keyboardType,
            'keyboardType',
            TextInputType.text,
          )
          .having((field) => field.autocorrect, 'autocorrect', isFalse)
          .having(
            (field) => field.enableSuggestions,
            'enableSuggestions',
            isFalse,
          ),
    );
  });
}
