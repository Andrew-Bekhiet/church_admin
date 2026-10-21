import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

/// A [SliverMainAxisGroup] whose geometry reports the summed
/// `maxScrollObstructionExtent` of its pinned children, which the framework
/// group leaves at zero. A [SliverOverlapAbsorber] reads that extent, so this
/// group lets one absorber cover several pinned headers.
class PinnedExtentSliverMainAxisGroup extends SliverMainAxisGroup {
  const PinnedExtentSliverMainAxisGroup({required super.slivers, super.key});

  @override
  RenderPinnedExtentSliverMainAxisGroup createRenderObject(
    BuildContext context,
  ) => RenderPinnedExtentSliverMainAxisGroup();
}
