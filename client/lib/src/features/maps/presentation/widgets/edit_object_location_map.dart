import 'dart:async';

import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => widget.onSaved(resultObject.value),
            icon: const Icon(Symbols.save),
            tooltip: 'حفظ',
          ),
        ],
        title: Text('تعديل ${widget.initialObject.name}'),
        bottom: EditLocationActionsBar(
          userLocation: widget.showSetToCurrentLocation
              ? _userLocationSubject
              : null,
          onUseCurrentLocation: (position) =>
              resultObject.value = widget.copyWithNewLocation(
                resultObject.value,
                Point(position.latitude, position.longitude),
              ),
          onPickFromMapsLink: () async {
            final location = await _getLocationFromGMapsLinkWithProgress();

            if (location == null) return;

            resultObject.value = widget.copyWithNewLocation(
              resultObject.value,
              location,
            );
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
            onTap: (pos, point) {
              resultObject.value = widget.copyWithNewLocation(
                resultObject.value,
                Point(point.latitude, point.longitude),
              );
            },
            maxZoom: 18,
            initialZoom: 14,
            interactionOptions: const InteractionOptions(
              flags: InteractiveFlag.all & ~InteractiveFlag.flingAnimation,
            ),
            initialCenter: center,
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

  Future<Point?> _getLocationFromGMapsLinkWithProgress() async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    final result = await showDialog<String?>(
      context: context,
      builder: (context) => const MapsLinkDialog(),
    );

    if (result == null) return null;

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
          )
        : null;

    scaffoldMessenger.hideCurrentSnackBar();

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
