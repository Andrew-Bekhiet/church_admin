import 'package:church_admin/src/features/attendance/presentation/rendering/render_centered_unless_crowded_title_row.dart';
import 'package:material_ui/material_ui.dart';

/// Pins [trailing] to the end edge and centres [title] across the full row,
/// sliding [title] toward the start edge only as far as it takes to clear
/// [trailing] by [spacing].
///
/// Unlike [NavigationToolbar], it sizes its height to its children.
class CenteredUnlessCrowdedTitleRow
    extends
        SlottedMultiChildRenderObjectWidget<
          CenteredUnlessCrowdedTitleRowSlot,
          RenderBox
        > {
  final Widget title;
  final Widget trailing;
  final double spacing;

  @override
  Iterable<CenteredUnlessCrowdedTitleRowSlot> get slots =>
      CenteredUnlessCrowdedTitleRowSlot.values;

  const CenteredUnlessCrowdedTitleRow({
    required this.title,
    required this.trailing,
    this.spacing = 4,
    super.key,
  });

  @override
  Widget childForSlot(CenteredUnlessCrowdedTitleRowSlot slot) => switch (slot) {
    CenteredUnlessCrowdedTitleRowSlot.title => title,
    CenteredUnlessCrowdedTitleRowSlot.trailing => trailing,
  };

  @override
  RenderCenteredUnlessCrowdedTitleRow createRenderObject(
    BuildContext context,
  ) => RenderCenteredUnlessCrowdedTitleRow(
    textDirection: Directionality.of(context),
    spacing: spacing,
  );

  @override
  void updateRenderObject(
    BuildContext context,
    RenderCenteredUnlessCrowdedTitleRow renderObject,
  ) {
    renderObject
      ..textDirection = Directionality.of(context)
      ..spacing = spacing;
  }
}

enum CenteredUnlessCrowdedTitleRowSlot { title, trailing }
