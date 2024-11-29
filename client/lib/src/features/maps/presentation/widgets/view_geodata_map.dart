import 'dart:async';

import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:snapping_sheet_2/snapping_sheet.dart';
import 'package:snapping_sheet_2/src/sheet_position_data.dart';


class ViewGeodataMap extends StatefulWidget {
  final Person? initialPerson;
  final GeomapOptions initialGeomapOptions;

  const ViewGeodataMap({
    required this.initialGeomapOptions,
    this.initialPerson,
    super.key,
  });

  @override
  _ViewGeodataMapState createState() => _ViewGeodataMapState();
}

class _ViewGeodataMapState extends State<ViewGeodataMap>
    with TickerProviderStateMixin {
  final _sheetScrollController = ScrollController();

  final BehaviorSubject<Point?> _focusedLocation = BehaviorSubject.seeded(null);
  Point? _oldFocusedLocation;

  late final BehaviorSubject<GeomapOptions> _mapOptions =
      BehaviorSubject.seeded(widget.initialGeomapOptions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => setState(() {}),
            icon: const Icon(Symbols.refresh),
            tooltip: 'تحديث البيانات',
          ),
        ],
        title: const Text('خريطة الافتقاد'),
      ),
      body: MapSnappingSheet(
        onSheetMoved: _onSheetMoved,
        sheetBelow: SnappingSheetContent(
          draggable: (_) => true,
          childScrollController: _sheetScrollController,
          child: StreamBuilder<GeomapOptions>(
            initialData: _mapOptions.value,
            stream: _mapOptions,
            builder: (context, snapshot) {
              return EditGeomapOptionsWidget(
                mapOptions: snapshot.requireData,
                sheetScrollController: _sheetScrollController,
                apply: _mapOptions.add,
              );
            },
          ),
        ),
        child: DataGeomap(
          initialPerson: widget.initialPerson,
          focusedLocationStream: _focusedLocation,
          geomapOptionsStream: _mapOptions,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton:
          GeomapFAB(onFocusedLocationChange: _focusedLocation),
    );
  }

  void _onSheetMoved(SheetPositionData position) {
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
  }

  @override
  Future<void> dispose() async {
    super.dispose();

    await _focusedLocation.close();
    await _mapOptions.close();
  }
}
