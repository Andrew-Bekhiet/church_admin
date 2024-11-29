import 'dart:async';

import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_dragmarker/flutter_map_dragmarker.dart';
import 'package:latlong2/latlong.dart';
import 'package:rxdart/rxdart.dart';
import 'package:snapping_sheet_2/snapping_sheet.dart';


class EditObjectPointsMap<T extends ViewableWithID> extends StatefulWidget {
  final T initialObject;
  final GeomapOptions geomapOptions;
  final void Function(T) onSaved;

  final Stream<PersonsGeolocationsResponse?> Function(
    PersonsGeolocationsResponse?,
    Stream<T>,
  ) overrideResponseObjects;
  final List<Point>? Function(T) getObjectPoints;
  final T Function(List<Point>, T) onModify;
  final bool closedShape;

  const EditObjectPointsMap({
    required this.geomapOptions,
    required this.initialObject,
    required this.onSaved,
    required this.overrideResponseObjects,
    required this.getObjectPoints,
    required this.onModify,
    this.closedShape = false,
    super.key,
  });

  @override
  _EditObjectPointsMap createState() => _EditObjectPointsMap<T>();
}

class _EditObjectPointsMap<T extends ViewableWithID>
    extends State<EditObjectPointsMap<T>> with TickerProviderStateMixin {
  final _sheetScrollController = ScrollController();

  late final BehaviorSubject<T> resultObject =
      BehaviorSubject.seeded(widget.initialObject);

  late final points = widget
          .getObjectPoints(widget.initialObject)
          ?.map((e) => LatLng(e.latitude, e.longitude))
          .toList() ??
      [];

  late final BehaviorSubject<GeomapOptions> _mapOptionsStream =
      BehaviorSubject.seeded(widget.geomapOptions);

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
          geomapOptionsStream: _mapOptionsStream,
          overrideResponseObjects: (r) =>
              widget.overrideResponseObjects(r, resultObject.stream),
          addLayers: [
            StreamBuilder<T>(
              initialData: resultObject.value,
              stream: resultObject,
              builder: (context, snapshot) {
                final points = widget.getObjectPoints(snapshot.requireData);

                const markerSize = 20.0;

                return DragMarkers(
                  markers: points
                          ?.mapIndexed(
                            _createMarkerFromPoint(markerSize, points),
                          )
                          .expand((p) => p)
                          .toList() ??
                      [],
                );
              },
            ),
          ],
          createMapOptions: (center) => MapOptions(
            onTap: (_, latlng) {
              resultObject.value = widget.onModify(
                [
                  ...widget.getObjectPoints(resultObject.value) ?? [],
                  Point(latlng.latitude, latlng.longitude),
                ],
                resultObject.value,
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

  List<DragMarker> Function(int i, Point p) _createMarkerFromPoint(
    double markerSize,
    List<Point> points,
  ) =>
      (i, p) {
        final nextPoint = i == points.length - 1
            ? widget.closedShape
                ? points.first
                : null
            : points[i + 1];

        return [
          DragMarker(
            point: LatLng(p.latitude, p.longitude),
            size: Size(markerSize, markerSize),
            builder: (context, pos, isDragging) => _EditablePoint(
              markerSize: markerSize,
              color: resultObject.value.color,
              icon: Symbols.circle,
            ),
            onDragUpdate: (_, newPoint) => resultObject.value = widget.onModify(
              [
                ...points.map(
                  (e) => e == p
                      ? Point(
                          newPoint.latitude,
                          newPoint.longitude,
                        )
                      : e,
                ),
              ],
              resultObject.value,
            ),
            onLongPress: (_) {
              resultObject.value = widget.onModify(
                points.where((e) => e != p).toList(),
                resultObject.value,
              );
            },
          ),
          DragMarker(
            point: LatLng(
              p.latitude +
                  (nextPoint != null
                      ? (nextPoint.latitude - p.latitude) / 2
                      : 0),
              p.longitude +
                  (nextPoint != null
                      ? (nextPoint.longitude - p.longitude) / 2
                      : 0),
            ),
            size: Size(markerSize, markerSize),
            builder: (context, pos, isDragging) => _EditablePoint(
              markerSize: markerSize,
              color: resultObject.value.color,
              icon: Symbols.add_circle_outline,
            ),
            onDragStart: (_, newPoint) => resultObject.value = widget.onModify(
              [
                ...points
                    .mapIndexed(
                      (i2, e) => i == i2
                          ? [
                              p,
                              Point(
                                newPoint.latitude,
                                newPoint.longitude,
                              ),
                            ]
                          : [e],
                    )
                    .expand((p) => p),
              ],
              resultObject.value,
            ),
            onDragUpdate: (_, newPoint) => resultObject.value = widget.onModify(
              [
                ...points.mapIndexed(
                  (i2, e) => i + 1 == i2
                      ? Point(
                          newPoint.latitude,
                          newPoint.longitude,
                        )
                      : e,
                ),
              ],
              resultObject.value,
            ),
          ),
        ];
      };

  @override
  Future<void> dispose() async {
    super.dispose();

    await _mapOptionsStream.close();
    await resultObject.close();
  }
}

class _EditablePoint extends StatelessWidget {
  const _EditablePoint({
    required this.markerSize,
    required this.icon,
    this.color,
  });

  final double markerSize;
  final Color? color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          width: markerSize,
          height: markerSize,
          child: Icon(
            icon,
            size: markerSize,
            shadows: [
              Shadow(
                color: Colors.black.withOpacity(0.1),
                // offset: const Offset(4, 3),
                blurRadius: 3,
              ),
            ],
            color: color ?? Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
