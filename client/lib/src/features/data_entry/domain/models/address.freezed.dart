// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String? get id => throw _privateConstructorUsedError;
  String get countryIsoCode => throw _privateConstructorUsedError;
  District? get district => throw _privateConstructorUsedError;
  Area? get area => throw _privateConstructorUsedError;
  Street? get street => throw _privateConstructorUsedError;
  String? get substreetName => throw _privateConstructorUsedError;
  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  Point? get geolocation => throw _privateConstructorUsedError;
  int? get storeyNumber => throw _privateConstructorUsedError;
  int? get houseNumber => throw _privateConstructorUsedError;
  int? get apartmentNumber => throw _privateConstructorUsedError;
  String? get specialLandmark => throw _privateConstructorUsedError;
  Family? get family => throw _privateConstructorUsedError;
  Store? get store => throw _privateConstructorUsedError;

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
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
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      countryIsoCode: null == countryIsoCode
          ? _value.countryIsoCode
          : countryIsoCode // ignore: cast_nullable_to_non_nullable
              as String,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as District?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as Street?,
      substreetName: freezed == substreetName
          ? _value.substreetName
          : substreetName // ignore: cast_nullable_to_non_nullable
              as String?,
      geolocation: freezed == geolocation
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Point?,
      storeyNumber: freezed == storeyNumber
          ? _value.storeyNumber
          : storeyNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      houseNumber: freezed == houseNumber
          ? _value.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      apartmentNumber: freezed == apartmentNumber
          ? _value.apartmentNumber
          : apartmentNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      specialLandmark: freezed == specialLandmark
          ? _value.specialLandmark
          : specialLandmark // ignore: cast_nullable_to_non_nullable
              as String?,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Family?,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
    ) as $Val);
  }

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistrictCopyWith<$Res>? get district {
    if (_value.district == null) {
      return null;
    }

    return $DistrictCopyWith<$Res>(_value.district!, (value) {
      return _then(_value.copyWith(district: value) as $Val);
    });
  }

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res>? get area {
    if (_value.area == null) {
      return null;
    }

    return $AreaCopyWith<$Res>(_value.area!, (value) {
      return _then(_value.copyWith(area: value) as $Val);
    });
  }

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreetCopyWith<$Res>? get street {
    if (_value.street == null) {
      return null;
    }

    return $StreetCopyWith<$Res>(_value.street!, (value) {
      return _then(_value.copyWith(street: value) as $Val);
    });
  }

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FamilyCopyWith<$Res>? get family {
    if (_value.family == null) {
      return null;
    }

    return $FamilyCopyWith<$Res>(_value.family!, (value) {
      return _then(_value.copyWith(family: value) as $Val);
    });
  }

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreCopyWith<$Res>? get store {
    if (_value.store == null) {
      return null;
    }

    return $StoreCopyWith<$Res>(_value.store!, (value) {
      return _then(_value.copyWith(store: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
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
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

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
    return _then(_$AddressImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      countryIsoCode: null == countryIsoCode
          ? _value.countryIsoCode
          : countryIsoCode // ignore: cast_nullable_to_non_nullable
              as String,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as District?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as Street?,
      substreetName: freezed == substreetName
          ? _value.substreetName
          : substreetName // ignore: cast_nullable_to_non_nullable
              as String?,
      geolocation: freezed == geolocation
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Point?,
      storeyNumber: freezed == storeyNumber
          ? _value.storeyNumber
          : storeyNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      houseNumber: freezed == houseNumber
          ? _value.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      apartmentNumber: freezed == apartmentNumber
          ? _value.apartmentNumber
          : apartmentNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      specialLandmark: freezed == specialLandmark
          ? _value.specialLandmark
          : specialLandmark // ignore: cast_nullable_to_non_nullable
              as String?,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Family?,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl extends _Address {
  _$AddressImpl(
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

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

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

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
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

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address extends Address {
  factory _Address(
      {final String? id,
      final String countryIsoCode,
      final District? district,
      final Area? area,
      final Street? street,
      final String? substreetName,
      @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
      final Point? geolocation,
      final int? storeyNumber,
      final int? houseNumber,
      final int? apartmentNumber,
      final String? specialLandmark,
      final Family? family,
      final Store? store}) = _$AddressImpl;
  _Address._() : super._();

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String? get id;
  @override
  String get countryIsoCode;
  @override
  District? get district;
  @override
  Area? get area;
  @override
  Street? get street;
  @override
  String? get substreetName;
  @override
  @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
  Point? get geolocation;
  @override
  int? get storeyNumber;
  @override
  int? get houseNumber;
  @override
  int? get apartmentNumber;
  @override
  String? get specialLandmark;
  @override
  Family? get family;
  @override
  Store? get store;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
