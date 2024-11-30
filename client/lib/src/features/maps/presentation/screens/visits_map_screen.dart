import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class VisitsMapScreen extends StatelessWidget {
  const VisitsMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewGeodataMap(
      initialGeomapOptions: GeomapOptions(
        layers: GeoMapLayer.values.toSet(),
      ),
    );
  }
}
