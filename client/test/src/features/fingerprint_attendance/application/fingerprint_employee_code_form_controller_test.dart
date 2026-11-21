import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

abstract class _AddEmployeeCode {
  Future<void> call(String employeeCode);
}

class _MockAddEmployeeCode extends Mock implements _AddEmployeeCode {}

void main() {
  const typedCode = '1042';

  late _MockAddEmployeeCode addEmployeeCode;

  FingerprintEmployeeCodeFormController formWithTyped(String input) {
    final form = FingerprintEmployeeCodeFormController(
      addEmployeeCode: addEmployeeCode.call,
    );
    addTearDown(form.dispose);
    form.employeeCode.textController.text = input;

    return form;
  }

  setUp(() {
    addEmployeeCode = _MockAddEmployeeCode();
    when(() => addEmployeeCode(any())).thenAnswer((_) async {});
  });

  test('a typed code is submitted without the spaces around it', () async {
    final form = formWithTyped(' $typedCode ');

    await form.submitIfValid();

    verify(() => addEmployeeCode(typedCode));
  });

  test('a code made only of spaces counts as blank', () {
    final form = formWithTyped('   ');

    expect(form.isBlank, isTrue);
  });

  test('a typed code does not count as blank', () {
    final form = formWithTyped(typedCode);

    expect(form.isBlank, isFalse);
  });

  test('a blank code is refused on the field', () async {
    final form = formWithTyped('   ');

    await form.submitIfValid();

    expect(form.employeeCode.error, FingerprintEmployeeCodeError.blank);
  });

  test('a blank code submitted again is still refused', () async {
    final form = formWithTyped('   ');
    await form.submitIfValid();

    await form.submitIfValid();

    expect(form.employeeCode.error, FingerprintEmployeeCodeError.blank);
  });

  test('a blank code is not submitted', () async {
    final form = formWithTyped('   ');

    await form.submitIfValid();

    verifyNever(() => addEmployeeCode(any()));
  });

  test('the field empties once the code is added', () {
    final form = formWithTyped(typedCode)
      ..lockWhileWritingAndShowOutcomeOf(
        const FingerprintEmployeeCodeAdded(typedCode),
      );

    expect(form.employeeCode.fieldValue, isEmpty);
  });

  test('a code already linked to someone is refused on the field', () {
    final form = formWithTyped(typedCode)
      ..lockWhileWritingAndShowOutcomeOf(
        const FingerprintIdsWriteFailed(
          FingerprintEmployeeCodeAlreadyLinkedException(
            employeeCode: typedCode,
            upstreamMessage: 'duplicate key',
          ),
        ),
      );

    expect(form.employeeCode.error, FingerprintEmployeeCodeError.alreadyLinked);
  });

  test('a refused code stays in the field for correction', () {
    final form = formWithTyped(typedCode)
      ..lockWhileWritingAndShowOutcomeOf(
        const FingerprintIdsWriteFailed(
          FingerprintEmployeeCodeAlreadyLinkedException(
            employeeCode: typedCode,
            upstreamMessage: 'duplicate key',
          ),
        ),
      );

    expect(form.employeeCode.fieldValue, typedCode);
  });

  test('a write that fails for another reason is reported as not saved', () {
    final form = formWithTyped(typedCode)
      ..lockWhileWritingAndShowOutcomeOf(
        FingerprintIdsWriteFailed(Exception('offline')),
      );

    expect(
      form.employeeCode.error,
      FingerprintEmployeeCodeError.changeNotSaved,
    );
  });

  test('correcting a refused code dismisses the refusal', () {
    final form = formWithTyped(typedCode)
      ..lockWhileWritingAndShowOutcomeOf(
        FingerprintIdsWriteFailed(Exception('offline')),
      );

    form.employeeCode.textController.text = '2077';

    expect(form.employeeCode.error, isNull);
  });

  test('the field cannot be edited while a write is in progress', () {
    final form = formWithTyped(typedCode)
      ..lockWhileWritingAndShowOutcomeOf(
        const FingerprintIdsWriteInProgress(),
      );

    expect(form.employeeCode.value.readOnly, isTrue);
  });

  test('the field can be edited again once the write fails', () {
    final form = formWithTyped(typedCode)
      ..lockWhileWritingAndShowOutcomeOf(
        const FingerprintIdsWriteInProgress(),
      )
      ..lockWhileWritingAndShowOutcomeOf(
        FingerprintIdsWriteFailed(Exception('offline')),
      );

    expect(form.employeeCode.value.readOnly, isFalse);
  });

  test('a typed code survives the removal of another fingerprint number', () {
    final form = formWithTyped(typedCode)
      ..lockWhileWritingAndShowOutcomeOf(
        const FingerprintIdsWriteInProgress(),
      )
      ..lockWhileWritingAndShowOutcomeOf(const FingerprintIdRemoved('hall'));

    expect(form.employeeCode.fieldValue, typedCode);
  });
}
