import 'dart:async';

import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class GeomapFAB extends StatelessWidget {
  const GeomapFAB({
    required this.onFocusedLocationChange,
    super.key,
  });

  final BehaviorSubject<Point?> onFocusedLocationChange;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Point?>(
      stream: onFocusedLocationChange,
      builder: (context, locationData) {
        if (!locationData.hasData) return const SizedBox();

        final location = locationData.data!;

        return Padding(
          padding: const EdgeInsets.only(bottom: 28),
          child: FloatingActionButton.small(
            onPressed: _onTap(location),
            child: const Icon(Symbols.map),
          ),
        );
      },
    );
  }

  Future<void> Function() _onTap(Point location) => () async {
        bool launched = false;

        try {
          if (await MapLauncher.isMapAvailable(MapType.google) ?? false) {
            await _showMarker(location, MapType.google);
            launched = true;
          } else if (await MapLauncher.isMapAvailable(MapType.apple) ?? false) {
            await _showMarker(location, MapType.apple);
            launched = true;
          }
        } finally {
          if (!launched) {
            await LauncherService.I.launchUrl(
              Uri(
                scheme: 'https',
                host: 'google.com',
                pathSegments: ['maps', 'search', ''],
                queryParameters: {
                  'api': '1',
                  'query': location.latitude.toString() +
                      ',' +
                      location.longitude.toString(),
                },
              ),
            );
          }
        }
      };

  Future<void> _showMarker(Point location, MapType mapType) {
    return MapLauncher.showMarker(
      mapType: mapType,
      coords: Coords(location.latitude, location.longitude),
      title: '',
    );
  }
}
