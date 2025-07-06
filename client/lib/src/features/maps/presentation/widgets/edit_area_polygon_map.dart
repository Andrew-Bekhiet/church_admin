import 'package:church_admin/church_admin.dart' as ca show Polygon;
import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter/material.dart';

class EditAreaPolygonMap extends StatelessWidget {
  final Area initialArea;
  final GeomapOptions geomapOptions;
  final void Function(Area) onSaved;

  const EditAreaPolygonMap({
    required this.geomapOptions,
    required this.initialArea,
    required this.onSaved,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EditObjectPointsMap(
      overrideResponseObjects: (response, resultAreaStream) {
        return resultAreaStream.map(
          (resultAreaValue) =>
              (response ?? const PersonsGeolocationsResponse()).copyWith(
            areas: {
              ...response?.areas.where((s) => s.id != resultAreaValue.id) ?? {},
              resultAreaValue,
            },
          ),
        );
      },
      initialObject: initialArea,
      geomapOptions: geomapOptions,
      getObjectPoints: (area) => area.bounds?.coordinates,
      onSaved: onSaved,
      onModify: (newCoords, resultArea) {
        return resultArea.copyWith(
          bounds: ca.Polygon(newCoords),
        );
      },
      closedShape: true,
    );
  }
}
