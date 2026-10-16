// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geomap_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeomapOptions {
  /// Create a copy of GeomapOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeomapOptionsCopyWith<GeomapOptions> get copyWith =>
      _$GeomapOptionsCopyWithImpl<GeomapOptions>(
        this as GeomapOptions,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    final _this = this as GeomapOptions;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeomapOptions &&
            const DeepCollectionEquality().equals(other.layers, _this.layers) &&
            const DeepCollectionEquality().equals(
              other.selectedAreas,
              _this.selectedAreas,
            ) &&
            const DeepCollectionEquality().equals(
              other.selectedStreets,
              _this.selectedStreets,
            ) &&
            const DeepCollectionEquality().equals(
              other.selectedFamilies,
              _this.selectedFamilies,
            ) &&
            const DeepCollectionEquality().equals(
              other.selectedStores,
              _this.selectedStores,
            ) &&
            const DeepCollectionEquality().equals(
              other.selectedServices,
              _this.selectedServices,
            ) &&
            const DeepCollectionEquality().equals(
              other.selectedClasses,
              _this.selectedClasses,
            ) &&
            const DeepCollectionEquality().equals(
              other.selectedGroups,
              _this.selectedGroups,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as GeomapOptions;
    return Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_this.layers),
      const DeepCollectionEquality().hash(_this.selectedAreas),
      const DeepCollectionEquality().hash(_this.selectedStreets),
      const DeepCollectionEquality().hash(_this.selectedFamilies),
      const DeepCollectionEquality().hash(_this.selectedStores),
      const DeepCollectionEquality().hash(_this.selectedServices),
      const DeepCollectionEquality().hash(_this.selectedClasses),
      const DeepCollectionEquality().hash(_this.selectedGroups),
    );
  }

  @override
  String toString() {
    final _this = this as GeomapOptions;
    return 'GeomapOptions(layers: ${_this.layers}, selectedAreas: ${_this.selectedAreas}, selectedStreets: ${_this.selectedStreets}, selectedFamilies: ${_this.selectedFamilies}, selectedStores: ${_this.selectedStores}, selectedServices: ${_this.selectedServices}, selectedClasses: ${_this.selectedClasses}, selectedGroups: ${_this.selectedGroups})';
  }
}

/// @nodoc
abstract mixin class $GeomapOptionsCopyWith<$Res> {
  factory $GeomapOptionsCopyWith(
    GeomapOptions value,
    $Res Function(GeomapOptions) _then,
  ) = _$GeomapOptionsCopyWithImpl;
  @useResult
  $Res call({
    Set<GeoMapLayer> layers,
    Set<Area> selectedAreas,
    Set<Street> selectedStreets,
    Set<Family> selectedFamilies,
    Set<Store> selectedStores,
    Set<Service> selectedServices,
    Set<Class> selectedClasses,
    Set<Group> selectedGroups,
  });
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
    return _then(
      GeomapOptions(
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
      ),
    );
  }
}
