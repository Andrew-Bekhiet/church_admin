import 'package:church_admin/church_admin.dart';

enum AddressPlacePart implements LabeledEnum {
  district('الحي'),
  area('المنطقة'),
  street('الشارع'),
  substreet('الشارع الفرعي'),
  houseCode('رقم العمارة');

  static Set<AddressPlacePart> changedBetween(
    Address previous,
    Address current,
  ) => {
    for (final part in values)
      if (part._valueIn(previous) != part._valueIn(current)) part,
  };

  @override
  final String label;

  const AddressPlacePart(this.label);

  Object? _valueIn(Address address) => switch (this) {
    district => address.district?.id,
    area => address.area?.id,
    street => address.street?.id,
    substreet => address.substreetName,
    houseCode => address.houseCode,
  };
}
