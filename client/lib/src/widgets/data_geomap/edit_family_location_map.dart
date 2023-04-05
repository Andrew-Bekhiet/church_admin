import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter/material.dart';

import 'edit_object_location_map.dart';

class EditFamilyLocationMap extends StatelessWidget {
  final Family initialFamily;
  final GeomapOptions geomapOptions;
  final void Function(Family) onSaved;

  const EditFamilyLocationMap({
    required this.geomapOptions,
    required this.initialFamily,
    required this.onSaved,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EditObjectLocationMap(
      onSaved: onSaved,
      initialObject: initialFamily,
      getLocation: (f) => f.geolocation,
      copyWithNewLocation: (f, l) => f.copyWith(geolocation: l),
      geomapOptions: GeomapOptions(
        layers: const {
          GeoMapLayer.areas,
          GeoMapLayer.streets,
        },
      ),
    );
  }
}
