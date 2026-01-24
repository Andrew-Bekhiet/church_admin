import 'package:flutter/material.dart';
import 'package:snapping_sheet_2/snapping_sheet.dart';
// Ignored because the package doesn't expose [SheetPositionData]
// which is needed here to keep the widgets modular
// ignore: implementation_imports
import 'package:snapping_sheet_2/src/sheet_position_data.dart';

class MapSnappingSheet extends StatelessWidget {
  final Widget child;
  final SnappingSheetContent? sheetBelow;
  final bool showGrabbing;
  final void Function(SheetPositionData)? onSheetMoved;

  const MapSnappingSheet({
    required this.sheetBelow,
    required this.child,
    this.onSheetMoved,
    this.showGrabbing = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SnappingSheet(
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
      initialSnappingPosition: const SnappingPosition.factor(
        positionFactor: 0.15,
      ),
      grabbing: showGrabbing
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
                      indent: MediaQuery.sizeOf(context).width * 1 / 3,
                      endIndent: MediaQuery.sizeOf(context).width * 1 / 3,
                    ),
                  ],
                ),
              ),
            )
          : const SizedBox(),
      grabbingHeight: 50,
      onSheetMoved: onSheetMoved,
      sheetBelow: sheetBelow,
      child: child,
    );
  }
}
