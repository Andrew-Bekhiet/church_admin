// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Address {
  String? get id;
  String get countryIsoCode;
  District? get district;
  Area? get area;
  Street? get street;
  String? get substreetName;
  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  Point? get geolocation;
  int? get storeyNumber;
  int? get houseNumber;
  int? get apartmentNumber;
  String? get specialLandmark;
  Family? get family;
  Store? get store;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressCopyWith<Address> get copyWith =>
      _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Address &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryIsoCode, countryIsoCode) ||
                other.countryIsoCode == countryIsoCode) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.substreetName, substreetName) ||
                other.substreetName == substreetName) &&
            (identical(other.geolocation, geolocation) ||
                other.geolocation == geolocation) &&
            (identical(other.storeyNumber, storeyNumber) ||
                other.storeyNumber == storeyNumber) &&
            (identical(other.houseNumber, houseNumber) ||
                other.houseNumber == houseNumber) &&
            (identical(other.apartmentNumber, apartmentNumber) ||
                other.apartmentNumber == apartmentNumber) &&
            (identical(other.specialLandmark, specialLandmark) ||
                other.specialLandmark == specialLandmark) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.store, store) || other.store == store));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      countryIsoCode,
      district,
      area,
      street,
      substreetName,
      geolocation,
      storeyNumber,
      houseNumber,
      apartmentNumber,
      specialLandmark,
      family,
      store);
}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) =
      _$AddressCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String countryIsoCode,
      District? district,
      Area? area,
      Street? street,
      String? substreetName,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson) Point? geolocation,
      int? storeyNumber,
      int? houseNumber,
      int? apartmentNumber,
      String? specialLandmark,
      Family? family,
      Store? store});

  $DistrictCopyWith<$Res>? get district;
  $AreaCopyWith<$Res>? get area;
  $StreetCopyWith<$Res>? get street;
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
    Object? id = freezed,
    Object? countryIsoCode = null,
    Object? district = freezed,
    Object? area = freezed,
    Object? street = freezed,
    Object? substreetName = freezed,
    Object? geolocation = freezed,
    Object? storeyNumber = freezed,
    Object? houseNumber = freezed,
    Object? apartmentNumber = freezed,
    Object? specialLandmark = freezed,
    Object? family = freezed,
    Object? store = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      countryIsoCode: null == countryIsoCode
          ? _self.countryIsoCode
          : countryIsoCode // ignore: cast_nullable_to_non_nullable
              as String,
      district: freezed == district
          ? _self.district
          : district // ignore: cast_nullable_to_non_nullable
              as District?,
      area: freezed == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
      street: freezed == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as Street?,
      substreetName: freezed == substreetName
          ? _self.substreetName
          : substreetName // ignore: cast_nullable_to_non_nullable
              as String?,
      geolocation: freezed == geolocation
          ? _self.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Point?,
      storeyNumber: freezed == storeyNumber
          ? _self.storeyNumber
          : storeyNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      houseNumber: freezed == houseNumber
          ? _self.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      apartmentNumber: freezed == apartmentNumber
          ? _self.apartmentNumber
          : apartmentNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      specialLandmark: freezed == specialLandmark
          ? _self.specialLandmark
          : specialLandmark // ignore: cast_nullable_to_non_nullable
              as String?,
      family: freezed == family
          ? _self.family
          : family // ignore: cast_nullable_to_non_nullable
              as Family?,
      store: freezed == store
          ? _self.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
    ));
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

/// @nodoc
@JsonSerializable()
class _Address extends Address {
  _Address(
      {this.id,
      this.countryIsoCode = 'EG',
      this.district,
      this.area,
      this.street,
      this.substreetName,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson) this.geolocation,
      this.storeyNumber,
      this.houseNumber,
      this.apartmentNumber,
      this.specialLandmark,
      this.family,
      this.store})
      : super._();
  factory _Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey()
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

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddressCopyWith<_Address> get copyWith =>
      __$AddressCopyWithImpl<_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Address &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryIsoCode, countryIsoCode) ||
                other.countryIsoCode == countryIsoCode) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.substreetName, substreetName) ||
                other.substreetName == substreetName) &&
            (identical(other.geolocation, geolocation) ||
                other.geolocation == geolocation) &&
            (identical(other.storeyNumber, storeyNumber) ||
                other.storeyNumber == storeyNumber) &&
            (identical(other.houseNumber, houseNumber) ||
                other.houseNumber == houseNumber) &&
            (identical(other.apartmentNumber, apartmentNumber) ||
                other.apartmentNumber == apartmentNumber) &&
            (identical(other.specialLandmark, specialLandmark) ||
                other.specialLandmark == specialLandmark) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.store, store) || other.store == store));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      countryIsoCode,
      district,
      area,
      street,
      substreetName,
      geolocation,
      storeyNumber,
      houseNumber,
      apartmentNumber,
      specialLandmark,
      family,
      store);
}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) =
      __$AddressCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String countryIsoCode,
      District? district,
      Area? area,
      Street? street,
      String? substreetName,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson) Point? geolocation,
      int? storeyNumber,
      int? houseNumber,
      int? apartmentNumber,
      String? specialLandmark,
      Family? family,
      Store? store});

  @override
  $DistrictCopyWith<$Res>? get district;
  @override
  $AreaCopyWith<$Res>? get area;
  @override
  $StreetCopyWith<$Res>? get street;
  @override
  $FamilyCopyWith<$Res>? get family;
  @override
  $StoreCopyWith<$Res>? get store;
}

/// @nodoc
class __$AddressCopyWithImpl<$Res> implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? countryIsoCode = null,
    Object? district = freezed,
    Object? area = freezed,
    Object? street = freezed,
    Object? substreetName = freezed,
    Object? geolocation = freezed,
    Object? storeyNumber = freezed,
    Object? houseNumber = freezed,
    Object? apartmentNumber = freezed,
    Object? specialLandmark = freezed,
    Object? family = freezed,
    Object? store = freezed,
  }) {
    return _then(_Address(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      countryIsoCode: null == countryIsoCode
          ? _self.countryIsoCode
          : countryIsoCode // ignore: cast_nullable_to_non_nullable
              as String,
      district: freezed == district
          ? _self.district
          : district // ignore: cast_nullable_to_non_nullable
              as District?,
      area: freezed == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
      street: freezed == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as Street?,
      substreetName: freezed == substreetName
          ? _self.substreetName
          : substreetName // ignore: cast_nullable_to_non_nullable
              as String?,
      geolocation: freezed == geolocation
          ? _self.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Point?,
      storeyNumber: freezed == storeyNumber
          ? _self.storeyNumber
          : storeyNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      houseNumber: freezed == houseNumber
          ? _self.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      apartmentNumber: freezed == apartmentNumber
          ? _self.apartmentNumber
          : apartmentNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      specialLandmark: freezed == specialLandmark
          ? _self.specialLandmark
          : specialLandmark // ignore: cast_nullable_to_non_nullable
              as String?,
      family: freezed == family
          ? _self.family
          : family // ignore: cast_nullable_to_non_nullable
              as Family?,
      store: freezed == store
          ? _self.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
    ));
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

// dart format on
