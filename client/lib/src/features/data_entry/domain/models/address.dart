import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'العنوان', ignoreFields: ['id', 'countryIsoCode'])
class Address with _$Address {
  @override
  final String? id;
  @override
  final String countryIsoCode;
  @override
  final District? district;
  @override
  final Area? area;
  @override
  final Street? street;
  @override
  final String? substreetName;
  @override
  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  final Point? geolocation;
  @override
  final int? storeyNumber;
  @override
  final int? houseNumber;
  @override
  final int? apartmentNumber;
  @override
  final String? specialLandmark;
  @override
  final Family? family;
  @override
  final Store? store;

  const Address({
    this.id,
    this.countryIsoCode = 'EG',
    this.district,
    this.area,
    this.street,
    this.substreetName,
    this.geolocation,
    this.storeyNumber,
    this.houseNumber,
    this.apartmentNumber,
    this.specialLandmark,
    this.family,
    this.store,
  });

  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);

  Json toJson() => _$AddressToJson(this);

  factory Address.fromNominatimResponse(Map<String, Object?> data) {
    final addressData = data['address']! as Map<String, Object?>;

    final double? lat = double.tryParse(data['lat'] as String? ?? '');
    final double? lon = double.tryParse(data['lon'] as String? ?? '');

    final int? houseNumber = int.tryParse(
      addressData['house_number'] as String? ?? '',
    );
    final String? streetName = addressData['road'] as String?;
    final String? districtName = addressData['neighbourhood'] as String? ??
        addressData['allotments'] as String? ??
        addressData['quarter'] as String? ??
        addressData['suburb'] as String? ??
        addressData['district'] as String? ??
        addressData['city_district'] as String?;
    final String? countryCode =
        addressData['country_code']?.toString().toUpperCase();

    return Address(
      geolocation: lat != null && lon != null ? Point(lat, lon) : null,
      houseNumber: houseNumber,
      street: streetName != null
          ? Street(id: Namespace.nil.value, name: streetName.trim())
          : null,
      district: districtName != null
          ? District(id: Namespace.nil.value, name: districtName.trim())
          : null,
      countryIsoCode: countryCode ?? 'EG',
    );
  }

  @override
  String toString() {
    // 45 شارع النصر, متفرع من شارع التحرير, حي الزهور بجوار مستشفى السلام الدور الثاني شقة 5
    final StringBuffer buffer = StringBuffer();

    if (houseNumber != null) {
      buffer.write('$houseNumber ');
    }

    if (street != null) {
      buffer.write(
        'ش ${street!.name.replaceAll(RegExp('شارع|الشارع'), '').trim()} ',
      );
    }

    if (substreetName != null) {
      buffer.write(
        'متفرع من ${substreetName!.replaceAll(RegExp('شارع|الشارع'), '').trim()} ',
      );
    }

    if (district != null) {
      buffer.write(
        'حي ${district!.name.replaceAll(RegExp('حي|الحي|حى|الحى'), '').trim()} ',
      );
    }

    if (specialLandmark != null) {
      buffer.write('$specialLandmark ');
    }

    if (storeyNumber != null) {
      buffer.write('الدور $storeyNumber ');
    }

    if (apartmentNumber != null) {
      buffer.write('شقة $apartmentNumber ');
    }

    return buffer.toString().trim();
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
      houseNumber: houseNumber,
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

    if (old.houseNumber != houseNumber) {
      result = result.copyWith(houseNumber: houseNumber);
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
