import 'package:church_admin/church_admin.dart';

abstract final class AddressFieldValidators {
  static final RegExp _nonEnglishDigit = RegExp('[\u0660-\u0669\u06F0-\u06F9]');

  static AddressFieldError? englishDigitsOnly(String value) =>
      _nonEnglishDigit.hasMatch(value)
      ? AddressFieldError.nonEnglishDigits
      : null;

  static AddressFieldError? wholeNumber(String value) => switch (value) {
    _ when _nonEnglishDigit.hasMatch(value) =>
      AddressFieldError.nonEnglishDigits,
    _ when value.isNotEmpty && int.tryParse(value) == null =>
      AddressFieldError.invalidNumber,
    _ => null,
  };
}
