import 'dart:async';
import 'dart:math' as math;

import 'package:async/async.dart';
import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart' hide Coords;
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:flutter_map_tile_caching/flutter_map_tile_caching.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rxdart/rxdart.dart';
import 'package:snapping_sheet/snapping_sheet.dart';
import 'package:tinycolor2/tinycolor2.dart';
import 'package:tuple/tuple.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:uuid/uuid.dart';

class DataGeomap extends StatefulWidget {
  final Area? initialArea;
  final Street? initialStreet;
  final Family? initialFamily;
  final Class? initialClass;
  final Service? initialService;
  final Group? initialGroup;
  final Person? initialPerson;
  final Set<GeoMapLayer> initialLayers;

  final bool editPerson;

  const DataGeomap({
    super.key,
    this.initialPerson,
    this.initialArea,
    this.initialStreet,
    this.initialFamily,
    this.initialClass,
    this.initialService,
    this.initialGroup,
    this.initialLayers = const {
      GeoMapLayer.areas,
      GeoMapLayer.streets,
      GeoMapLayer.families,
      GeoMapLayer.persons,
    },
    this.editPerson = false,
  })  : assert(
          initialPerson != null ||
              initialArea != null ||
              initialStreet != null ||
              initialFamily != null ||
              initialClass != null ||
              initialService != null ||
              initialGroup != null,
        ),
        assert(editPerson || initialPerson != null);

  @override
  _DataGeomapState createState() => _DataGeomapState();
}

class _DataGeomapState extends State<DataGeomap> with TickerProviderStateMixin {
  final _sheetScrollController = ScrollController();

  final _locationMemoizer = AsyncMemoizer<Position?>();

  final BehaviorSubject<Point?> _focusedLocation = BehaviorSubject.seeded(null);
  Point? _oldFocusedLocation;

  late final BehaviorSubject<GeoMapOptions> _mapOptions =
      BehaviorSubject.seeded(
    GeoMapOptions(
      layers: widget.initialLayers,
      selectedAreas: {
        if (widget.initialArea != null) widget.initialArea!,
      },
      selectedStreets: {
        if (widget.initialStreet != null) widget.initialStreet!,
      },
      selectedFamilies: {
        if (widget.initialFamily != null) widget.initialFamily!,
      },
      selectedClasses: {
        if (widget.initialClass != null) widget.initialClass!,
      },
      selectedServices: {
        if (widget.initialService != null) widget.initialService!,
      },
      selectedGroups: {
        if (widget.initialGroup != null) widget.initialGroup!,
      },
    ),
  );

  GeoMapOptions get _currentMapOptions => _mapOptions.value;

  final MapController _mapController = MapController();

  //Requests location permission, converts result to stream,
  //then fetches geolocations stream and combine the two results
  late final stream = Rx.combineLatest3(
    _locationMemoizer
        .runOnce(
          () async {
            final permissionStatus = await Permission.location.request();
            if (await Geolocator.isLocationServiceEnabled() &&
                (permissionStatus == PermissionStatus.granted ||
                    permissionStatus == PermissionStatus.limited)) {
              return Geolocator.getCurrentPosition();
            }
            return null;
          },
        )
        .asStream()
        .startWith(null),
    PackageInfo.fromPlatform().asStream(),
    _mapOptions.switchMap(
      (options) => CADatabaseRepository.I.persons.personsGeolocations(
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
        areasIds: options.selectedAreas.map((e) => UuidValue(e.id)).toList(),
        streetsIds:
            options.selectedStreets.map((e) => UuidValue(e.id)).toList(),
        familiesIds:
            options.selectedFamilies.map((e) => UuidValue(e.id)).toList(),
        classesIds:
            options.selectedClasses.map((e) => UuidValue(e.id)).toList(),
        servicesIds:
            options.selectedServices.map((e) => UuidValue(e.id)).toList(),
        groupsIds: options.selectedGroups.map((e) => UuidValue(e.id)).toList(),
      ),
    ),
    (location, packageInfo, data) =>
        Tuple3(packageInfo.packageName, location, data),
  );

  late BehaviorSubject<Person>? resultPerson =
      widget.editPerson ? BehaviorSubject.seeded(widget.initialPerson!) : null;

