import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';

class PhoneContactRowFormController extends AdvancedFormController {
  final String key;
  final FamilyPhoneContact? savedRelative;

  final PhoneNumberService _phones;
  final bool Function(PhoneContactRowFormController) _isDuplicate;
  final bool Function() _canHaveFamilyNumbers;
  final String _initialInput;

  late final phone = AdvancedTextFieldController<PhoneContactError>(
    initialValue: _initialInput,
    validator: _phoneError,
  );
  final AdvancedFieldController<PhoneContactLabel, PhoneContactError> label;
  final AdvancedBooleanFieldController<PhoneContactError> isMainPhone;

  String? get e164 => _phones.toE164(phone.fieldValue);

  bool get canBeMain => label.fieldValue is FreePhoneContactLabel;

  String? get _roleId => switch (label.fieldValue) {
    FreePhoneContactLabel() => null,
    RolePhoneContactLabel(:final role) => role.id,
  };

  PhoneContactRowFormController({
    required this.key,
    required this._initialInput,
    required PhoneContactLabel initialLabel,
    required bool initialIsMainPhone,
    required this._phones,
    required this._isDuplicate,
    required this._canHaveFamilyNumbers,
    this.savedRelative,
  }) : label = AdvancedFieldController(initialValue: initialLabel),
       isMainPhone = AdvancedBooleanFieldController(
         initialValue: initialIsMainPhone,
       ),
       super(debugName: 'phone $key') {
    registerFields([phone, label, isMainPhone]);
  }

  bool isSameNumberAs(PhoneContactRowFormController other) =>
      e164 == other.e164 && _roleId == other._roleId;

  PhoneContactError? _phoneError(String input) {
    if (input.trim().isEmpty) return null;
    if (_phones.toE164(input) == null) return PhoneContactError.invalidPhone;
    if (label.fieldValue is RolePhoneContactLabel && !_canHaveFamilyNumbers()) {
      return PhoneContactError.roleNeedsFamily;
    }
    if (_isDuplicate(this)) return PhoneContactError.duplicatePhone;

    return null;
  }
}
