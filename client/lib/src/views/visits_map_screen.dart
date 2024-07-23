import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VisitsMapScreen extends StatelessWidget {
  static final GoRoute route = GoRoute(
    path: 'visits_map',
    builder: (context, state) => const VisitsMapScreen(),
  );

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
