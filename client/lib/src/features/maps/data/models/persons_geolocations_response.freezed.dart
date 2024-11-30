// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persons_geolocations_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonsGeolocationsResponse _$PersonsGeolocationsResponseFromJson(
    Map<String, dynamic> json) {
  return _PersonsGeolocationsResponse.fromJson(json);
}

/// @nodoc
mixin _$PersonsGeolocationsResponse {
  Set<Area> get areas => throw _privateConstructorUsedError;
  Set<Street> get streets => throw _privateConstructorUsedError;
  Set<Family> get families => throw _privateConstructorUsedError;
  Set<Store> get stores => throw _privateConstructorUsedError;
  Set<Person> get persons => throw _privateConstructorUsedError;

  /// Serializes this PersonsGeolocationsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PersonsGeolocationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonsGeolocationsResponseCopyWith<PersonsGeolocationsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonsGeolocationsResponseCopyWith<$Res> {
  factory $PersonsGeolocationsResponseCopyWith(
          PersonsGeolocationsResponse value,
          $Res Function(PersonsGeolocationsResponse) then) =
      _$PersonsGeolocationsResponseCopyWithImpl<$Res,
          PersonsGeolocationsResponse>;
  @useResult
  $Res call(
      {Set<Area> areas,
      Set<Street> streets,
      Set<Family> families,
      Set<Store> stores,
      Set<Person> persons});
}

/// @nodoc
class _$PersonsGeolocationsResponseCopyWithImpl<$Res,
        $Val extends PersonsGeolocationsResponse>
    implements $PersonsGeolocationsResponseCopyWith<$Res> {
  _$PersonsGeolocationsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      areas: null == areas
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as Set<Area>,
      streets: null == streets
          ? _value.streets
          : streets // ignore: cast_nullable_to_non_nullable
              as Set<Street>,
      families: null == families
          ? _value.families
          : families // ignore: cast_nullable_to_non_nullable
              as Set<Family>,
      stores: null == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as Set<Store>,
      persons: null == persons
          ? _value.persons
          : persons // ignore: cast_nullable_to_non_nullable
              as Set<Person>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonsGeolocationsResponseImplCopyWith<$Res>
    implements $PersonsGeolocationsResponseCopyWith<$Res> {
  factory _$$PersonsGeolocationsResponseImplCopyWith(
          _$PersonsGeolocationsResponseImpl value,
          $Res Function(_$PersonsGeolocationsResponseImpl) then) =
      __$$PersonsGeolocationsResponseImplCopyWithImpl<$Res>;
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
class __$$PersonsGeolocationsResponseImplCopyWithImpl<$Res>
    extends _$PersonsGeolocationsResponseCopyWithImpl<$Res,
        _$PersonsGeolocationsResponseImpl>
    implements _$$PersonsGeolocationsResponseImplCopyWith<$Res> {
  __$$PersonsGeolocationsResponseImplCopyWithImpl(
      _$PersonsGeolocationsResponseImpl _value,
      $Res Function(_$PersonsGeolocationsResponseImpl) _then)
      : super(_value, _then);

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
    return _then(_$PersonsGeolocationsResponseImpl(
      areas: null == areas
          ? _value._areas
          : areas // ignore: cast_nullable_to_non_nullable
              as Set<Area>,
      streets: null == streets
          ? _value._streets
          : streets // ignore: cast_nullable_to_non_nullable
              as Set<Street>,
      families: null == families
          ? _value._families
          : families // ignore: cast_nullable_to_non_nullable
              as Set<Family>,
      stores: null == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as Set<Store>,
      persons: null == persons
          ? _value._persons
          : persons // ignore: cast_nullable_to_non_nullable
              as Set<Person>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonsGeolocationsResponseImpl
    implements _PersonsGeolocationsResponse {
  _$PersonsGeolocationsResponseImpl(
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

  factory _$PersonsGeolocationsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PersonsGeolocationsResponseImplFromJson(json);

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

  @override
  String toString() {
    return 'PersonsGeolocationsResponse(areas: $areas, streets: $streets, families: $families, stores: $stores, persons: $persons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonsGeolocationsResponseImpl &&
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

  /// Create a copy of PersonsGeolocationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonsGeolocationsResponseImplCopyWith<_$PersonsGeolocationsResponseImpl>
      get copyWith => __$$PersonsGeolocationsResponseImplCopyWithImpl<
          _$PersonsGeolocationsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonsGeolocationsResponseImplToJson(
      this,
    );
  }
}

abstract class _PersonsGeolocationsResponse
    implements PersonsGeolocationsResponse {
  factory _PersonsGeolocationsResponse(
      {final Set<Area> areas,
      final Set<Street> streets,
      final Set<Family> families,
      final Set<Store> stores,
      final Set<Person> persons}) = _$PersonsGeolocationsResponseImpl;

  factory _PersonsGeolocationsResponse.fromJson(Map<String, dynamic> json) =
      _$PersonsGeolocationsResponseImpl.fromJson;

  @override
  Set<Area> get areas;
  @override
  Set<Street> get streets;
  @override
  Set<Family> get families;
  @override
  Set<Store> get stores;
  @override
  Set<Person> get persons;

  /// Create a copy of PersonsGeolocationsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonsGeolocationsResponseImplCopyWith<_$PersonsGeolocationsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
