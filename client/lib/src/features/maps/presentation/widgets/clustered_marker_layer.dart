import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';

class ClusteredMarkerLayer extends StatelessWidget {
  static const double _fallbackMaxZoom = 18;

  final List<Marker> markers;
  final Marker? focusedMarker;

  const ClusteredMarkerLayer({
    required this.markers,
    this.focusedMarker,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final maxZoom = MapOptions.of(context).maxZoom ?? _fallbackMaxZoom;
    final lastClusteredZoom = maxZoom.floor() - 1;

    return Stack(
      children: [
        MarkerClusterLayerWidget(
          options: MarkerClusterLayerOptions(
            markers: markers,
            rotate: true,
            size: const Size.square(40),
            markerChildBehavior: true,
            spiderfyCluster: false,
            maxZoom: maxZoom,
            disableClusteringAtZoom: lastClusteredZoom,
            builder: (context, markers) =>
                MarkerClusterBadge(count: markers.length),
          ),
        ),
        if (focusedMarker case final focusedMarker?)
          MarkerLayer(rotate: true, markers: [focusedMarker]),
      ],
    );
  }
}
