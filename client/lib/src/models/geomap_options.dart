import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geomap_options.freezed.dart';

@freezed
class GeomapOptions with _$GeomapOptions {
  @Assert('layers.isNotEmpty', 'there must be at least one layer')
  factory GeomapOptions({
    @Default({
      GeoMapLayer.areas,
      GeoMapLayer.streets,
      GeoMapLayer.families,
      GeoMapLayer.persons,
    })
        Set<GeoMapLayer> layers,
    @Default({})
        Set<Area> selectedAreas,
    @Default({})
        Set<Street> selectedStreets,
    @Default({})
        Set<Family> selectedFamilies,
    @Default({})
        Set<Store> selectedStores,
    @Default({})
        Set<Service> selectedServices,
    @Default({})
        Set<Class> selectedClasses,
    @Default({})
        Set<Group> selectedGroups,
  }) = _GeoMapOptions;
}

enum GeoMapLayer { areas, streets, families, stores, persons }
