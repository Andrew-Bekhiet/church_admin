import 'dart:math' as math;

import 'package:church_admin/src/features/attendance/presentation/widgets/centered_unless_crowded_title_row.dart';
import 'package:flutter/rendering.dart';
import 'package:material_ui/material_ui.dart';

class RenderCenteredUnlessCrowdedTitleRow extends RenderBox
    with
        SlottedContainerRenderObjectMixin<
          CenteredUnlessCrowdedTitleRowSlot,
          RenderBox
        > {
  TextDirection _textDirection;
  double _spacing;

  TextDirection get textDirection => _textDirection;
  set textDirection(TextDirection value) {
    if (_textDirection == value) return;
    _textDirection = value;
    markNeedsLayout();
  }

  double get spacing => _spacing;
  set spacing(double value) {
    if (_spacing == value) return;
    _spacing = value;
    markNeedsLayout();
  }

  RenderBox? get _title =>
      childForSlot(CenteredUnlessCrowdedTitleRowSlot.title);
  RenderBox? get _trailing =>
      childForSlot(CenteredUnlessCrowdedTitleRowSlot.trailing);

  RenderCenteredUnlessCrowdedTitleRow({
    required this._textDirection,
    required this._spacing,
  });

  @override
  Size computeDryLayout(BoxConstraints constraints) =>
      _arrange(constraints, ChildLayoutHelper.dryLayoutChild).size;

  @override
  void performLayout() {
    final arrangement = _arrange(constraints, ChildLayoutHelper.layoutChild);
    size = arrangement.size;
    if (_title case final title?) {
      (title.parentData! as BoxParentData).offset = arrangement.titleOffset;
    }
    if (_trailing case final trailing?) {
      (trailing.parentData! as BoxParentData).offset =
          arrangement.trailingOffset;
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    for (final child in children) {
      context.paintChild(
        child,
        (child.parentData! as BoxParentData).offset + offset,
      );
    }
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    for (final child in children) {
      final isHit = result.addWithPaintOffset(
        offset: (child.parentData! as BoxParentData).offset,
        position: position,
        hitTest: (result, transformed) =>
            child.hitTest(result, position: transformed),
      );
      if (isHit) return true;
    }

    return false;
  }

  ({Size size, Offset titleOffset, Offset trailingOffset}) _arrange(
    BoxConstraints constraints,
    ChildLayouter layoutChild,
  ) {
    final width = constraints.maxWidth;
    final childConstraints = BoxConstraints(
      maxWidth: width,
      maxHeight: constraints.maxHeight,
    );
    final trailingSize = switch (_trailing) {
      final trailing? => layoutChild(trailing, childConstraints),
      null => Size.zero,
    };
    final reservedForTrailing = trailingSize.width > 0
        ? trailingSize.width + _spacing
        : 0.0;
    final titleSize = switch (_title) {
      final title? => layoutChild(
        title,
        childConstraints.copyWith(
          maxWidth: math.max(0, width - reservedForTrailing),
        ),
      ),
      null => Size.zero,
    };
    final size = constraints.constrain(
      Size(width, math.max(titleSize.height, trailingSize.height)),
    );

    final centeredTitleStart = (size.width - titleSize.width) / 2;
    final titleStartClearOfTrailing =
        size.width - reservedForTrailing - titleSize.width;
    final titleStart = math.min(centeredTitleStart, titleStartClearOfTrailing);
    final isRtl = _textDirection == TextDirection.rtl;

    return (
      size: size,
      titleOffset: Offset(
        isRtl ? size.width - titleStart - titleSize.width : titleStart,
        (size.height - titleSize.height) / 2,
      ),
      trailingOffset: Offset(
        isRtl ? 0 : size.width - trailingSize.width,
        (size.height - trailingSize.height) / 2,
      ),
    );
  }
}
