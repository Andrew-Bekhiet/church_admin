import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter/material.dart';

import 'edit_object_location_map.dart';

class EditStoreLocationMap extends StatelessWidget {
  final Store initialStore;
  final GeomapOptions geomapOptions;
  final void Function(Store) onSaved;

  const EditStoreLocationMap({
    required this.geomapOptions,
    required this.initialStore,
    required this.onSaved,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EditObjectLocationMap(
      onSaved: onSaved,
      initialObject: initialStore,
      getLocation: (s) => s.geolocation,
      copyWithNewLocation: (s, l) => s.copyWith(geolocation: l),
      geomapOptions: GeomapOptions(
        layers: const {
          GeoMapLayer.areas,
          GeoMapLayer.streets,
        },
      ),
    );
  }
}
