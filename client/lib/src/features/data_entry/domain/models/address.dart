import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
@JsonSerializable()
@Queryable(
  classLabel: 'العنوان',
  ignoreFields: [
    'id',
    'countryIsoCode',
    'textComposedFromParts',
    'houseCodeMaxLength',
  ],
  allowExtension: true,
)
class Address with _$Address {
  static const int houseCodeMaxLength = 5;

  static String? _streetNameWithoutPrefix(String? name) =>
      _withoutPrefix(name, RegExp('شارع|الشارع'));

  static String? _districtNameWithoutPrefix(String? name) =>
      _withoutPrefix(name, RegExp('حي|الحي|حى|الحى'));

  static String? _withoutPrefix(String? name, RegExp prefix) {
    if (name == null) return null;

    final strippedName = name.replaceAll(prefix, '').trim();

    return strippedName.isEmpty ? null : strippedName;
  }

  @override
  final String? id;

  @override
  final Area? area;

  @override
  final String countryIsoCode;

  @override
  final String? houseCode;

  @override
  final Street? street;

  @override
  final String? substreetName;

  @override
  final District? district;

  @override
  final String? specialLandmark;

  @override
  final int? storeyNumber;

  @override
  final int? apartmentNumber;

  @override
  final String? fullAddressText;

  @override
  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  final Point? geolocation;

  @override
  final Family? family;

  @override
  final Store? store;

  String get textComposedFromParts => [
    ?houseCode,
    if (_streetNameWithoutPrefix(street?.name) case final streetName?)
      'ش $streetName',
    if (_streetNameWithoutPrefix(substreetName) case final substreetName?)
      'متفرع من $substreetName',
    if (_districtNameWithoutPrefix(district?.name) case final districtName?)
      'حي $districtName',
    ?specialLandmark,
    if (storeyNumber == 0)
      'الدور الأرضي'
    else if (storeyNumber case final storeyNumber?)
      'الدور $storeyNumber',
    if (apartmentNumber case final apartmentNumber?) 'شقة $apartmentNumber',
  ].join(' ').trim();

  const Address({
    this.countryIsoCode = 'EG',
    this.id,
    this.area,
    this.houseCode,
    this.street,
    this.substreetName,
    this.district,
    this.specialLandmark,
    this.storeyNumber,
    this.apartmentNumber,
    this.fullAddressText,
    this.geolocation,
    this.family,
    this.store,
  });

  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);

  factory Address.fromNominatimResponse(Map<String, Object?> data) {
    final addressData = data['address']! as Map<String, Object?>;

    final double? lat = double.tryParse(data['lat'] as String? ?? '');
    final double? lon = double.tryParse(data['lon'] as String? ?? '');

    final String? houseCode = switch ((addressData['house_number'] as String?)
        ?.trim()) {
      final houseNumber?
          when houseNumber.isNotEmpty &&
              houseNumber.length <= houseCodeMaxLength =>
        houseNumber,
      _ => null,
    };
    final String? streetName = addressData['road'] as String?;
    final String? districtName =
        addressData['neighbourhood'] as String? ??
        addressData['allotments'] as String? ??
        addressData['quarter'] as String? ??
        addressData['suburb'] as String? ??
        addressData['district'] as String? ??
        addressData['city_district'] as String?;
    final String? countryCode = addressData['country_code']
        ?.toString()
        .toUpperCase();

    return Address(
      geolocation: lat != null && lon != null ? Point(lat, lon) : null,
      houseCode: houseCode,
      street: streetName != null
          ? Street(id: Namespace.nil.value, name: streetName.trim())
          : null,
      district: districtName != null
          ? District(id: Namespace.nil.value, name: districtName.trim())
          : null,
      countryIsoCode: countryCode ?? 'EG',
    );
  }

  Json toJson() => _$AddressToJson(this);

  @override
  String toString() {
    if (fullAddressText case final fullAddressText?
        when fullAddressText.isNotEmpty) {
      return fullAddressText;
    }

    return textComposedFromParts;
  }

  Input_AddressesInsertInput toInsertInput() {
    return Input_AddressesInsertInput(
      countryIsoCode: countryIsoCode,
      districtId: district?.id.toUuid(),
      areaId: area?.id.toUuid(),
      streetId: street?.id.toUuid(),
      substreetName: substreetName,
      geolocation: geolocation?.toPostGISJson(),
      storeyNumber: storeyNumber,
      houseCode: houseCode,
      apartmentNumber: apartmentNumber,
      specialLandmark: specialLandmark,
      familyId: family?.id.toUuid(),
      storeId: store?.id.toUuid(),
    );
  }

  Input_AddressesSetInput toUpdateInput(Address old) {
    Input_AddressesSetInput result = Input_AddressesSetInput();

    if (old.countryIsoCode != countryIsoCode) {
      result = result.copyWith(countryIsoCode: countryIsoCode);
    }

    if (old.district?.id != district?.id) {
      result = result.copyWith(districtId: district?.id.toUuid());
    }

    if (old.area?.id != area?.id) {
      result = result.copyWith(areaId: area?.id.toUuid());
    }

    if (old.street?.id != street?.id) {
      result = result.copyWith(streetId: street?.id.toUuid());
    }

    if (old.substreetName != substreetName) {
      result = result.copyWith(substreetName: substreetName);
    }

    if (old.geolocation != geolocation) {
      result = result.copyWith(geolocation: geolocation?.toPostGISJson());
    }

    if (old.storeyNumber != storeyNumber) {
      result = result.copyWith(storeyNumber: storeyNumber);
    }

    if (old.houseCode != houseCode) {
      result = result.copyWith(houseCode: houseCode);
    }

    if (old.apartmentNumber != apartmentNumber) {
      result = result.copyWith(apartmentNumber: apartmentNumber);
    }

    if (old.specialLandmark != specialLandmark) {
      result = result.copyWith(specialLandmark: specialLandmark);
    }

    if (old.family?.id != family?.id) {
      result = result.copyWith(familyId: family?.id.toUuid());
    }

    if (old.store?.id != store?.id) {
      result = result.copyWith(storeId: store?.id.toUuid());
    }

    return result;
  }
}

class AddressFields extends _AddressFields {
  FieldMetadata<Address> get id => FieldMetadata<Address>(
    parentType: Address,
    name: 'id',
    label: '=',
    isCodeOnly: true,
    isOrderable: false,
    getValue: (obj) => obj is Address ? obj.id : null,
  );

  @override
  List<FieldMetadata<Object>> get allFields => [id, ...super.allFields];

  @override
  Map<String, FieldMetadata<Object>> get allFieldsByName {
    return {
      id.name: id,
      ...super.allFieldsByName,
    };
  }

  AddressFields();
}
