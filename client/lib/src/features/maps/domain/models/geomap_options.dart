import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geomap_options.freezed.dart';
part 'geomap_options.g.dart';

@freezed
@JsonSerializable()
class GeomapOptions with _$GeomapOptions {
  @override
  final Set<GeoMapLayer> layers;
  @override
  final Set<Area> selectedAreas;
  @override
  final Set<Street> selectedStreets;
  @override
  final Set<Family> selectedFamilies;
  @override
  final Set<Store> selectedStores;
  @override
  final Set<Service> selectedServices;
  @override
  final Set<Class> selectedClasses;
  @override
  final Set<Group> selectedGroups;

  GeomapOptions({
    this.layers = const {
      GeoMapLayer.areas,
      GeoMapLayer.streets,
      GeoMapLayer.families,
      GeoMapLayer.persons,
    },
    this.selectedAreas = const {},
    this.selectedStreets = const {},
    this.selectedFamilies = const {},
    this.selectedStores = const {},
    this.selectedServices = const {},
    this.selectedClasses = const {},
    this.selectedGroups = const {},
  }) : assert(layers.isNotEmpty, 'there must be at least one layer');

  factory GeomapOptions.fromJson(Map<String, Object?> json) =>
      _$GeomapOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$GeomapOptionsToJson(this);
}

enum GeoMapLayer {
  areas('المناطق'),
  streets('الشوارع'),
  families('العائلات'),
  stores('المتاجر'),
  persons('المخدومين');

  final String label;

  const GeoMapLayer(this.label);
}
