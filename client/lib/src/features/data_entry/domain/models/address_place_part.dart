import 'package:church_admin/church_admin.dart';

enum AddressPlacePart {
  district,
  area,
  street,
  substreet,
  houseCode;

  static bool anyChangedBetween(Address previous, Address current) =>
      values.any((part) => part._valueIn(previous) != part._valueIn(current));

  Object? _valueIn(Address address) => switch (this) {
    district => address.district?.id,
    area => address.area?.id,
    street => address.street?.id,
    substreet => address.substreetName,
    houseCode => address.houseCode,
  };
}
