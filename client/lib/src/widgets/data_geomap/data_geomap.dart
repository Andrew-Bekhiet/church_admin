import 'dart:async';

import 'package:async/async.dart';
import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:flutter_map_tile_caching/flutter_map_tile_caching.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

import 'object_marker_widget.dart';
import 'utils.dart';

part 'areas_layer.dart';
part 'locations_layer.dart';
part 'map_stream_response.dart';
part 'streets_layer.dart';

class DataGeomap extends StatefulWidget {
  final Person? initialPerson;
  final ValueStream<GeomapOptions> geomapOptionsStream;
  final BehaviorSubject<Point?>? focusedLocationStream;
  final MapOptions Function(LatLng?)? createMapOptions;
  final List<Widget> addLayers;
  final Stream<PersonsGeolocationsResponse?> Function(
    PersonsGeolocationsResponse?,
  )? overrideResponseObjects;

  final bool showUserLocation;

  const DataGeomap({
    required this.geomapOptionsStream,
    this.initialPerson,
    this.focusedLocationStream,
    this.createMapOptions,
    this.addLayers = const [],
    this.overrideResponseObjects,
    this.showUserLocation = true,
    super.key,
  });

  @override
  State<DataGeomap> createState() => DataGeomapState();
}

class DataGeomapState extends State<DataGeomap> {
  final MapController _mapController = MapController();

  final _locationMemoizer = AsyncMemoizer<Position?>();

  late final Stream<_MapStreamResponse>? stream = Rx.combineLatest2(
    _getUserLocationStream(),
    _getObjectsLocationsStream(),
    _MapStreamResponse.new,
  );

  GeomapOptions get _currentMapOptions => widget.geomapOptionsStream.value;

  String get packageName =>
      globalProviderContainer.read(packageInfoPluginProvider).packageName;

