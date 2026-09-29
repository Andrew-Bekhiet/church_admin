import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

class PhoneNumberService {
  static PhoneNumberService get I =>
      globalProviderContainer.read(phoneNumberServiceProvider);

  static String searchFragment(String typed) {
    final compact = typed.replaceAll(RegExp(r'[\s\-.()]'), '');

    return switch (compact) {
      final international when international.startsWith('+') => international,
      final prefixed when prefixed.startsWith('00') =>
        '+${prefixed.substring(2)}',
      final national when national.startsWith('0') => national.substring(1),
      final digits => digits,
    };
  }

  static bool matchesSearch(String typed, Iterable<String> storedPhones) {
    final fragment = searchFragment(typed);

    return fragment.isNotEmpty && storedPhones.any((p) => p.contains(fragment));
  }

  const PhoneNumberService();

  bool validate(String phone) => _parse(phone).isValid();

  String format(String phone) => _parse(phone).nsn;

  String formatInternational(String phone) => _parse(phone).international;

  String? toE164(String input) {
    final phone = _parse(input);

    return phone.isValid() ? phone.international : null;
  }

  String display(String e164) {
    final phone = _parse(e164);
    if (!phone.isValid()) return e164;

    return phone.isoCode == IsoCode.EG ? '0${phone.nsn}' : phone.international;
  }

  PhoneNumber _parse(String input) {
    final trimmed = input.trimLeft();
    final isInternational =
        (trimmed.startsWith('+') || trimmed.startsWith('00')) &&
        PhoneNumber.findPotentialPhoneNumbers(input).singleOrNull != null;

    return PhoneNumber.parse(
      input,
      destinationCountry: isInternational ? null : IsoCode.EG,
    );
  }
}
