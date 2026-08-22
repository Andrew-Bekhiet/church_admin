import 'dart:async';
import 'dart:math';

import 'package:align_positioned/align_positioned.dart';
import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';
import 'package:snapping_sheet_2/snapping_sheet.dart';
// Ignored because the package doesn't expose [SheetPositionData]
// which is needed here to keep the widgets modular
// ignore: implementation_imports
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
  State<ViewGeodataMap> createState() => _ViewGeodataMapState();
}

class _ViewGeodataMapState extends State<ViewGeodataMap>
    with TickerProviderStateMixin {
  final _sheetScrollController = ScrollController();

  Point? _focusedLocation;
  Alignment? _fabAlignment;

  late final BehaviorSubject<GeomapOptions> _mapOptions =
      BehaviorSubject.seeded(widget.initialGeomapOptions);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _fabAlignment = AlignmentDirectional.bottomEnd.resolve(
      Directionality.of(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => setState(() {
              return;
            }),
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
          child: RepaintBoundary(
            child: StreamBuilder<GeomapOptions>(
              initialData: _mapOptions.value,
              stream: _mapOptions,
              builder: (context, snapshot) => EditGeomapOptionsWidget(
                mapOptions: snapshot.requireData,
                sheetScrollController: _sheetScrollController,
                apply: _mapOptions.add,
              ),
            ),
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            RepaintBoundary(
              child: DataGeomap(
                initialPerson: widget.initialPerson,
                geomapOptionsStream: _mapOptions,
                onTapLocation: (location) =>
                    setState(() => _focusedLocation = location),
              ),
            ),
            if (_focusedLocation != null)
              AlignPositioned(
                alignment: _fabAlignment,
                moveByChildHeight: -0.5,
                child: RepaintBoundary(
                  child: GeomapFAB(focusedLocation: _focusedLocation!),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    unawaited(_mapOptions.close());

    super.dispose();
  }

  void _onSheetMoved(SheetPositionData position) {
    setState(() {
      _fabAlignment = AlignmentDirectional(
        1,
        1 - min(0.5, position.relativeToSnappingPositions) * 2,
      ).resolve(Directionality.of(context));
    });
  }
}
