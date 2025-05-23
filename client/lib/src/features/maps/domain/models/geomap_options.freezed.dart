// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
    return _then(_self.copyWith(
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

/// @nodoc

class _GeoMapOptions implements GeomapOptions {
  _GeoMapOptions(
      {final Set<GeoMapLayer> layers = const {
        GeoMapLayer.areas,
        GeoMapLayer.streets,
        GeoMapLayer.families,
        GeoMapLayer.persons
      },
      final Set<Area> selectedAreas = const {},
      final Set<Street> selectedStreets = const {},
      final Set<Family> selectedFamilies = const {},
      final Set<Store> selectedStores = const {},
      final Set<Service> selectedServices = const {},
      final Set<Class> selectedClasses = const {},
      final Set<Group> selectedGroups = const {}})
      : assert(layers.isNotEmpty, 'there must be at least one layer'),
        _layers = layers,
        _selectedAreas = selectedAreas,
        _selectedStreets = selectedStreets,
        _selectedFamilies = selectedFamilies,
        _selectedStores = selectedStores,
        _selectedServices = selectedServices,
        _selectedClasses = selectedClasses,
        _selectedGroups = selectedGroups;

  final Set<GeoMapLayer> _layers;
  @override
  @JsonKey()
  Set<GeoMapLayer> get layers {
    if (_layers is EqualUnmodifiableSetView) return _layers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_layers);
  }

  final Set<Area> _selectedAreas;
  @override
  @JsonKey()
  Set<Area> get selectedAreas {
    if (_selectedAreas is EqualUnmodifiableSetView) return _selectedAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedAreas);
  }

  final Set<Street> _selectedStreets;
  @override
  @JsonKey()
  Set<Street> get selectedStreets {
    if (_selectedStreets is EqualUnmodifiableSetView) return _selectedStreets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedStreets);
  }

  final Set<Family> _selectedFamilies;
  @override
  @JsonKey()
  Set<Family> get selectedFamilies {
    if (_selectedFamilies is EqualUnmodifiableSetView) return _selectedFamilies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedFamilies);
  }

  final Set<Store> _selectedStores;
  @override
  @JsonKey()
  Set<Store> get selectedStores {
    if (_selectedStores is EqualUnmodifiableSetView) return _selectedStores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedStores);
  }

  final Set<Service> _selectedServices;
  @override
  @JsonKey()
  Set<Service> get selectedServices {
    if (_selectedServices is EqualUnmodifiableSetView) return _selectedServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedServices);
  }

  final Set<Class> _selectedClasses;
  @override
  @JsonKey()
  Set<Class> get selectedClasses {
    if (_selectedClasses is EqualUnmodifiableSetView) return _selectedClasses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedClasses);
  }

  final Set<Group> _selectedGroups;
  @override
  @JsonKey()
  Set<Group> get selectedGroups {
    if (_selectedGroups is EqualUnmodifiableSetView) return _selectedGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedGroups);
  }

  /// Create a copy of GeomapOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeoMapOptionsCopyWith<_GeoMapOptions> get copyWith =>
      __$GeoMapOptionsCopyWithImpl<_GeoMapOptions>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeoMapOptions &&
            const DeepCollectionEquality().equals(other._layers, _layers) &&
            const DeepCollectionEquality()
                .equals(other._selectedAreas, _selectedAreas) &&
            const DeepCollectionEquality()
                .equals(other._selectedStreets, _selectedStreets) &&
            const DeepCollectionEquality()
                .equals(other._selectedFamilies, _selectedFamilies) &&
            const DeepCollectionEquality()
                .equals(other._selectedStores, _selectedStores) &&
            const DeepCollectionEquality()
                .equals(other._selectedServices, _selectedServices) &&
            const DeepCollectionEquality()
                .equals(other._selectedClasses, _selectedClasses) &&
            const DeepCollectionEquality()
                .equals(other._selectedGroups, _selectedGroups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_layers),
      const DeepCollectionEquality().hash(_selectedAreas),
      const DeepCollectionEquality().hash(_selectedStreets),
      const DeepCollectionEquality().hash(_selectedFamilies),
      const DeepCollectionEquality().hash(_selectedStores),
      const DeepCollectionEquality().hash(_selectedServices),
      const DeepCollectionEquality().hash(_selectedClasses),
      const DeepCollectionEquality().hash(_selectedGroups));

  @override
  String toString() {
    return 'GeomapOptions(layers: $layers, selectedAreas: $selectedAreas, selectedStreets: $selectedStreets, selectedFamilies: $selectedFamilies, selectedStores: $selectedStores, selectedServices: $selectedServices, selectedClasses: $selectedClasses, selectedGroups: $selectedGroups)';
  }
}

/// @nodoc
abstract mixin class _$GeoMapOptionsCopyWith<$Res>
    implements $GeomapOptionsCopyWith<$Res> {
  factory _$GeoMapOptionsCopyWith(
          _GeoMapOptions value, $Res Function(_GeoMapOptions) _then) =
      __$GeoMapOptionsCopyWithImpl;
  @override
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
class __$GeoMapOptionsCopyWithImpl<$Res>
    implements _$GeoMapOptionsCopyWith<$Res> {
  __$GeoMapOptionsCopyWithImpl(this._self, this._then);

  final _GeoMapOptions _self;
  final $Res Function(_GeoMapOptions) _then;

  /// Create a copy of GeomapOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_GeoMapOptions(
      layers: null == layers
          ? _self._layers
          : layers // ignore: cast_nullable_to_non_nullable
              as Set<GeoMapLayer>,
      selectedAreas: null == selectedAreas
          ? _self._selectedAreas
          : selectedAreas // ignore: cast_nullable_to_non_nullable
              as Set<Area>,
      selectedStreets: null == selectedStreets
          ? _self._selectedStreets
          : selectedStreets // ignore: cast_nullable_to_non_nullable
              as Set<Street>,
      selectedFamilies: null == selectedFamilies
          ? _self._selectedFamilies
          : selectedFamilies // ignore: cast_nullable_to_non_nullable
              as Set<Family>,
      selectedStores: null == selectedStores
          ? _self._selectedStores
          : selectedStores // ignore: cast_nullable_to_non_nullable
              as Set<Store>,
      selectedServices: null == selectedServices
          ? _self._selectedServices
          : selectedServices // ignore: cast_nullable_to_non_nullable
              as Set<Service>,
      selectedClasses: null == selectedClasses
          ? _self._selectedClasses
          : selectedClasses // ignore: cast_nullable_to_non_nullable
              as Set<Class>,
      selectedGroups: null == selectedGroups
          ? _self._selectedGroups
          : selectedGroups // ignore: cast_nullable_to_non_nullable
              as Set<Group>,
    ));
  }
}

// dart format on