  void _animatedMapMove(LatLng destLocation, double destZoom) {
    final latTween = Tween<double>(
        begin: _mapController.center.latitude, end: destLocation.latitude);
    final lngTween = Tween<double>(
        begin: _mapController.center.longitude, end: destLocation.longitude);
    final zoomTween = Tween<double>(begin: _mapController.zoom, end: destZoom);

    final controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    final Animation<double> animation =
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

    controller.addListener(() {
      _mapController.move(
          LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)),
          zoomTween.evaluate(animation));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (widget.editPerson)
            IconButton(
              onPressed: () => Navigator.of(context).pop(resultPerson!.value),
              icon: const Icon(Icons.done),
              tooltip: 'حفظ',
            )
          else
            IconButton(
              onPressed: () => setState(() {}),
              icon: const Icon(Icons.refresh),
              tooltip: 'تحديث البيانات',
            ),
        ],
        title: const Text('خريطة الافتقاد'),
      ),
      body: SnappingSheet(
        snappingPositions: const [
          SnappingPosition.factor(
            positionFactor: 0,
            grabbingContentOffset: GrabbingContentOffset.top,
          ),
          SnappingPosition.factor(positionFactor: 0.15),
          SnappingPosition.factor(positionFactor: 0.5),
          SnappingPosition.factor(
            positionFactor: 1,
            grabbingContentOffset: GrabbingContentOffset.bottom,
          ),
        ],
        initialSnappingPosition:
            const SnappingPosition.factor(positionFactor: 0.15),
        grabbing: !widget.editPerson
            ? ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                child: ColoredBox(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Divider(
                        height: 50,
                        thickness: 3,
                        indent: MediaQuery.of(context).size.width * 1 / 3,
                        endIndent: MediaQuery.of(context).size.width * 1 / 3,
                      ),
                    ],
                  ),
                ),
              )
            : const SizedBox(),
        grabbingHeight: 50,
        onSheetMoved: (position) {
          if (position.relativeToSnappingPositions >= 0.06 &&
              _focusedLocation.value != null) {
            _oldFocusedLocation = _focusedLocation.value;
            _focusedLocation.value = null;
          } else if (position.relativeToSnappingPositions < 0.06 &&
              _focusedLocation.value == null &&
              _oldFocusedLocation != null) {
            _focusedLocation.value = _oldFocusedLocation;
            _oldFocusedLocation = null;
          }
        },
        sheetBelow: !widget.editPerson
            ? SnappingSheetContent(
                draggable: true,
                childScrollController: _sheetScrollController,
                child: StreamBuilder<GeoMapOptions>(
                  initialData: _currentMapOptions,
                  stream: _mapOptions,
                  builder: (context, snapshot) {
                    return _MapOptionsWidget(
                      mapOptions: snapshot.requireData,
                      sheetScrollController: _sheetScrollController,
                      apply: _mapOptions.add,
                    );
                  },
                ),
              )
            : null,
        child:
            StreamBuilder<Tuple3<String, Position?, Map<Type, Set<Object>>?>>(
          initialData: Tuple3(
            '',
            null,
            widget.initialPerson != null
                ? {
                    Person: {widget.initialPerson!}
                  }
                : {},
          ),
          stream: stream,
          builder: (context, data) {
            if (data.requireData.item3 == null) {
              return const Center(child: CircularProgressIndicator());
            }

            final packageName = data.requireData.item1;
            final currentLocation = data.requireData.item2;

            final locationsData = data.requireData.item3!;

            final areas = locationsData[Area]?.cast<Area>() ?? {};
            final streets = locationsData[Street]?.cast<Street>() ?? {};
            final families = locationsData[Family]?.cast<Family>() ?? {};
            final persons = locationsData[Person]?.cast<Person>() ?? {};

            return FlutterMap(
              mapController: _mapController,
              options: MapOptions(
                onTap: (pos, point) {
                  if (widget.editPerson) {
                    resultPerson!.value = resultPerson!.value.copyWith(
                      geolocation: Point(point.latitude, point.longitude),
                    );
                  } else {
                    _focusedLocation.value = null;
                  }
                },
                maxZoom: 18,
                zoom: 14,
                interactiveFlags:
                    InteractiveFlag.all & ~InteractiveFlag.flingAnimation,
                center: _getMapCenter(
                  location: currentLocation,
                  areas: areas,
                  streets: streets,
                  families: families,
                  persons: persons,
                ),
              ),
              nonRotatedChildren: [
                AttributionWidget.defaultWidget(
                  alignment: Alignment.topLeft,
                  source: 'OpenStreetMap',
                  onSourceTapped: () => GetIt.I<LauncherService>().launchUrl(
                    Uri.parse('https://openstreetmap.org/copyright'),
                  ),
                ),
              ],
              children: [
                TileLayer(
                  tileProvider: GetIt.I<FMTC>()['default'].getTileProvider(),
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: const ['a', 'b', 'c'],
                  userAgentPackageName: (packageName.isEmpty
                          ? 'com.AndroidQuartz.church_admin'
                          : packageName) +
                      ': ' +
                      _getPlatformName(),
                  fastReplace: true,
                  maxZoom: 19,
                  retinaMode: MediaQuery.of(context).devicePixelRatio > 1.0,
                ),
                PolygonLayer(
                  polygonCulling: true,
                  polygons: _currentMapOptions.layers
                          .contains(GeoMapLayer.areas)
                      ? areas
                          .map(
                            (a) => Polygon(
                              rotateLabel: true,
                              label: a.name,
                              isFilled: true,
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
                              color: a.color?.withOpacity(0.2) ??
                                  Colors.transparent,
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
                          .toList()
                      : [],
                ),
                PolylineLayer(
                  polylineCulling: true,
                  polylines: _currentMapOptions.layers
                          .contains(GeoMapLayer.streets)
                      ? streets
                          .map(
                            (s) => Polyline(
                              color: s.color?.withOpacity(0.9) ??
                                  Colors.transparent,
                              strokeWidth: 2,
                              points: s.line?.coordinates
                                      .map(
                                        (e) => LatLng(e.latitude, e.longitude),
                                      )
                                      .toList() ??
                                  [],
                            ),
                          )
                          .toList()
                      : [],
                ),
                if (currentLocation != null)
                  LocationMarkerLayerWidget(
                    options: LocationMarkerLayerOptions(),
                  ),
                if (widget.editPerson)
                  StreamBuilder<Person>(
                    initialData: resultPerson!.value,
                    stream: resultPerson,
                    builder: (context, snapshot) {
                      return MarkerLayer(
                        rotate: true,
                        markers: [
                          if (resultPerson!.value.geolocation != null)
                            Marker(
                              height: 50,
                              width: 50,
                              anchorPos: AnchorPos.align(AnchorAlign.top),
                              builder: (context) => _MarkerWidget(
                                isFocused: true,
                                enableTap: false,
                                object: snapshot.requireData,
                              ),
                              point: LatLng(
                                resultPerson!.value.geolocation!.latitude,
                                resultPerson!.value.geolocation!.longitude,
                              ),
                            )
                        ],
                      );
                    },
                  )
                else
                  MarkerLayer(
                    rotate: true,
                    markers: [
                      if (_currentMapOptions.layers
                          .contains(GeoMapLayer.families))
                        ...families.map(
                          (f) {
                            return Marker(
                              height: 50,
                              width: 50,
                              anchorPos: AnchorPos.align(AnchorAlign.top),
                              builder: (context) => StreamBuilder<Point?>(
                                stream: _focusedLocation,
                                builder: (context, snapshot) {
                                  return _MarkerWidget(
                                    isFocused: snapshot.data == f.geolocation,
                                    object: f,
                                    afterTap: () {
                                      _focusedLocation.value = f.geolocation;
                                      _animatedMapMove(
                                        LatLng(f.geolocation!.latitude,
                                            f.geolocation!.longitude),
                                        _mapController.zoom,
                                      );
                                    },
                                  );
                                },
                              ),
                              point: LatLng(
                                f.geolocation!.latitude,
                                f.geolocation!.longitude,
                              ),
                            );
                          },
                        ),
                      if (_currentMapOptions.layers
                          .contains(GeoMapLayer.persons))
                        ...persons.map(
                          (p) => Marker(
                            height: 50,
                            width: 50,
                            anchorPos: AnchorPos.align(AnchorAlign.top),
                            builder: (context) => StreamBuilder<Point?>(
                              stream: _focusedLocation,
                              builder: (context, snapshot) {
                                return _MarkerWidget(
                                  isFocused: snapshot.data == p.geolocation,
                                  object: p,
                                  afterTap: () {
                                    _focusedLocation.value = p.geolocation;
                                    _animatedMapMove(
                                      LatLng(p.geolocation!.latitude,
                                          p.geolocation!.longitude),
                                      _mapController.zoom,
                                    );
                                  },
                                );
                              },
                            ),
                            point: LatLng(
                              p.geolocation!.latitude,
                              p.geolocation!.longitude,
                            ),
                          ),
                        ),
                    ],
                  ),
              ],
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: StreamBuilder<Point?>(
        stream: _focusedLocation,
        builder: (context, locationData) {
          if (!locationData.hasData) return const SizedBox();

          final location = locationData.data!;

          return Padding(
            padding: const EdgeInsets.only(bottom: 28),
            child: FloatingActionButton.small(
              onPressed: () async {
                bool launched = false;
                try {
                  if (await MapLauncher.isMapAvailable(MapType.google) ??
                      false) {
                    await MapLauncher.showMarker(
                      mapType: MapType.google,
                      coords: Coords(location.latitude, location.longitude),
                      title: '',
                    );
                  } else if (await MapLauncher.isMapAvailable(MapType.apple) ??
                      false) {
                    await MapLauncher.showMarker(
                      mapType: MapType.apple,
                      coords: Coords(location.latitude, location.longitude),
                      title: '',
                    );
                  } else {
                    await GetIt.I<LauncherService>().launchUrl(
                      Uri(
                        scheme: 'https',
                        host: 'google.com',
                        pathSegments: ['maps', 'search', ''],
                        queryParameters: {
                          'api': '1',
                          'query': location.latitude.toString() +
                              ',' +
                              location.longitude.toString()
                        },
                      ),
                    );
                  }
                  launched = true;
                } finally {
                  if (!launched) {
                    await GetIt.I<LauncherService>().launchUrl(
                      Uri(
                        scheme: 'https',
                        host: 'google.com',
                        pathSegments: ['maps', 'search', ''],
                        queryParameters: {
                          'api': '1',
                          'query': location.latitude.toString() +
                              ',' +
                              location.longitude.toString()
                        },
                      ),
                    );
                  }
                }
              },
              child: const Icon(Icons.map),
            ),
          );
        },
      ),
    );
  }

  LatLng _getMapCenter({
    Position? location,
    Set<Area> areas = const {},
    Set<Street> streets = const {},
    Set<Family> families = const {},
    Set<Person> persons = const {},
  }) {
    if (location != null) {
      return LatLng(
        location.latitude,
        location.longitude,
      );
    } else if (areas.where((o) => o.bounds != null).isNotEmpty) {
      return getCentralGeoCoordinate(
        areas.where((o) => o.bounds != null).expand(
              (a) => a.bounds!.coordinates.map(
                (e) => LatLng(e.latitude, e.longitude),
              ),
            ),
      );
    } else if (streets.where((o) => o.line != null).isNotEmpty) {
      return getCentralGeoCoordinate(
        streets.where((o) => o.line != null).expand(
              (s) => s.line!.coordinates.map(
                (e) => LatLng(e.latitude, e.longitude),
              ),
            ),
      );
    } else if (families.where((o) => o.geolocation != null).isNotEmpty) {
      return getCentralGeoCoordinate(
        families.where((o) => o.geolocation != null).map(
              (f) => LatLng(f.geolocation!.latitude, f.geolocation!.longitude),
            ),
      );
    } else if (persons.where((o) => o.geolocation != null).isNotEmpty) {
      return getCentralGeoCoordinate(
        persons.where((o) => o.geolocation != null).map(
              (p) => LatLng(p.geolocation!.latitude, p.geolocation!.longitude),
            ),
      );
    } else {
      return LatLng(30.60109, 32.27371);
    }
  }

  @override
  Future<void> dispose() async {
    super.dispose();

    await _focusedLocation.close();
    await _mapOptions.close();
    await resultPerson?.close();
  }

  String _getPlatformName() {
    if (UniversalPlatform.isWeb) return 'web';
    if (UniversalPlatform.isAndroid) {
      return 'android';
    } else if (UniversalPlatform.isIOS) {
      return 'ios';
    } else if (UniversalPlatform.isWindows) {
      return 'windows';
    } else if (UniversalPlatform.isLinux) {
      return 'linux';
    } else if (UniversalPlatform.isMacOS) {
      return 'macos';
    } else if (UniversalPlatform.isFuchsia) {
      return 'fuchsia';
    }
    return 'unknown';
  }
}

class _MarkerWidget extends StatelessWidget {
  final Viewable object;
  final bool isFocused;
  final bool enableTap;
  final VoidCallback? afterTap;

  const _MarkerWidget({
    required this.object,
    required this.isFocused,
    this.enableTap = true,
    this.afterTap,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveColor =
        object.color ?? Theme.of(context).colorScheme.primary;
    final child = Stack(
      alignment: Alignment.center,
      children: [
        if (isFocused) ...[
          Positioned(
            width: 50,
            height: 50,
            child: Icon(
              Icons.location_pin,
              size: 50,
              color: effectiveColor.darken(50),
            ),
          ),
          Positioned(
            width: 47,
            height: 47,
            child: Icon(
              Icons.location_pin,
              size: 47,
              color: effectiveColor.brighten(50),
            ),
          ),
        ],
        Positioned(
          width: 40,
          height: 40,
          child: Icon(
            Icons.location_pin,
            size: 40,
            shadows: [
              if (!isFocused)
                Shadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(4, 3),
                  blurRadius: 3,
                ),
            ],
            color: effectiveColor,
          ),
        ),
      ],
    );

    if (!enableTap) return child;

    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(object.name),
            backgroundColor:
                object.color == Colors.transparent ? null : object.color,
            action: SnackBarAction(
              label: 'فتح',
              onPressed: () => GetIt.I<CAViewableObjectService>().onTap(object),
            ),
          ),
        );
        afterTap?.call();
      },
      child: child,
    );
  }
}

