import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'العنوان')
class Address with _$Address implements ToJson {
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

  @QueryableField.self(codeOnly: true, orderable: false)
  final String? id;

  @QueryableField(label: 'المنطقة')
  final Area? area;

  final String countryIsoCode;

  @QueryableField(label: 'رقم العمارة')
  final String? houseCode;

  @QueryableField(label: 'الشارع')
  final Street? street;

  @QueryableField(label: 'الشارع الفرعي')
  final String? substreetName;

  @QueryableField(label: 'الحي')
  final District? district;

  @QueryableField(label: 'علامة مميزة')
  final String? specialLandmark;

  @QueryableField(label: 'رقم الدور')
  final int? storeyNumber;

  @QueryableField(label: 'رقم الشقة')
  final int? apartmentNumber;

  @QueryableField(label: 'العنوان الكامل')
  final String? fullAddressText;

  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  @QueryableField(label: 'الموقع')
  final Point? geolocation;

  @QueryableField(label: 'العائلة')
  final Family? family;

  @QueryableField(label: 'المتجر')
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
      geolocation: Point.tryParse(data['lat'], data['lon']),
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

  @override
  Json toJson() => _$AddressToJson(this);

  @override
  String toString() {
    if (fullAddressText case final fullAddressText?
        when fullAddressText.isNotEmpty) {
      return fullAddressText;
    }

    return textComposedFromParts;
  }

  Input_AddressInput toAddressInput() => Input_AddressInput.fromJson({
    'areaId': area?.id,
    'streetId': street?.id,
    'districtId': district?.id,
    'countryIsoCode': countryIsoCode,
    'substreetName': substreetName,
    'geolocation': geolocation?.toPostGISJson(),
    'storeyNumber': storeyNumber,
    'houseCode': houseCode,
    'apartmentNumber': apartmentNumber,
    'specialLandmark': specialLandmark,
  });
}