  late final _userLocationStream =
      const LocationMarkerDataStreamFactory().fromGeolocatorPositionStream();
  late final _userLocationHeadingStream =
      const LocationMarkerDataStreamFactory().fromCompassHeadingStream();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<_MapStreamResponse>(
      initialData: _MapStreamResponse(
        null,
        widget.initialPerson != null
            ? PersonsGeolocationsResponse(
                persons: {widget.initialPerson!},
                streets: _currentMapOptions.selectedStreets,
                families: _currentMapOptions.selectedFamilies,
                stores: _currentMapOptions.selectedStores,
                areas: _currentMapOptions.selectedAreas,
              )
            : PersonsGeolocationsResponse(
                streets: _currentMapOptions.selectedStreets,
                families: _currentMapOptions.selectedFamilies,
                stores: _currentMapOptions.selectedStores,
                areas: _currentMapOptions.selectedAreas,
              ),
      ),
      stream: stream,
      builder: (context, data) {
        if (data.requireData.personsGeolocationsResponse == null) {
          return const Center(child: CircularProgressIndicator());
        }

        final currentLocation = data.requireData.location;
        final locationsData = data.requireData.personsGeolocationsResponse!;

        final areas = locationsData.areas;
        final streets = locationsData.streets;
        final families = locationsData.families;
        final stores = locationsData.stores;
        final persons = locationsData.persons;

        return FlutterMap(
          mapController: _mapController,
          options: _getMapOptions(
            currentLocation: currentLocation,
            areas: areas,
            streets: streets,
            families: families,
            stores: stores,
            persons: persons,
          ),
          nonRotatedChildren: [
            SimpleAttributionWidget(
              alignment: Alignment.topLeft,
              source: const Text('OpenStreetMap'),
              onTap: () => globalProviderContainer
                  .read(launcherServiceProvider)
                  .launchUrl(
                    Uri.parse('https://openstreetmap.org/copyright'),
                  ),
            ),
          ],
          children: [
            TileLayer(
              tileProvider: FMTC.instance['default'].getTileProvider(),
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: const ['a', 'b', 'c'],
              userAgentPackageName: (packageName.isEmpty
                      ? 'com.AndroidQuartz.church_admin'
                      : packageName) +
                  ': ' +
                  CurrentPlatformService.I.effectiveValue.name,
              maxZoom: 19,
              retinaMode: MediaQuery.of(context).devicePixelRatio > 1.0,
            ),
            if (_currentMapOptions.layers.contains(GeoMapLayer.areas))
              _AreasLayer(areas: areas),
            if (_currentMapOptions.layers.contains(GeoMapLayer.streets))
              _StreetsLayer(streets: streets),
            if (currentLocation != null)
              CurrentLocationLayer(
                positionStream: _userLocationStream,
                headingStream: _userLocationHeadingStream,
              ),
            _LocationsLayer(
              currentGeomapOptions: _currentMapOptions,
              families: families,
              mapController: _mapController,
              stores: stores,
              persons: persons,
              focusedLocationStream: widget.focusedLocationStream,
            ),
            ...widget.addLayers,
          ],
        );
      },
    );
  }

  MapOptions _getMapOptions({
    required Set<Area> areas,
    required Set<Street> streets,
    required Set<Family> families,
    required Set<Store> stores,
    required Set<Person> persons,
    Position? currentLocation,
  }) {
    final center = getMapCenter(
      userLocation: currentLocation,
      areas: areas,
      streets: streets,
      families: families,
      stores: stores,
      persons: persons,
    );

    return widget.createMapOptions?.call(center) ??
        MapOptions(
          onTap: (pos, point) {
            widget.focusedLocationStream?.value = null;
          },
          maxZoom: 18,
          zoom: 14,
          interactiveFlags:
              InteractiveFlag.all & ~InteractiveFlag.flingAnimation,
          center: center,
        );
  }

  Stream<Position?> _getUserLocationStream() {
    return _locationMemoizer
        .runOnce(_requestLocationPermission)
        .asStream()
        .startWith(null);
  }

  Future<Position?> _requestLocationPermission() async {
    if (!widget.showUserLocation) return null;

    final permissionStatus = await Permission.location.request();
    if (await Geolocator.isLocationServiceEnabled() &&
        (permissionStatus == PermissionStatus.granted ||
            permissionStatus == PermissionStatus.limited)) {
      return Geolocator.getCurrentPosition();
    }
    return null;
  }

  Stream<PersonsGeolocationsResponse?> _getObjectsLocationsStream() {
    return widget.overrideResponseObjects != null
        ? widget.geomapOptionsStream
            .asyncMap(_getPersonsLocations)
            .switchMap(widget.overrideResponseObjects!)
        : widget.geomapOptionsStream.asyncMap(_getPersonsLocations);
  }

  Future<PersonsGeolocationsResponse?> _getPersonsLocations(
    GeomapOptions options,
  ) {
    return DatabaseService.I.persons.personsGeolocations(
      personId: options.selectedAreas.isEmpty &&
              options.selectedStreets.isEmpty &&
              options.selectedFamilies.isEmpty &&
              options.selectedClasses.isEmpty &&
              options.selectedGroups.isEmpty &&
              options.selectedServices.isEmpty
          ? widget.initialPerson?.id
          : null,
      getAreas: options.layers.contains(GeoMapLayer.areas),
      getFamilies: options.layers.contains(GeoMapLayer.families),
      getStreets: options.layers.contains(GeoMapLayer.streets),
      getPersons: options.layers.contains(GeoMapLayer.persons),
      getStores: options.layers.contains(GeoMapLayer.stores),
      areasIds: options.selectedAreas.map((e) => UuidValue(e.id)).toList(),
      streetsIds: options.selectedStreets.map((e) => UuidValue(e.id)).toList(),
      familiesIds:
          options.selectedFamilies.map((e) => UuidValue(e.id)).toList(),
      storesIds: options.selectedStores.map((e) => UuidValue(e.id)).toList(),
      classesIds: options.selectedClasses.map((e) => UuidValue(e.id)).toList(),
      servicesIds:
          options.selectedServices.map((e) => UuidValue(e.id)).toList(),
      groupsIds: options.selectedGroups.map((e) => UuidValue(e.id)).toList(),
    );
  }
}
