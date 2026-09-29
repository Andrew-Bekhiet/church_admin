import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

class PhoneNumberService {
  static PhoneNumberService get I =>
      globalProviderContainer.read(phoneNumberServiceProvider);

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

  String? toE164(String input) {
    final phone = _parse(input);

    return phone.isValid() ? phone.international : null;
  }

  String display(String e164) {
    final phone = _parse(e164);
    if (!phone.isValid()) return e164;

    return phone.isoCode == IsoCode.EG ? '0${phone.nsn}' : phone.international;
  }

  PhoneNumber _parse(String input) => PhoneNumber.parse(
    input,
    destinationCountry: input.trimLeft().startsWith('+') ? null : IsoCode.EG,
  );
}
