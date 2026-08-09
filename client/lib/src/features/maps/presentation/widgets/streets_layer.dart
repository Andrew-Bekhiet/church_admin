part of 'data_geomap.dart';

class _StreetsLayer extends StatelessWidget {
  final Set<Street> streets;
  const _StreetsLayer({
    required this.streets,
  });

  @override
  Widget build(BuildContext context) {
    return PolylineLayer(
      polylines: streets
          .where((s) => s.line != null && s.line!.coordinates.isNotEmpty)
          .map(
            (s) => Polyline(
              color: s.color?.withValues(alpha: 0.9) ?? Colors.transparent,
              strokeWidth: 2,
              points:
                  s.line?.coordinates
                      .map(
                        (e) => LatLng(e.latitude, e.longitude),
                      )
                      .toList() ??
                  [],
            ),
          )
          .toList(),
    );
  }
}
