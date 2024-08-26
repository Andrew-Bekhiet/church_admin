import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VisitsMapScreen extends StatelessWidget {
  static const TypedGoRoute<VisitsMapRoute> route =
      TypedGoRoute<VisitsMapRoute>(path: 'visits_map');

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
