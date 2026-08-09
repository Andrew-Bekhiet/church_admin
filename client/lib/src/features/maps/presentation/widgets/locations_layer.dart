part of 'data_geomap.dart';

class _LocationsLayer<T extends Viewable> extends StatefulWidget {
  final Set<T> objects;
  final Point? currentFocusedLocation;
  final Point? Function(T) getLocation;

  const _LocationsLayer({
    required this.objects,
    required this.getLocation,
    this.afterTap,
    this.currentFocusedLocation,
  });
  final void Function(T, Point)? afterTap;

  @override
  State<_LocationsLayer<T>> createState() => _LocationsLayerState();
}

class _LocationsLayerState<T extends Viewable> extends State<_LocationsLayer<T>>
    with TickerProviderStateMixin {
  static const _tapRecencyDuration = Duration(seconds: 5);

  Set<Point> _recentlyTappedLocations = {};

  ({T? focusedObject, List<Marker> markers}) _splitFocusedObjectFromMarkers() {
    return widget.objects
        .map((o) => (object: o, location: widget.getLocation(o)))
        .where((element) => element.location != null)
        .fold(
          (markers: [], focusedObject: null),
          (acc, object) {
            final location = object.location!;
            final isFocused = widget.currentFocusedLocation == location;

            return (
              markers: [
                ...acc.markers,
                if (!isFocused)
                  _makeMarkerFromPoint(
                    isFocused: false,
                    location: location,
                    object: object.object,
                  ),
              ],
              focusedObject: isFocused ? object.object : acc.focusedObject,
            );
          },
        );
  }

  @override
  Widget build(BuildContext context) {
    final (:T? focusedObject, :List<Marker> markers) =
        _splitFocusedObjectFromMarkers();

    return MarkerLayer(
      rotate: true,
      markers: [
        ...markers,
        if (focusedObject != null && widget.currentFocusedLocation != null)
          _makeMarkerFromPoint(
            isFocused: true,
            location: widget.currentFocusedLocation!,
            object: focusedObject,
          ),
      ],
    );
  }

  Marker _makeMarkerFromPoint({
    required Point location,
    required bool isFocused,
    required T object,
  }) {
    return markerFromPoint(
      location,
      ObjectMarkerWidget(
        isFocused: isFocused,
        enableTap: !_recentlyTappedLocations.contains(location),
        object: object,
        afterTap: () async {
          _recentlyTappedLocations = _recentlyTappedLocations.union({location});

          unawaited(
            _animatedMapMove(
              LatLng(location.latitude, location.longitude),
            ),
          );

          widget.afterTap?.call(object, location);

          await Future.delayed(_tapRecencyDuration);

          if (!mounted) return;

          setState(() {
            _recentlyTappedLocations = _recentlyTappedLocations.difference({
              location,
            });
          });
        },
      ),
    );
  }

  Future<void> _animatedMapMove(LatLng destLocation) async {
    final mapController = MapController.of(context);
    final mapCamera = mapController.camera;

    final destZoom = mapCamera.zoom;

    final latTween = Tween<double>(
      begin: mapCamera.center.latitude,
      end: destLocation.latitude,
    );
    final lngTween = Tween<double>(
      begin: mapCamera.center.longitude,
      end: destLocation.longitude,
    );
    final zoomTween = Tween<double>(begin: mapCamera.zoom, end: destZoom);

    final animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    final Animation<double> animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    );

    void animationListener() {
      mapController.move(
        LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)),
        zoomTween.evaluate(animation),
      );
    }

    animationController.addListener(animationListener);

    await animationController.forward();
    animationController
      ..removeListener(animationListener)
      ..dispose();
  }
}
