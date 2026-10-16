// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persons_geolocations_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonsGeolocationsResponse {
  /// Create a copy of PersonsGeolocationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PersonsGeolocationsResponseCopyWith<PersonsGeolocationsResponse>
  get copyWith =>
      _$PersonsGeolocationsResponseCopyWithImpl<PersonsGeolocationsResponse>(
        this as PersonsGeolocationsResponse,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    final _this = this as PersonsGeolocationsResponse;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PersonsGeolocationsResponse &&
            const DeepCollectionEquality().equals(other.areas, _this.areas) &&
            const DeepCollectionEquality().equals(
              other.streets,
              _this.streets,
            ) &&
            const DeepCollectionEquality().equals(
              other.families,
              _this.families,
            ) &&
            const DeepCollectionEquality().equals(other.stores, _this.stores) &&
            const DeepCollectionEquality().equals(
              other.persons,
              _this.persons,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PersonsGeolocationsResponse;
    return Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_this.areas),
      const DeepCollectionEquality().hash(_this.streets),
      const DeepCollectionEquality().hash(_this.families),
      const DeepCollectionEquality().hash(_this.stores),
      const DeepCollectionEquality().hash(_this.persons),
    );
  }

  @override
  String toString() {
    final _this = this as PersonsGeolocationsResponse;
    return 'PersonsGeolocationsResponse(areas: ${_this.areas}, streets: ${_this.streets}, families: ${_this.families}, stores: ${_this.stores}, persons: ${_this.persons})';
  }
}

/// @nodoc
abstract mixin class $PersonsGeolocationsResponseCopyWith<$Res> {
  factory $PersonsGeolocationsResponseCopyWith(
    PersonsGeolocationsResponse value,
    $Res Function(PersonsGeolocationsResponse) _then,
  ) = _$PersonsGeolocationsResponseCopyWithImpl;
  @useResult
  $Res call({
    Set<Area> areas,
    Set<Street> streets,
    Set<Family> families,
    Set<Store> stores,
    Set<Person> persons,
  });
}

/// @nodoc
class _$PersonsGeolocationsResponseCopyWithImpl<$Res>
    implements $PersonsGeolocationsResponseCopyWith<$Res> {
  _$PersonsGeolocationsResponseCopyWithImpl(this._self, this._then);

  final PersonsGeolocationsResponse _self;
  final $Res Function(PersonsGeolocationsResponse) _then;

  /// Create a copy of PersonsGeolocationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areas = null,
    Object? streets = null,
    Object? families = null,
    Object? stores = null,
    Object? persons = null,
  }) {
    return _then(
      PersonsGeolocationsResponse(
        areas: null == areas
            ? _self.areas
            : areas // ignore: cast_nullable_to_non_nullable
                  as Set<Area>,
        streets: null == streets
            ? _self.streets
            : streets // ignore: cast_nullable_to_non_nullable
                  as Set<Street>,
        families: null == families
            ? _self.families
            : families // ignore: cast_nullable_to_non_nullable
                  as Set<Family>,
        stores: null == stores
            ? _self.stores
            : stores // ignore: cast_nullable_to_non_nullable
                  as Set<Store>,
        persons: null == persons
            ? _self.persons
            : persons // ignore: cast_nullable_to_non_nullable
                  as Set<Person>,
      ),
    );
  }
}
