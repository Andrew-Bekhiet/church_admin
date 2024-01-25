import 'dart:async';

import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rxdart/rxdart.dart';
import 'package:snapping_sheet_2/snapping_sheet.dart';

import 'data_geomap.dart';
import 'edit_geomap_options_widget.dart';
import 'object_marker_widget.dart';
import 'snapping_sheet.dart';
import 'utils.dart';

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
  _EditObjectLocationMap createState() => _EditObjectLocationMap<T>();
}

class _EditObjectLocationMap<T extends ViewableWithID>
    extends State<EditObjectLocationMap<T>> with TickerProviderStateMixin {
  late final BehaviorSubject<T> resultObject =
      BehaviorSubject.seeded(widget.initialObject);

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
            icon: const Icon(Icons.save),
            tooltip: 'حفظ',
          ),
        ],
        title: Text('تعديل ${widget.initialObject.name}'),
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
      floatingActionButton: widget.showSetToCurrentLocation
          ? StreamBuilder<Position?>(
              stream: _userLocationSubject,
              builder: (context, locationSnapshot) {
                if (locationSnapshot.hasData) {
                  return FloatingActionButton.small(
                    onPressed: () {
                      resultObject.value = widget.copyWithNewLocation(
                        resultObject.value,
                        Point(
                          locationSnapshot.requireData!.latitude,
                          locationSnapshot.requireData!.longitude,
                        ),
                      );
                    },
                    child: const Icon(Icons.my_location),
                  );
                }

                return const SizedBox();
              },
            )
          : null,
    );
  }

  @override
  Future<void> dispose() async {
    super.dispose();

    await _mapOptionsStream.close();
    await _userLocationSubject.close();
    await resultObject.close();
  }
}
