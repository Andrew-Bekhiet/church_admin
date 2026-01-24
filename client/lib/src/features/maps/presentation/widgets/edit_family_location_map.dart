import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter/material.dart';

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
      showSetToCurrentLocation: true,
      onSaved: onSaved,
      initialObject: initialFamily,
      getLocation: (f) => f.geolocation,
      copyWithNewLocation: (f, l) => f.copyWith(
        address: f.address?.copyWith(geolocation: l) ?? Address(geolocation: l),
      ),
      geomapOptions: geomapOptions,
    );
  }
}
