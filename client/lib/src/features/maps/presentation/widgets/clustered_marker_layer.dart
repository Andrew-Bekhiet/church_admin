import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';

class ClusteredMarkerLayer extends StatelessWidget {
  final List<Marker> markers;
  final Marker? focusedMarker;

  const ClusteredMarkerLayer({
    required this.markers,
    this.focusedMarker,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MarkerClusterLayerWidget(
          options: MarkerClusterLayerOptions(
            markers: markers,
            rotate: true,
            size: const Size.square(40),
            markerChildBehavior: true,
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
