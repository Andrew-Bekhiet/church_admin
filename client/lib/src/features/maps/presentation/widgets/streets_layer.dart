part of 'data_geomap.dart';

class _StreetsLayer extends StatelessWidget {
  const _StreetsLayer({
    required this.streets,
  });

  final Set<Street> streets;

  @override
  Widget build(BuildContext context) {
    return PolylineLayer(
      polylines: streets
          .where((s) => s.line != null && s.line!.coordinates.isNotEmpty)
          .map(
            (s) => Polyline(
              color: s.color?.withOpacity(0.9) ?? Colors.transparent,
              strokeWidth: 2,
              points: s.line?.coordinates
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
