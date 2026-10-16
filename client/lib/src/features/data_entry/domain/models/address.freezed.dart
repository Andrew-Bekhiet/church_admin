// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Address {
  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressCopyWith<Address> get copyWith =>
      _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Address;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Address &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.area, _this.area) || other.area == _this.area) &&
            (identical(other.countryIsoCode, _this.countryIsoCode) ||
                other.countryIsoCode == _this.countryIsoCode) &&
            (identical(other.houseCode, _this.houseCode) ||
                other.houseCode == _this.houseCode) &&
            (identical(other.street, _this.street) ||
                other.street == _this.street) &&
            (identical(other.substreetName, _this.substreetName) ||
                other.substreetName == _this.substreetName) &&
            (identical(other.district, _this.district) ||
                other.district == _this.district) &&
            (identical(other.specialLandmark, _this.specialLandmark) ||
                other.specialLandmark == _this.specialLandmark) &&
            (identical(other.storeyNumber, _this.storeyNumber) ||
                other.storeyNumber == _this.storeyNumber) &&
            (identical(other.apartmentNumber, _this.apartmentNumber) ||
                other.apartmentNumber == _this.apartmentNumber) &&
            (identical(other.fullAddressText, _this.fullAddressText) ||
                other.fullAddressText == _this.fullAddressText) &&
            (identical(other.geolocation, _this.geolocation) ||
                other.geolocation == _this.geolocation) &&
            (identical(other.family, _this.family) ||
                other.family == _this.family) &&
            (identical(other.store, _this.store) ||
                other.store == _this.store));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Address;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.area,
      _this.countryIsoCode,
      _this.houseCode,
      _this.street,
      _this.substreetName,
      _this.district,
      _this.specialLandmark,
      _this.storeyNumber,
      _this.apartmentNumber,
      _this.fullAddressText,
      _this.geolocation,
      _this.family,
      _this.store,
    );
  }
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
    String? houseCode,
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

  $AreaCopyWith<$Res>? get area;
  $StreetCopyWith<$Res>? get street;
  $DistrictCopyWith<$Res>? get district;
  $FamilyCopyWith<$Res>? get family;
  $StoreCopyWith<$Res>? get store;
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
    Object? houseCode = freezed,
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
        houseCode: freezed == houseCode
            ? _self.houseCode
            : houseCode // ignore: cast_nullable_to_non_nullable
                  as String?,
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

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res>? get area {
    if (_self.area == null) {
      return null;
    }

    return $AreaCopyWith<$Res>(_self.area!, (value) {
      return _then(_self.copyWith(area: value));
    });
  }

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreetCopyWith<$Res>? get street {
    if (_self.street == null) {
      return null;
    }

    return $StreetCopyWith<$Res>(_self.street!, (value) {
      return _then(_self.copyWith(street: value));
    });
  }

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistrictCopyWith<$Res>? get district {
    if (_self.district == null) {
      return null;
    }

    return $DistrictCopyWith<$Res>(_self.district!, (value) {
      return _then(_self.copyWith(district: value));
    });
  }

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FamilyCopyWith<$Res>? get family {
    if (_self.family == null) {
      return null;
    }

    return $FamilyCopyWith<$Res>(_self.family!, (value) {
      return _then(_self.copyWith(family: value));
    });
  }

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
      return null;
    }

    return $StoreCopyWith<$Res>(_self.store!, (value) {
      return _then(_self.copyWith(store: value));
    });
  }
}
