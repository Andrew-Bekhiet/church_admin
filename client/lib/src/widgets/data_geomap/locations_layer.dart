part of 'data_geomap.dart';

class _LocationsLayer extends StatefulWidget {
  const _LocationsLayer({
    required this.currentGeomapOptions,
    required this.families,
    required this.mapController,
    required this.stores,
    required this.persons,
    this.focusedLocationStream,
  });

  final GeomapOptions currentGeomapOptions;
  final Set<Family> families;
  final MapController mapController;
  final Set<Store> stores;
  final Set<Person> persons;
  final BehaviorSubject<Point?>? focusedLocationStream;

  @override
  State<_LocationsLayer> createState() => _LocationsLayerState();
}

class _LocationsLayerState extends State<_LocationsLayer>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MarkerLayer(
      rotate: true,
      markers: [
        if (widget.currentGeomapOptions.layers.contains(GeoMapLayer.families))
          ...widget.families.where((f) => f.geolocation != null).map(
                (f) => _buildMarkerWith(f, f.geolocation!),
              ),
        if (widget.currentGeomapOptions.layers.contains(GeoMapLayer.stores))
          ...widget.stores.where((f) => f.geolocation != null).map(
                (s) => _buildMarkerWith(s, s.geolocation!),
              ),
        if (widget.currentGeomapOptions.layers.contains(GeoMapLayer.persons))
          ...widget.persons.where((f) => f.geolocation != null).map(
                (p) => _buildMarkerWith(p, p.geolocation!),
              ),
      ],
    );
  }

  Marker _buildMarkerWith(Viewable object, Point geolocation) {
    return markerFromPoint(
      geolocation,
      (context) => StreamBuilder<Point?>(
        stream: widget.focusedLocationStream,
        builder: (context, snapshot) {
          return ObjectMarkerWidget(
            isFocused: snapshot.data == geolocation,
            object: object,
            afterTap: () {
              widget.focusedLocationStream?.value = geolocation;

              _animatedMapMove(
                LatLng(
                  geolocation.latitude,
                  geolocation.longitude,
                ),
                widget.mapController.zoom,
              );
            },
          );
        },
      ),
    );
  }

  void _animatedMapMove(LatLng destLocation, double destZoom) {
    final latTween = Tween<double>(
      begin: widget.mapController.center.latitude,
      end: destLocation.latitude,
    );
    final lngTween = Tween<double>(
      begin: widget.mapController.center.longitude,
      end: destLocation.longitude,
    );
    final zoomTween =
        Tween<double>(begin: widget.mapController.zoom, end: destZoom);

    final controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    final Animation<double> animation =
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

    controller.addListener(() {
      widget.mapController.move(
        LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)),
        zoomTween.evaluate(animation),
      );
    });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.dispose();
      } else if (status == AnimationStatus.dismissed) {
        controller.dispose();
      }
    });

    controller.forward();
  }
}
