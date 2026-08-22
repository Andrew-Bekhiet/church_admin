// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Address {
  String? get id;
  Area? get area;
  String get countryIsoCode;
  int? get houseNumber;
  Street? get street;
  String? get substreetName;
  District? get district;
  String? get specialLandmark;
  int? get storeyNumber;
  int? get apartmentNumber;
  String? get fullAddressText;
  Point? get geolocation;
  Family? get family;
  Store? get store;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressCopyWith<Address> get copyWith =>
      _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Address &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.countryIsoCode, countryIsoCode) ||
                other.countryIsoCode == countryIsoCode) &&
            (identical(other.houseNumber, houseNumber) ||
                other.houseNumber == houseNumber) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.substreetName, substreetName) ||
                other.substreetName == substreetName) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.specialLandmark, specialLandmark) ||
                other.specialLandmark == specialLandmark) &&
            (identical(other.storeyNumber, storeyNumber) ||
                other.storeyNumber == storeyNumber) &&
            (identical(other.apartmentNumber, apartmentNumber) ||
                other.apartmentNumber == apartmentNumber) &&
            (identical(other.fullAddressText, fullAddressText) ||
                other.fullAddressText == fullAddressText) &&
            (identical(other.geolocation, geolocation) ||
                other.geolocation == geolocation) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.store, store) || other.store == store));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    area,
    countryIsoCode,
    houseNumber,
    street,
    substreetName,
    district,
    specialLandmark,
    storeyNumber,
    apartmentNumber,
    fullAddressText,
    geolocation,
    family,
    store,
  );
}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) =
      _$AddressCopyWithImpl;
  @useResult
  $Res call({
    String countryIsoCode,
    String? id,
    Area? area,
    int? houseNumber,
    Street? street,
    String? substreetName,
    District? district,
    String? specialLandmark,
    int? storeyNumber,
    int? apartmentNumber,
    String? fullAddressText,
    Point? geolocation,
    Family? family,
    Store? store,
  });
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryIsoCode = null,
    Object? id = freezed,
    Object? area = freezed,
    Object? houseNumber = freezed,
    Object? street = freezed,
    Object? substreetName = freezed,
    Object? district = freezed,
    Object? specialLandmark = freezed,
    Object? storeyNumber = freezed,
    Object? apartmentNumber = freezed,
    Object? fullAddressText = freezed,
    Object? geolocation = freezed,
    Object? family = freezed,
    Object? store = freezed,
  }) {
    return _then(
      Address(
        countryIsoCode: null == countryIsoCode
            ? _self.countryIsoCode
            : countryIsoCode // ignore: cast_nullable_to_non_nullable
                  as String,
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        area: freezed == area
            ? _self.area
            : area // ignore: cast_nullable_to_non_nullable
                  as Area?,
        houseNumber: freezed == houseNumber
            ? _self.houseNumber
            : houseNumber // ignore: cast_nullable_to_non_nullable
                  as int?,
        street: freezed == street
            ? _self.street
            : street // ignore: cast_nullable_to_non_nullable
                  as Street?,
        substreetName: freezed == substreetName
            ? _self.substreetName
            : substreetName // ignore: cast_nullable_to_non_nullable
                  as String?,
        district: freezed == district
            ? _self.district
            : district // ignore: cast_nullable_to_non_nullable
                  as District?,
        specialLandmark: freezed == specialLandmark
            ? _self.specialLandmark
            : specialLandmark // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeyNumber: freezed == storeyNumber
            ? _self.storeyNumber
            : storeyNumber // ignore: cast_nullable_to_non_nullable
                  as int?,
        apartmentNumber: freezed == apartmentNumber
            ? _self.apartmentNumber
            : apartmentNumber // ignore: cast_nullable_to_non_nullable
                  as int?,
        fullAddressText: freezed == fullAddressText
            ? _self.fullAddressText
            : fullAddressText // ignore: cast_nullable_to_non_nullable
                  as String?,
        geolocation: freezed == geolocation
            ? _self.geolocation
            : geolocation // ignore: cast_nullable_to_non_nullable
                  as Point?,
        family: freezed == family
            ? _self.family
            : family // ignore: cast_nullable_to_non_nullable
                  as Family?,
        store: freezed == store
            ? _self.store
            : store // ignore: cast_nullable_to_non_nullable
                  as Store?,
      ),
    );
  }
}
