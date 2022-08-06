import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_map_options.freezed.dart';

@freezed
class GeoMapOptions with _$GeoMapOptions {
  @Assert('layers.isNotEmpty', 'there must be at least one layer')
  factory GeoMapOptions({
    @Default({}) Set<GeoMapLayer> layers,
    @Default({}) Set<Area> selectedAreas,
    @Default({}) Set<Street> selectedStreets,
    @Default({}) Set<Family> selectedFamilies,
    @Default({}) Set<Service> selectedServices,
    @Default({}) Set<Class> selectedClasses,
    @Default({}) Set<Group> selectedGroups,
  }) = _GeoMapOptions;
}

enum GeoMapLayer { areas, streets, families, persons }
