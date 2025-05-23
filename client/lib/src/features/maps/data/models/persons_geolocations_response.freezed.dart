// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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

  /// Serializes this PersonsGeolocationsResponse to a JSON map.
  Map<String, dynamic> toJson();

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
    return _then(_self.copyWith(
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

/// @nodoc
@JsonSerializable()
class _PersonsGeolocationsResponse implements PersonsGeolocationsResponse {
  _PersonsGeolocationsResponse(
      {final Set<Area> areas = const {},
      final Set<Street> streets = const {},
      final Set<Family> families = const {},
      final Set<Store> stores = const {},
      final Set<Person> persons = const {}})
      : _areas = areas,
        _streets = streets,
        _families = families,
        _stores = stores,
        _persons = persons;
  factory _PersonsGeolocationsResponse.fromJson(Map<String, dynamic> json) =>
      _$PersonsGeolocationsResponseFromJson(json);

  final Set<Area> _areas;
  @override
  @JsonKey()
  Set<Area> get areas {
    if (_areas is EqualUnmodifiableSetView) return _areas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_areas);
  }

  final Set<Street> _streets;
  @override
  @JsonKey()
  Set<Street> get streets {
    if (_streets is EqualUnmodifiableSetView) return _streets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_streets);
  }

  final Set<Family> _families;
  @override
  @JsonKey()
  Set<Family> get families {
    if (_families is EqualUnmodifiableSetView) return _families;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_families);
  }

  final Set<Store> _stores;
  @override
  @JsonKey()
  Set<Store> get stores {
    if (_stores is EqualUnmodifiableSetView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_stores);
  }

  final Set<Person> _persons;
  @override
  @JsonKey()
  Set<Person> get persons {
    if (_persons is EqualUnmodifiableSetView) return _persons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_persons);
  }

  /// Create a copy of PersonsGeolocationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PersonsGeolocationsResponseCopyWith<_PersonsGeolocationsResponse>
      get copyWith => __$PersonsGeolocationsResponseCopyWithImpl<
          _PersonsGeolocationsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PersonsGeolocationsResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PersonsGeolocationsResponse &&
            const DeepCollectionEquality().equals(other._areas, _areas) &&
            const DeepCollectionEquality().equals(other._streets, _streets) &&
            const DeepCollectionEquality().equals(other._families, _families) &&
            const DeepCollectionEquality().equals(other._stores, _stores) &&
            const DeepCollectionEquality().equals(other._persons, _persons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_areas),
      const DeepCollectionEquality().hash(_streets),
      const DeepCollectionEquality().hash(_families),
      const DeepCollectionEquality().hash(_stores),
      const DeepCollectionEquality().hash(_persons));

  @override
  String toString() {
    return 'PersonsGeolocationsResponse(areas: $areas, streets: $streets, families: $families, stores: $stores, persons: $persons)';
  }
}

/// @nodoc
abstract mixin class _$PersonsGeolocationsResponseCopyWith<$Res>
    implements $PersonsGeolocationsResponseCopyWith<$Res> {
  factory _$PersonsGeolocationsResponseCopyWith(
          _PersonsGeolocationsResponse value,
          $Res Function(_PersonsGeolocationsResponse) _then) =
      __$PersonsGeolocationsResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Set<Area> areas,
      Set<Street> streets,
      Set<Family> families,
      Set<Store> stores,
      Set<Person> persons});
}

/// @nodoc
class __$PersonsGeolocationsResponseCopyWithImpl<$Res>
    implements _$PersonsGeolocationsResponseCopyWith<$Res> {
  __$PersonsGeolocationsResponseCopyWithImpl(this._self, this._then);

  final _PersonsGeolocationsResponse _self;
  final $Res Function(_PersonsGeolocationsResponse) _then;

  /// Create a copy of PersonsGeolocationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? areas = null,
    Object? streets = null,
    Object? families = null,
    Object? stores = null,
    Object? persons = null,
  }) {
    return _then(_PersonsGeolocationsResponse(
      areas: null == areas
          ? _self._areas
          : areas // ignore: cast_nullable_to_non_nullable
              as Set<Area>,
      streets: null == streets
          ? _self._streets
          : streets // ignore: cast_nullable_to_non_nullable
              as Set<Street>,
      families: null == families
          ? _self._families
          : families // ignore: cast_nullable_to_non_nullable
              as Set<Family>,
      stores: null == stores
          ? _self._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as Set<Store>,
      persons: null == persons
          ? _self._persons
          : persons // ignore: cast_nullable_to_non_nullable
              as Set<Person>,
    ));
  }
}

// dart format on
