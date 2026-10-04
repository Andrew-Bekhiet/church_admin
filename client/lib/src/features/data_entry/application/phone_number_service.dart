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

  bool validate(String phone) => PhoneNumber.parse(
    phone,
    destinationCountry:
        PhoneNumber.findPotentialPhoneNumbers(phone).singleOrNull == null
        ? IsoCode.EG
        : null,
  ).isValid();

  String format(String phone) => PhoneNumber.parse(
    phone,
    destinationCountry:
        PhoneNumber.findPotentialPhoneNumbers(phone).singleOrNull == null
        ? IsoCode.EG
        : null,
  ).nsn;

  String formatInternational(String phone) => PhoneNumber.parse(
    phone,
    destinationCountry:
        PhoneNumber.findPotentialPhoneNumbers(phone).singleOrNull == null
        ? IsoCode.EG
        : null,
  ).international;

  String? toE164(String phone) => switch (_parse(phone)) {
    final parsed when parsed.isValid() => parsed.international,
    _ => null,
  };

  String toDisplay(String e164) => switch (PhoneNumber.parse(e164)) {
    PhoneNumber(isoCode: IsoCode.EG, :final nsn) => '0$nsn',
    final parsed => parsed.international,
  };

  PhoneNumber _parse(String phone) => PhoneNumber.parse(
    phone,
    destinationCountry:
        PhoneNumber.findPotentialPhoneNumbers(phone).singleOrNull == null
        ? IsoCode.EG
        : null,
  );
}
