// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geo_map_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeoMapOptions {
  Set<GeoMapLayer> get layers => throw _privateConstructorUsedError;
  Set<Area> get selectedAreas => throw _privateConstructorUsedError;
  Set<Street> get selectedStreets => throw _privateConstructorUsedError;
  Set<Family> get selectedFamilies => throw _privateConstructorUsedError;
  Set<Service> get selectedServices => throw _privateConstructorUsedError;
  Set<Class> get selectedClasses => throw _privateConstructorUsedError;
  Set<Group> get selectedGroups => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeoMapOptionsCopyWith<GeoMapOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoMapOptionsCopyWith<$Res> {
  factory $GeoMapOptionsCopyWith(
          GeoMapOptions value, $Res Function(GeoMapOptions) then) =
      _$GeoMapOptionsCopyWithImpl<$Res>;
  $Res call(
      {Set<GeoMapLayer> layers,
      Set<Area> selectedAreas,
      Set<Street> selectedStreets,
      Set<Family> selectedFamilies,
      Set<Service> selectedServices,
      Set<Class> selectedClasses,
      Set<Group> selectedGroups});
}

/// @nodoc
class _$GeoMapOptionsCopyWithImpl<$Res>
    implements $GeoMapOptionsCopyWith<$Res> {
  _$GeoMapOptionsCopyWithImpl(this._value, this._then);

  final GeoMapOptions _value;
  // ignore: unused_field
  final $Res Function(GeoMapOptions) _then;

  @override
  $Res call({
    Object? layers = freezed,
    Object? selectedAreas = freezed,
    Object? selectedStreets = freezed,
    Object? selectedFamilies = freezed,
    Object? selectedServices = freezed,
    Object? selectedClasses = freezed,
    Object? selectedGroups = freezed,
  }) {
    return _then(_value.copyWith(
      layers: layers == freezed
          ? _value.layers
          : layers // ignore: cast_nullable_to_non_nullable
              as Set<GeoMapLayer>,
      selectedAreas: selectedAreas == freezed
          ? _value.selectedAreas
          : selectedAreas // ignore: cast_nullable_to_non_nullable
              as Set<Area>,
      selectedStreets: selectedStreets == freezed
          ? _value.selectedStreets
          : selectedStreets // ignore: cast_nullable_to_non_nullable
              as Set<Street>,
      selectedFamilies: selectedFamilies == freezed
          ? _value.selectedFamilies
          : selectedFamilies // ignore: cast_nullable_to_non_nullable
              as Set<Family>,
      selectedServices: selectedServices == freezed
          ? _value.selectedServices
          : selectedServices // ignore: cast_nullable_to_non_nullable
              as Set<Service>,
      selectedClasses: selectedClasses == freezed
          ? _value.selectedClasses
          : selectedClasses // ignore: cast_nullable_to_non_nullable
              as Set<Class>,
      selectedGroups: selectedGroups == freezed
          ? _value.selectedGroups
          : selectedGroups // ignore: cast_nullable_to_non_nullable
              as Set<Group>,
    ));
  }
}

/// @nodoc
abstract class _$$_GeoMapOptionsCopyWith<$Res>
    implements $GeoMapOptionsCopyWith<$Res> {
  factory _$$_GeoMapOptionsCopyWith(
          _$_GeoMapOptions value, $Res Function(_$_GeoMapOptions) then) =
      __$$_GeoMapOptionsCopyWithImpl<$Res>;
  @override
  $Res call(
      {Set<GeoMapLayer> layers,
      Set<Area> selectedAreas,
      Set<Street> selectedStreets,
      Set<Family> selectedFamilies,
      Set<Service> selectedServices,
      Set<Class> selectedClasses,
      Set<Group> selectedGroups});
}

/// @nodoc
class __$$_GeoMapOptionsCopyWithImpl<$Res>
    extends _$GeoMapOptionsCopyWithImpl<$Res>
    implements _$$_GeoMapOptionsCopyWith<$Res> {
  __$$_GeoMapOptionsCopyWithImpl(
      _$_GeoMapOptions _value, $Res Function(_$_GeoMapOptions) _then)
      : super(_value, (v) => _then(v as _$_GeoMapOptions));

  @override
  _$_GeoMapOptions get _value => super._value as _$_GeoMapOptions;

  @override
  $Res call({
    Object? layers = freezed,
    Object? selectedAreas = freezed,
    Object? selectedStreets = freezed,
    Object? selectedFamilies = freezed,
    Object? selectedServices = freezed,
    Object? selectedClasses = freezed,
    Object? selectedGroups = freezed,
  }) {
    return _then(_$_GeoMapOptions(
      layers: layers == freezed
          ? _value._layers
          : layers // ignore: cast_nullable_to_non_nullable
              as Set<GeoMapLayer>,
      selectedAreas: selectedAreas == freezed
          ? _value._selectedAreas
          : selectedAreas // ignore: cast_nullable_to_non_nullable
              as Set<Area>,
      selectedStreets: selectedStreets == freezed
          ? _value._selectedStreets
          : selectedStreets // ignore: cast_nullable_to_non_nullable
              as Set<Street>,
      selectedFamilies: selectedFamilies == freezed
          ? _value._selectedFamilies
          : selectedFamilies // ignore: cast_nullable_to_non_nullable
              as Set<Family>,
      selectedServices: selectedServices == freezed
          ? _value._selectedServices
          : selectedServices // ignore: cast_nullable_to_non_nullable
              as Set<Service>,
      selectedClasses: selectedClasses == freezed
          ? _value._selectedClasses
          : selectedClasses // ignore: cast_nullable_to_non_nullable
              as Set<Class>,
      selectedGroups: selectedGroups == freezed
          ? _value._selectedGroups
          : selectedGroups // ignore: cast_nullable_to_non_nullable
              as Set<Group>,
    ));
  }
}

