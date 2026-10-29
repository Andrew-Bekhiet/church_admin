import 'dart:async';

import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:church_admin/church_admin.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class GeomapFAB extends StatelessWidget {
  final Point focusedLocation;
  final bool hasUserLocation;

  const GeomapFAB({
    required this.focusedLocation,
    required this.hasUserLocation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final location = focusedLocation;

    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: FloatingActionButton.small(
        onPressed: () {
          AnalyticsService.I.track(
            MapsExternalNavigationStart(hasUserLocation: hasUserLocation),
          );
          unawaited(
            MapLauncher.marker(
              .coords(location.latitude, location.longitude),
            ).show(),
          );
        },
        child: const Icon(Symbols.map),
      ),
    );
  }
}
