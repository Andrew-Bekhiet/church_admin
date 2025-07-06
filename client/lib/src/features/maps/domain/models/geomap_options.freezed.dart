// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geomap_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeomapOptions {
  Set<GeoMapLayer> get layers;
  Set<Area> get selectedAreas;
  Set<Street> get selectedStreets;
  Set<Family> get selectedFamilies;
  Set<Store> get selectedStores;
  Set<Service> get selectedServices;
  Set<Class> get selectedClasses;
  Set<Group> get selectedGroups;

  /// Create a copy of GeomapOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeomapOptionsCopyWith<GeomapOptions> get copyWith =>
      _$GeomapOptionsCopyWithImpl<GeomapOptions>(
          this as GeomapOptions, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeomapOptions &&
            const DeepCollectionEquality().equals(other.layers, layers) &&
            const DeepCollectionEquality()
                .equals(other.selectedAreas, selectedAreas) &&
            const DeepCollectionEquality()
                .equals(other.selectedStreets, selectedStreets) &&
            const DeepCollectionEquality()
                .equals(other.selectedFamilies, selectedFamilies) &&
            const DeepCollectionEquality()
                .equals(other.selectedStores, selectedStores) &&
            const DeepCollectionEquality()
                .equals(other.selectedServices, selectedServices) &&
            const DeepCollectionEquality()
                .equals(other.selectedClasses, selectedClasses) &&
            const DeepCollectionEquality()
                .equals(other.selectedGroups, selectedGroups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(layers),
      const DeepCollectionEquality().hash(selectedAreas),
      const DeepCollectionEquality().hash(selectedStreets),
      const DeepCollectionEquality().hash(selectedFamilies),
      const DeepCollectionEquality().hash(selectedStores),
      const DeepCollectionEquality().hash(selectedServices),
      const DeepCollectionEquality().hash(selectedClasses),
      const DeepCollectionEquality().hash(selectedGroups));

  @override
  String toString() {
    return 'GeomapOptions(layers: $layers, selectedAreas: $selectedAreas, selectedStreets: $selectedStreets, selectedFamilies: $selectedFamilies, selectedStores: $selectedStores, selectedServices: $selectedServices, selectedClasses: $selectedClasses, selectedGroups: $selectedGroups)';
  }
}

/// @nodoc
abstract mixin class $GeomapOptionsCopyWith<$Res> {
  factory $GeomapOptionsCopyWith(
          GeomapOptions value, $Res Function(GeomapOptions) _then) =
      _$GeomapOptionsCopyWithImpl;
  @useResult
  $Res call(
      {Set<GeoMapLayer> layers,
      Set<Area> selectedAreas,
      Set<Street> selectedStreets,
      Set<Family> selectedFamilies,
      Set<Store> selectedStores,
      Set<Service> selectedServices,
      Set<Class> selectedClasses,
      Set<Group> selectedGroups});
}

/// @nodoc
class _$GeomapOptionsCopyWithImpl<$Res>
    implements $GeomapOptionsCopyWith<$Res> {
  _$GeomapOptionsCopyWithImpl(this._self, this._then);

  final GeomapOptions _self;
  final $Res Function(GeomapOptions) _then;

  /// Create a copy of GeomapOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layers = null,
    Object? selectedAreas = null,
    Object? selectedStreets = null,
    Object? selectedFamilies = null,
    Object? selectedStores = null,
    Object? selectedServices = null,
    Object? selectedClasses = null,
    Object? selectedGroups = null,
  }) {
    return _then(GeomapOptions(
      layers: null == layers
          ? _self.layers
          : layers // ignore: cast_nullable_to_non_nullable
              as Set<GeoMapLayer>,
      selectedAreas: null == selectedAreas
          ? _self.selectedAreas
          : selectedAreas // ignore: cast_nullable_to_non_nullable
              as Set<Area>,
      selectedStreets: null == selectedStreets
          ? _self.selectedStreets
          : selectedStreets // ignore: cast_nullable_to_non_nullable
              as Set<Street>,
      selectedFamilies: null == selectedFamilies
          ? _self.selectedFamilies
          : selectedFamilies // ignore: cast_nullable_to_non_nullable
              as Set<Family>,
      selectedStores: null == selectedStores
          ? _self.selectedStores
          : selectedStores // ignore: cast_nullable_to_non_nullable
              as Set<Store>,
      selectedServices: null == selectedServices
          ? _self.selectedServices
          : selectedServices // ignore: cast_nullable_to_non_nullable
              as Set<Service>,
      selectedClasses: null == selectedClasses
          ? _self.selectedClasses
          : selectedClasses // ignore: cast_nullable_to_non_nullable
              as Set<Class>,
      selectedGroups: null == selectedGroups
          ? _self.selectedGroups
          : selectedGroups // ignore: cast_nullable_to_non_nullable
              as Set<Group>,
    ));
  }
}

// dart format on