/// @nodoc

class _$_GeoMapOptions implements _GeoMapOptions {
  _$_GeoMapOptions(
      {final Set<GeoMapLayer> layers = const {},
      final Set<Area> selectedAreas = const {},
      final Set<Street> selectedStreets = const {},
      final Set<Family> selectedFamilies = const {},
      final Set<Service> selectedServices = const {},
      final Set<Class> selectedClasses = const {},
      final Set<Group> selectedGroups = const {}})
      : assert(layers.isNotEmpty, 'there must be at least one layer'),
        _layers = layers,
        _selectedAreas = selectedAreas,
        _selectedStreets = selectedStreets,
        _selectedFamilies = selectedFamilies,
        _selectedServices = selectedServices,
        _selectedClasses = selectedClasses,
        _selectedGroups = selectedGroups;

  final Set<GeoMapLayer> _layers;
  @override
  @JsonKey()
  Set<GeoMapLayer> get layers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_layers);
  }

  final Set<Area> _selectedAreas;
  @override
  @JsonKey()
  Set<Area> get selectedAreas {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedAreas);
  }

  final Set<Street> _selectedStreets;
  @override
  @JsonKey()
  Set<Street> get selectedStreets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedStreets);
  }

  final Set<Family> _selectedFamilies;
  @override
  @JsonKey()
  Set<Family> get selectedFamilies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedFamilies);
  }

  final Set<Service> _selectedServices;
  @override
  @JsonKey()
  Set<Service> get selectedServices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedServices);
  }

  final Set<Class> _selectedClasses;
  @override
  @JsonKey()
  Set<Class> get selectedClasses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedClasses);
  }

  final Set<Group> _selectedGroups;
  @override
  @JsonKey()
  Set<Group> get selectedGroups {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedGroups);
  }

  @override
  String toString() {
    return 'GeoMapOptions(layers: $layers, selectedAreas: $selectedAreas, selectedStreets: $selectedStreets, selectedFamilies: $selectedFamilies, selectedServices: $selectedServices, selectedClasses: $selectedClasses, selectedGroups: $selectedGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoMapOptions &&
            const DeepCollectionEquality().equals(other._layers, _layers) &&
            const DeepCollectionEquality()
                .equals(other._selectedAreas, _selectedAreas) &&
            const DeepCollectionEquality()
                .equals(other._selectedStreets, _selectedStreets) &&
            const DeepCollectionEquality()
                .equals(other._selectedFamilies, _selectedFamilies) &&
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
      const DeepCollectionEquality().hash(_selectedServices),
      const DeepCollectionEquality().hash(_selectedClasses),
      const DeepCollectionEquality().hash(_selectedGroups));

  @JsonKey(ignore: true)
  @override
  _$$_GeoMapOptionsCopyWith<_$_GeoMapOptions> get copyWith =>
      __$$_GeoMapOptionsCopyWithImpl<_$_GeoMapOptions>(this, _$identity);
}

abstract class _GeoMapOptions implements GeoMapOptions {
  factory _GeoMapOptions(
      {final Set<GeoMapLayer> layers,
      final Set<Area> selectedAreas,
      final Set<Street> selectedStreets,
      final Set<Family> selectedFamilies,
      final Set<Service> selectedServices,
      final Set<Class> selectedClasses,
      final Set<Group> selectedGroups}) = _$_GeoMapOptions;

  @override
  Set<GeoMapLayer> get layers;
  @override
  Set<Area> get selectedAreas;
  @override
  Set<Street> get selectedStreets;
  @override
  Set<Family> get selectedFamilies;
  @override
  Set<Service> get selectedServices;
  @override
  Set<Class> get selectedClasses;
  @override
  Set<Group> get selectedGroups;
  @override
  @JsonKey(ignore: true)
  _$$_GeoMapOptionsCopyWith<_$_GeoMapOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
