import 'package:flutter/rendering.dart';

class RenderPinnedExtentSliverMainAxisGroup extends RenderSliverMainAxisGroup {
  @override
  void performLayout() {
    super.performLayout();
    final groupGeometry = geometry;
    if (groupGeometry == null || groupGeometry.scrollOffsetCorrection != null) {
      return;
    }

    var pinnedExtent = 0.0;
    visitChildren(
      (child) => pinnedExtent +=
          (child as RenderSliver).geometry?.maxScrollObstructionExtent ?? 0,
    );
    geometry = groupGeometry.copyWith(maxScrollObstructionExtent: pinnedExtent);
  }
}
