import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class GeomapFAB extends StatelessWidget {
  final Point focusedLocation;
  const GeomapFAB({
    required this.focusedLocation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final location = focusedLocation;

    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: FloatingActionButton.small(
        onPressed: () => MapLauncher.marker(
          .coords(location.latitude, location.longitude),
        ).show(),
        child: const Icon(Symbols.map),
      ),
    );
  }
}
