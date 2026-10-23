import 'dart:async';

import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:rxdart/rxdart.dart';
import 'package:snapping_sheet_2/snapping_sheet.dart';

class EditObjectLocationMap<T extends ViewableWithID> extends StatefulWidget {
  final bool showSetToCurrentLocation;
  final T initialObject;
  final GeomapOptions geomapOptions;
  final void Function(T) onSaved;
  final T Function(T, Point) copyWithNewLocation;
  final Point? Function(T) getLocation;

  const EditObjectLocationMap({
    required this.geomapOptions,
    required this.initialObject,
    required this.onSaved,
    required this.copyWithNewLocation,
    required this.getLocation,
    this.showSetToCurrentLocation = false,
    super.key,
  });

  @override
  State<EditObjectLocationMap<T>> createState() => _EditObjectLocationMap<T>();
}

class _EditObjectLocationMap<T extends ViewableWithID>
    extends State<EditObjectLocationMap<T>>
    with TickerProviderStateMixin {
  late final BehaviorSubject<T> resultObject = BehaviorSubject.seeded(
    widget.initialObject,
  );

  late final _mapOptionsStream = BehaviorSubject.seeded(widget.geomapOptions);
  final _sheetScrollController = ScrollController();
  final BehaviorSubject<Position?> _userLocationSubject =
      BehaviorSubject.seeded(null);
  Point? _mapCenter;
  LocationSetMethod? _lastSetMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _save,
            icon: const Icon(Symbols.save),
            tooltip: 'حفظ',
          ),
        ],
        title: Text('تعديل ${widget.initialObject.name}'),
        bottom: EditLocationActionsBar(
          userLocation: widget.showSetToCurrentLocation
              ? _userLocationSubject
              : null,
          onUseCurrentLocation: (position) => _setLocation(
            Point(position.latitude, position.longitude),
            LocationSetMethod.current,
          ),
          onPickFromMapsLink: () async {
            final location = await _getLocationFromGMapsLinkWithProgress();

            if (location == null) return;

            _setLocation(location, LocationSetMethod.link);
          },
        ),
      ),
      body: MapSnappingSheet(
        sheetBelow: SnappingSheetContent(
          draggable: (_) => true,
          childScrollController: _sheetScrollController,
          child: StreamBuilder<GeomapOptions>(
            initialData: _mapOptionsStream.value,
            stream: _mapOptionsStream,
            builder: (context, snapshot) {
              return EditGeomapOptionsWidget(
                mapOptions: snapshot.requireData,
                sheetScrollController: _sheetScrollController,
                apply: _mapOptionsStream.add,
              );
            },
          ),
        ),
        child: DataGeomap(
          initialPerson: widget.initialObject is Person
              ? widget.initialObject as Person
              : null,
          onUserLocationChanged: _userLocationSubject.add,
          geomapOptionsStream: _mapOptionsStream,
          addLayers: [
            StreamBuilder<T>(
              initialData: resultObject.value,
              stream: resultObject,
              builder: (context, snapshot) {
                final geolocation = widget.getLocation(snapshot.requireData);

                return MarkerLayer(
                  rotate: true,
                  markers: [
                    if (geolocation != null)
                      markerFromPoint(
                        geolocation,
                        ObjectMarkerWidget(
                          object: snapshot.requireData,
                          isFocused: true,
                          enableTap: false,
                        ),
                      ),
                  ],
                );
              },
            ),
          ],
          createMapOptions: (center) => MapOptions(
            onTap: (pos, point) => _setLocation(
              Point(point.latitude, point.longitude),
              LocationSetMethod.tap,
            ),
            maxZoom: 18,
            initialZoom: 14,
            interactionOptions: const InteractionOptions(
              flags: InteractiveFlag.all & ~InteractiveFlag.flingAnimation,
            ),
            initialCenter: center,
            onMapReady: () =>
                _mapCenter ??= Point(center.latitude, center.longitude),
            onPositionChanged: (camera, _) => _mapCenter = Point(
              camera.center.latitude,
              camera.center.longitude,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    unawaited(_mapOptionsStream.close());
    unawaited(_userLocationSubject.close());
    unawaited(resultObject.close());
    _sheetScrollController.dispose();

    super.dispose();
  }

  void _setLocation(Point location, LocationSetMethod method) {
    _lastSetMethod = method;
    AnalyticsService.I.track(LocationSet(resultObject.value, method));
    resultObject.value = widget.copyWithNewLocation(
      resultObject.value,
      location,
    );
  }

  void _save() {
    AnalyticsService.I.track(
      LocationSave(resultObject.value, lastSetMethod: _lastSetMethod),
    );
    widget.onSaved(resultObject.value);
  }

  Future<Point?> _getLocationFromGMapsLinkWithProgress() async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    final dialogResult = await showDialog<MapsLinkDialogResult>(
      context: context,
      builder: (context) => MapsLinkDialog(
        onClipboardLinkShow: (inputKind) => AnalyticsService.I.track(
          LocationClipboardLinkShow(resultObject.value, inputKind),
        ),
      ),
    );

    if (dialogResult == null) return null;
    final result = dialogResult.link;

    scaffoldMessenger.showSnackBar(
      const SnackBar(
        content: Row(
          children: [
            Expanded(child: Text('جار تحميل الموقع')),
            CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );

    final locationResult = Uri.tryParse(result) != null
        ? await LocationParsingService.I.maybeParseLocationUri(
            Uri.parse(result),
            reference: widget.getLocation(resultObject.value) ?? _mapCenter,
          )
        : null;

    scaffoldMessenger.hideCurrentSnackBar();
    AnalyticsService.I.track(
      LocationLinkParse(
        resultObject.value,
        inputKind: LocationLinkInputKind.of(result),
        isPrefilledFromClipboard: dialogResult.isPrefilledFromClipboard,
        isSuccess: locationResult != null,
      ),
    );

    if (locationResult == null) {
      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Row(
            children: [
              Expanded(child: Text('لم يتم العثور على الموقع')),
              Icon(Symbols.error, color: Colors.red),
            ],
          ),
        ),
      );
    } else {
      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Row(
            children: [
              Expanded(child: Text('تم العثور على الموقع')),
              Icon(Symbols.check, color: Colors.green),
            ],
          ),
        ),
      );
    }

    return locationResult;
  }
}
