import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter/material.dart';

import 'edit_object_points_map.dart';

class EditStreetLineMap extends StatelessWidget {
  final Street initialStreet;
  final GeomapOptions geomapOptions;
  final void Function(Street) onSaved;

  const EditStreetLineMap({
    required this.geomapOptions,
    required this.initialStreet,
    required this.onSaved,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EditObjectPointsMap(
      overrideResponseObjects: (response, resultStreetStream) {
        return resultStreetStream.map(
          (resultStreetValue) =>
              (response ?? PersonsGeolocationsResponse()).copyWith(
            streets: {
              ...response?.streets.where((s) => s.id != resultStreetValue.id) ??
                  {},
              resultStreetValue,
            },
          ),
        );
      },
      initialObject: initialStreet,
      geomapOptions: geomapOptions,
      getObjectPoints: (street) => street.line?.coordinates,
      onSaved: onSaved,
      onModify: (newCoords, resultStreet) {
        return resultStreet.copyWith(
          line: Line(newCoords),
        );
      },
    );
  }
}
