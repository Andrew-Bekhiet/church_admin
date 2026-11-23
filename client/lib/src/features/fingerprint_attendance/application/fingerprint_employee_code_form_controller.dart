import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';

class FingerprintEmployeeCodeFormController extends AdvancedFormController {
  final Future<void> Function(String employeeCode) _addEmployeeCode;

  final employeeCode =
      AdvancedTextFieldController<FingerprintEmployeeCodeError>(
        validator: filled(FingerprintEmployeeCodeError.blank),
      );

  bool get isBlank => _trimmedEmployeeCode.isEmpty;

  String get _trimmedEmployeeCode => employeeCode.fieldValue.trim();

  FingerprintEmployeeCodeFormController({required this._addEmployeeCode})
    : super(debugName: 'fingerprint employee code') {
    registerFields([employeeCode]);
  }

  Future<void> submitIfValid() async {
    if (!await validate()) return;

    await _addEmployeeCode(_trimmedEmployeeCode);
  }

  void lockWhileWritingAndShowOutcomeOf(FingerprintIdsWrite write) {
    switch (write) {
      case FingerprintIdsWriteInProgress():
        markReadOnly();

      case FingerprintEmployeeCodeAdded():
        unmarkReadOnly();
        employeeCode.reset();

      case FingerprintIdsWriteFailed(
        error: FingerprintEmployeeCodeAlreadyLinkedException(),
      ):
        unmarkReadOnly();
        employeeCode.setError(FingerprintEmployeeCodeError.alreadyLinked);

      case FingerprintIdsWriteFailed():
        unmarkReadOnly();
        employeeCode.setError(FingerprintEmployeeCodeError.changeNotSaved);

      case NoFingerprintIdsWrite() || FingerprintIdRemoved():
        unmarkReadOnly();
    }
  }
}
