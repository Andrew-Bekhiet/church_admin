import 'package:church_admin/church_admin.dart';

mixin AddressDetailFields {
  FieldMetadata<Address> get address;

  FieldMetadata<Area> get area =>
      address.redirectTo(AddressFields().area, isExpandable: false);

  FieldMetadata<Street> get street =>
      address.redirectTo(AddressFields().street, isExpandable: false);

  FieldMetadata<District> get district =>
      address.redirectTo(AddressFields().district, isExpandable: false);

  FieldMetadata<String> get fullAddressText =>
      address.redirectTo(AddressFields().fullAddressText, isExpandable: false);

  List<FieldMetadata<Object>> withAddressDetailFields(
    List<FieldMetadata<Object>> fields,
  ) => [...fields, fullAddressText, area, street, district];

  Map<String, FieldMetadata<Object>> withAddressDetailFieldsByName(
    Map<String, FieldMetadata<Object>> fieldsByName,
  ) => {
    ...fieldsByName,
    fullAddressText.name: fullAddressText,
    area.name: area,
    street.name: street,
    district.name: district,
  };
}
