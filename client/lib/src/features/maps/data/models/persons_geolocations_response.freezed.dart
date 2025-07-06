// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persons_geolocations_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonsGeolocationsResponse {
  Set<Area> get areas;
  Set<Street> get streets;
  Set<Family> get families;
  Set<Store> get stores;
  Set<Person> get persons;

  /// Create a copy of PersonsGeolocationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PersonsGeolocationsResponseCopyWith<PersonsGeolocationsResponse>
      get copyWith => _$PersonsGeolocationsResponseCopyWithImpl<
              PersonsGeolocationsResponse>(
          this as PersonsGeolocationsResponse, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PersonsGeolocationsResponse &&
            const DeepCollectionEquality().equals(other.areas, areas) &&
            const DeepCollectionEquality().equals(other.streets, streets) &&
            const DeepCollectionEquality().equals(other.families, families) &&
            const DeepCollectionEquality().equals(other.stores, stores) &&
            const DeepCollectionEquality().equals(other.persons, persons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(areas),
      const DeepCollectionEquality().hash(streets),
      const DeepCollectionEquality().hash(families),
      const DeepCollectionEquality().hash(stores),
      const DeepCollectionEquality().hash(persons));

  @override
  String toString() {
    return 'PersonsGeolocationsResponse(areas: $areas, streets: $streets, families: $families, stores: $stores, persons: $persons)';
  }
}

/// @nodoc
abstract mixin class $PersonsGeolocationsResponseCopyWith<$Res> {
  factory $PersonsGeolocationsResponseCopyWith(
          PersonsGeolocationsResponse value,
          $Res Function(PersonsGeolocationsResponse) _then) =
      _$PersonsGeolocationsResponseCopyWithImpl;
  @useResult
  $Res call(
      {Set<Area> areas,
      Set<Street> streets,
      Set<Family> families,
      Set<Store> stores,
      Set<Person> persons});
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
    return _then(PersonsGeolocationsResponse(
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
    ));
  }
}

// dart format on
