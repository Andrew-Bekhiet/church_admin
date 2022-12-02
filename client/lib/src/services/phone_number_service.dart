import 'package:collection/collection.dart';
import 'package:get_it/get_it.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

class PhoneNumberService {
  static PhoneNumberService get I => GetIt.I<PhoneNumberService>();

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
}
