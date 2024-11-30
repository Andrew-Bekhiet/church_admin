part of 'data_geomap.dart';

class _AreasLayer extends StatelessWidget {
  const _AreasLayer({
    required this.areas,
  });

  final Set<Area> areas;

  @override
  Widget build(BuildContext context) {
    return PolygonLayer(
      polygons: areas
          .where((a) => a.bounds != null && a.bounds!.coordinates.isNotEmpty)
          .map(
            (a) => Polygon(
              rotateLabel: true,
              label: a.name,
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 21,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(4, 3),
                    blurRadius: 1.5,
                  ),
                ],
              ),
              color: a.color?.withOpacity(0.2) ?? Colors.transparent,
              borderStrokeWidth: 3,
              borderColor: a.color ?? Colors.black54,
              points: a.bounds?.coordinates
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