class _MapOptionsWidget extends StatefulWidget {
  const _MapOptionsWidget({
    required this.mapOptions,
    required this.sheetScrollController,
    required this.apply,
  });

  final GeoMapOptions mapOptions;
  final ScrollController sheetScrollController;
  final void Function(GeoMapOptions) apply;

  @override
  State<_MapOptionsWidget> createState() => _MapOptionsWidgetState();
}

class _MapOptionsWidgetState extends State<_MapOptionsWidget> {
  late GeoMapOptions stagingMapOptions = widget.mapOptions.copyWith();

  void Function(bool?)? _onChanged(GeoMapLayer value) =>
      stagingMapOptions.layers.length == 1 &&
              stagingMapOptions.layers.single == value
          ? null
          : (v) => setState(
                () => stagingMapOptions = stagingMapOptions.copyWith(
                  layers: v ?? false
                      ? stagingMapOptions.layers.union({value})
                      : stagingMapOptions.layers.difference({value}),
                ),
              );

  Future<List<T>?> _select<T extends ViewableWithID>({
    required DelegatingPaginatableStream<T> stream,
    required List<T> selected,
    required String title,
  }) async {
    final _search = BehaviorSubject<String?>.seeded(null);

    final _controller = ListController<void, T>(
      objectsPaginatableStream: stream,
      searchStream: _search.map((s) => s ?? ''),
    )..selectAll(selected);

    final rslt = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: StreamBuilder<String?>(
              stream: _search,
              builder: (context, searchData) {
                if (searchData.hasData) {
                  return TextFormField(
                    autofocus: true,
                    onChanged: _search.add,
                    textInputAction: TextInputAction.search,
                    style: DefaultTextStyle.of(context).style,
                    decoration: InputDecoration(
                      hintText: 'بحث ...',
                      hintStyle: DefaultTextStyle.of(context).style.copyWith(
                            color: Theme.of(context).hintColor,
                          ),
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () => _search.add(null),
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                  );
                }

                return Row(
                  children: [
                    Expanded(
                      child: Text(title),
                    ),
                    IconButton(
                      onPressed: () => _search.add(''),
                      icon: const Icon(Icons.search),
                    ),
                  ],
                );
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.select_all),
                onPressed: _controller.selectAll,
                tooltip: 'تحديد الكل',
              ),
              IconButton(
                icon: const Icon(Icons.check_box_outline_blank),
                onPressed: _controller.deselectAll,
                tooltip: 'تحديد لا شئ',
              ),
              IconButton(
                icon: const Icon(Icons.done),
                onPressed: () => Navigator.of(context).pop(true),
                tooltip: 'تم',
              ),
            ],
          ),
          body: DataObjectListViewBase(
            controller: _controller,
            autoDisposeController: false,
          ),
        ),
      ),
    );

    if (rslt == true) {
      unawaited(_controller.dispose().then((_) async {
        if (!_search.isClosed) await _search.close();
      }));

      return _controller.currentSelection?.whereType<T>().toList();
    }
    await _controller.dispose().then((_) async {
      if (!_search.isClosed) await _search.close();
    });

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        controller: widget.sheetScrollController,
        shrinkWrap: true,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'اعدادات الخريطة',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              OutlinedButton.icon(
                onPressed: stagingMapOptions != widget.mapOptions
                    ? () => widget.apply(stagingMapOptions)
                    : null,
                icon: const Icon(Icons.done),
                label: const Text('تطبيق'),
              ),
              const SizedBox(width: 20),
            ],
          ),
          ListTile(
            title: Text(
              'اختيار البيانات',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text('المناطق'),
                  subtitle: stagingMapOptions.selectedAreas.isEmpty
                      ? const Text('الكل')
                      : Text(
                          stagingMapOptions.selectedAreas
                              .take(10)
                              .map((e) => e.name)
                              .join(','),
                        ),
                  trailing: TextButton(
                    onPressed: () async {
                      final rslt = await _select<Area>(
                        stream: CADatabaseRepository.I.areas.getAreasStream(),
                        selected: stagingMapOptions.selectedAreas.toList(),
                        title: 'اختيار المناطق',
                      );

                      if (rslt != null) {
                        setState(
                          () {
                            stagingMapOptions = stagingMapOptions.copyWith(
                              selectedAreas: rslt.toSet(),
                            );
                          },
                        );
                      }
                    },
                    child: const Text('اختيار'),
                  ),
                ),
                ListTile(
                  title: const Text('الشوارع'),
                  subtitle: stagingMapOptions.selectedStreets.isEmpty
                      ? const Text('الكل')
                      : Text(
                          stagingMapOptions.selectedStreets
                              .take(10)
                              .map((e) => e.name)
                              .join(','),
                        ),
                  trailing: TextButton(
                    onPressed: () async {
                      final rslt = await _select<Street>(
                        stream:
                            CADatabaseRepository.I.streets.getStreetsStream(),
                        selected: stagingMapOptions.selectedStreets.toList(),
                        title: 'اختيار الشوارع',
                      );

                      if (rslt != null) {
                        setState(
                          () {
                            stagingMapOptions = stagingMapOptions.copyWith(
                              selectedStreets: rslt.toSet(),
                            );
                          },
                        );
                      }
                    },
                    child: const Text('اختيار'),
                  ),
                ),
                ListTile(
                  title: const Text('العائلات'),
                  subtitle: stagingMapOptions.selectedFamilies.isEmpty
                      ? const Text('الكل')
                      : Text(
                          stagingMapOptions.selectedFamilies
                              .take(10)
                              .map((e) => e.name)
                              .join(','),
                        ),
                  trailing: TextButton(
                    onPressed: () async {
                      final rslt = await _select<Family>(
                        stream:
                            CADatabaseRepository.I.families.getFamiliesStream(),
                        selected: stagingMapOptions.selectedFamilies.toList(),
                        title: 'اختيار العائلات',
                      );

                      if (rslt != null) {
                        setState(
                          () {
                            stagingMapOptions = stagingMapOptions.copyWith(
                              selectedFamilies: rslt.toSet(),
                            );
                          },
                        );
                      }
                    },
                    child: const Text('اختيار'),
                  ),
                ),
                const Divider(thickness: 1),
                ListTile(
                  title: const Text('الخدمات'),
                  subtitle: stagingMapOptions.selectedServices.isEmpty
                      ? const Text('الكل')
                      : Text(
                          stagingMapOptions.selectedServices
                              .take(10)
                              .map((e) => e.name)
                              .join(','),
                        ),
                  trailing: TextButton(
                    onPressed: () async {
                      final rslt = await _select<Service>(
                        stream:
                            CADatabaseRepository.I.services.getServicesStream(),
                        selected: stagingMapOptions.selectedServices.toList(),
                        title: 'اختيار الخدمات',
                      );

                      if (rslt != null) {
                        setState(
                          () {
                            stagingMapOptions = stagingMapOptions.copyWith(
                              selectedServices: rslt.toSet(),
                            );
                          },
                        );
                      }
                    },
                    child: const Text('اختيار'),
                  ),
                ),
                ListTile(
                  title: const Text('الفصول'),
                  subtitle: stagingMapOptions.selectedClasses.isEmpty
                      ? const Text('الكل')
                      : Text(
                          stagingMapOptions.selectedClasses
                              .take(10)
                              .map((e) => e.name)
                              .join(','),
                        ),
                  trailing: TextButton(
                    onPressed: () async {
                      final rslt = await _select<Class>(
                        stream:
                            CADatabaseRepository.I.classes.getClassesStream(),
                        selected: stagingMapOptions.selectedClasses.toList(),
                        title: 'اختيار الفصول',
                      );

                      if (rslt != null) {
                        setState(
                          () {
                            stagingMapOptions = stagingMapOptions.copyWith(
                              selectedClasses: rslt.toSet(),
                            );
                          },
                        );
                      }
                    },
                    child: const Text('اختيار'),
                  ),
                ),
                ListTile(
                  title: const Text('المجموعات'),
                  subtitle: stagingMapOptions.selectedGroups.isEmpty
                      ? const Text('الكل')
                      : Text(
                          stagingMapOptions.selectedGroups
                              .take(10)
                              .map((e) => e.name)
                              .join(','),
                        ),
                  trailing: TextButton(
                    onPressed: () async {
                      final rslt = await _select<Group>(
                        stream: CADatabaseRepository.I.groups.getGroupsStream(),
                        selected: stagingMapOptions.selectedGroups.toList(),
                        title: 'اختيار المجموعات',
                      );

                      if (rslt != null) {
                        setState(
                          () {
                            stagingMapOptions = stagingMapOptions.copyWith(
                              selectedGroups: rslt.toSet(),
                            );
                          },
                        );
                      }
                    },
                    child: const Text('اختيار'),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'الطبقات',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CheckboxListTile(
                  title: const Text('المناطق'),
                  value: stagingMapOptions.layers.contains(GeoMapLayer.areas),
                  onChanged: _onChanged(GeoMapLayer.areas),
                ),
                CheckboxListTile(
                  title: const Text('الشوارع'),
                  value: stagingMapOptions.layers.contains(GeoMapLayer.streets),
                  onChanged: _onChanged(GeoMapLayer.streets),
                ),
                CheckboxListTile(
                  title: const Text('العائلات'),
                  value:
                      stagingMapOptions.layers.contains(GeoMapLayer.families),
                  onChanged: _onChanged(GeoMapLayer.families),
                ),
                CheckboxListTile(
                  title: const Text('الأشخاص'),
                  value: stagingMapOptions.layers.contains(GeoMapLayer.persons),
                  onChanged: _onChanged(GeoMapLayer.persons),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

LatLng getCentralGeoCoordinate(Iterable<LatLng> geoCoordinates) {
  if (geoCoordinates.length == 1) {
    return geoCoordinates.single;
  }

  double x = 0;
  double y = 0;
  double z = 0;

  for (final geoCoordinate in geoCoordinates) {
    final latitude = geoCoordinate.latitude * math.pi / 180;
    final longitude = geoCoordinate.longitude * math.pi / 180;

    x += math.cos(latitude) * math.cos(longitude);
    y += math.cos(latitude) * math.sin(longitude);
    z += math.sin(latitude);
  }

  final total = geoCoordinates.length;

  x = x / total;
  y = y / total;
  z = z / total;

  final centralLongitude = math.atan2(y, x);
  final centralSquareRoot = math.sqrt(x * x + y * y);
  final centralLatitude = math.atan2(z, centralSquareRoot);

  return LatLng(
    centralLatitude * 180 / math.pi,
    centralLongitude * 180 / math.pi,
  );
}
