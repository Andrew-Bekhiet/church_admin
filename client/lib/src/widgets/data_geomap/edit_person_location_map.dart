import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:church_admin/src/widgets/data_geomap/edit_object_location_map.dart';
import 'package:flutter/material.dart';

class EditPersonLocationMap extends StatelessWidget {
  final Person initialPerson;
  final void Function(Person) onSaved;

  const EditPersonLocationMap({
    required this.initialPerson,
    required this.onSaved,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EditObjectLocationMap<Person>(
      onSaved: onSaved,
      initialObject: initialPerson,
      getLocation: (p) => p.geolocation,
      copyWithNewLocation: (p, l) => p.copyWith(geolocation: l),
      geomapOptions: GeomapOptions(
        layers: const {
          GeoMapLayer.areas,
          GeoMapLayer.families,
          GeoMapLayer.streets,
        },
      ),
    );
  }
}
