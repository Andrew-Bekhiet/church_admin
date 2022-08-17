import 'dart:async';
import 'dart:math' as math;

import 'package:async/async.dart';
import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:rxdart/rxdart.dart';
import 'package:snapping_sheet/snapping_sheet.dart';
import 'package:tuple/tuple.dart';
import 'package:uuid/uuid.dart';

class DataGeomap extends StatefulWidget {
  final Area? initialArea;
  final Street? initialStreet;
  final Family? initialFamily;
  final Class? initialClass;
  final Service? initialService;
  final Group? initialGroup;
  final Person? initialPerson;

  const DataGeomap({
    super.key,
    this.initialPerson,
    this.initialArea,
    this.initialStreet,
    this.initialFamily,
    this.initialClass,
    this.initialService,
    this.initialGroup,
  }) : assert(initialPerson != null ||
            initialArea != null ||
            initialStreet != null ||
            initialFamily != null ||
            initialClass != null ||
            initialService != null ||
            initialGroup != null);

  @override
  _DataGeomapState createState() => _DataGeomapState();
}

class _DataGeomapState extends State<DataGeomap> {
  final _sheetScrollController = ScrollController();

  final _locationMemoizer = AsyncMemoizer<LocationData?>();

  late GeoMapOptions _mapOptions = GeoMapOptions(
    layers: {
      GeoMapLayer.areas,
      GeoMapLayer.streets,
      GeoMapLayer.families,
      GeoMapLayer.persons,
    },
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
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
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
            const SnappingPosition.factor(positionFactor: 0),
        grabbing: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          child: ColoredBox(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Divider(
                  height: 30,
                  thickness: 3,
                  indent: MediaQuery.of(context).size.width * 1 / 3,
                  endIndent: MediaQuery.of(context).size.width * 1 / 3,
                ),
              ],
            ),
          ),
        ),
        grabbingHeight: 50,
        sheetBelow: SnappingSheetContent(
          draggable: true,
          childScrollController: _sheetScrollController,
          child: _MapOptionsWidget(
            mapOptions: _mapOptions,
            sheetScrollController: _sheetScrollController,
            apply: (o) => setState(() => _mapOptions = o),
          ),
        ),
        child: StreamBuilder<Tuple2<LocationData?, List<Person>?>>(
          initialData: Tuple2(
            null,
            [
              if (widget.initialPerson != null) widget.initialPerson!,
            ],
          ),
          //Requests location permission, converts result to stream,
          //then fetches geolocations stream and combine the two results
          stream: _locationMemoizer
              .runOnce(
                () async {
                  final location = await Location.instance
                      .requestPermission()
                      .then((perm) async {
                    if (perm == PermissionStatus.granted ||
                        perm == PermissionStatus.grantedLimited) {
                      return Location.instance.getLocation();
                    }
                    return null;
                  });
                  return location;
                },
              )
              .asStream()
              .switchMap(
                (location) => CADatabaseRepository.I.persons
                    .personsGeolocations(
                      personId: _mapOptions.selectedAreas.isEmpty &&
                              _mapOptions.selectedStreets.isEmpty &&
                              _mapOptions.selectedFamilies.isEmpty &&
                              _mapOptions.selectedClasses.isEmpty &&
                              _mapOptions.selectedGroups.isEmpty &&
                              _mapOptions.selectedServices.isEmpty
                          ? widget.initialPerson?.id
                          : null,
                      areasIds: _mapOptions.selectedAreas
                          .map((e) => UuidValue(e.id))
                          .toList(),
                      streetsIds: _mapOptions.selectedStreets
                          .map((e) => UuidValue(e.id))
                          .toList(),
                      familiesIds: _mapOptions.selectedFamilies
                          .map((e) => UuidValue(e.id))
                          .toList(),
                      classesIds: _mapOptions.selectedClasses
                          .map((e) => UuidValue(e.id))
                          .toList(),
                      servicesIds: _mapOptions.selectedServices
                          .map((e) => UuidValue(e.id))
                          .toList(),
                      groupsIds: _mapOptions.selectedGroups
                          .map((e) => UuidValue(e.id))
                          .toList(),
                    )
                    .map((persons) => Tuple2(location, persons)),
              ),
          builder: (context, data) {
            if (data.requireData.item2 == null) {
              return const Center(child: CircularProgressIndicator());
            }

            final location = data.requireData.item1;
            final persons = data.requireData.item2!;

            return GoogleMap(
              myLocationEnabled: true,
              polygons: _mapOptions.layers.contains(GeoMapLayer.areas)
                  ? persons
                      .map(
                        (p) =>
                            p.areas?.where((a) => a.bounds != null).map(
                                  (e) => Polygon(
                                    polygonId: PolygonId(e.id),
                                    fillColor: e.color?.withOpacity(0.2) ??
                                        Colors.transparent,
                                    strokeColor: e.color ?? Colors.black54,
                                    strokeWidth: 1,
                                    points: e.bounds?.coordinates
                                            .map(
                                              (e) => LatLng(
                                                  e.latitude, e.longitude),
                                            )
                                            .toList() ??
                                        [],
                                  ),
                                ) ??
                            [],
                      )
                      .expand((p) => p)
                      .toSet()
                  : {},
              polylines: _mapOptions.layers.contains(GeoMapLayer.streets)
                  ? persons
                      .map(
                        (p) =>
                            p.streets?.where((s) => s.line != null).map(
                                  (e) => Polyline(
                                    endCap: Cap.roundCap,
                                    startCap: Cap.roundCap,
                                    jointType: JointType.round,
                                    polylineId: PolylineId(e.id),
                                    color: e.color?.withOpacity(0.9) ??
                                        Colors.transparent,
                                    width: 2,
                                    points: e.line?.coordinates
                                            .map(
                                              (e) => LatLng(
                                                  e.latitude, e.longitude),
                                            )
                                            .toList() ??
                                        [],
                                  ),
                                ) ??
                            [],
                      )
                      .expand((p) => p)
                      .toSet()
                  : {},
              markers: {
                if (_mapOptions.layers.contains(GeoMapLayer.persons))
                  ...persons.where((p) => p.geolocation != null).map(
                        (p) => Marker(
                          onTap: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(p.name),
                                backgroundColor: p.color == Colors.transparent
                                    ? null
                                    : p.color,
                                action: SnackBarAction(
                                  label: 'فتح',
                                  onPressed: () =>
                                      GetIt.I<CAViewableObjectService>()
                                          .onTap(p),
                                ),
                              ),
                            );
                          },
                          markerId: MarkerId(p.id),
                          infoWindow: InfoWindow(title: p.name),
                          position: LatLng(
                            p.geolocation!.latitude,
                            p.geolocation!.longitude,
                          ),
                        ),
                      ),
                if (_mapOptions.layers.contains(GeoMapLayer.families))
                  ...persons.where((p) => p.family?.geolocation != null).map(
                    (f) {
                      final p = f.family!;

                      return Marker(
                        onTap: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(p.name),
                              backgroundColor: p.color == Colors.transparent
                                  ? null
                                  : p.color,
                              action: SnackBarAction(
                                label: 'فتح',
                                onPressed: () =>
                                    GetIt.I<CAViewableObjectService>().onTap(p),
                              ),
                            ),
                          );
                        },
                        markerId: MarkerId(p.id),
                        infoWindow: InfoWindow(title: p.name),
                        position: LatLng(
                          p.geolocation!.latitude,
                          p.geolocation!.longitude,
                        ),
                      );
                    },
                  ),
              },
              initialCameraPosition: CameraPosition(
                zoom: 13,
                target: location != null
                    ? LatLng(
                        location.latitude!,
                        location.longitude!,
                      )
                    : persons.any((p) => p.geolocation != null)
                        ? getCentralGeoCoordinate(
                            persons.where((p) => p.geolocation != null).map(
                                  (p) => LatLng(p.geolocation!.latitude,
                                      p.geolocation!.longitude),
                                ),
                          )
                        : const LatLng(30.60109, 32.27371),
              ),
            );
          },
        ),
      ),
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
