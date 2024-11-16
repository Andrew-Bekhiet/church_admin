import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';

class ViewableObjectWidgetConfig<T extends Viewable> {
  static bool _defaultShouldCircleCrop(IImage image) =>
      image is Person || image is User;

  final bool selected;
  final bool forceShowSecondLine;
  final bool wrapInCard;
  final bool isThreeLine;
  final bool isDense;
  final bool enabled;
  final bool Function(IImage) shouldCircleCrop;

  final Widget? photo;
  final Widget? trailing;

  final void Function(T)? onTap;
  final void Function(T)? onLongPress;

  const ViewableObjectWidgetConfig({
    this.selected = false,
    this.wrapInCard = true,
    this.isDense = false,
    this.enabled = true,
    this.forceShowSecondLine = true,
    this.isThreeLine = false,
    this.shouldCircleCrop = _defaultShouldCircleCrop,
    this.photo,
    this.trailing,
    this.onTap,
    this.onLongPress,
  });

  ViewableObjectWidgetConfig<NewT> copyWith<NewT extends T>({
    bool? selected,
    bool? wrapInCard,
    bool? dense,
    bool? enabled,
    bool? forceShowSecondLine,
    bool? isThreeLine,
    bool Function(IImage)? shouldCircleCrop,
    Widget? photo,
    Widget? trailing,
    void Function(T)? onTap,
    void Function(T)? onLongPress,
  }) =>
      ViewableObjectWidgetConfig(
        selected: selected ?? this.selected,
        wrapInCard: wrapInCard ?? this.wrapInCard,
        isDense: dense ?? this.isDense,
        enabled: enabled ?? this.enabled,
        forceShowSecondLine: forceShowSecondLine ?? this.forceShowSecondLine,
        isThreeLine: isThreeLine ?? this.isThreeLine,
        shouldCircleCrop: shouldCircleCrop ?? this.shouldCircleCrop,
        photo: photo ?? this.photo,
        trailing: trailing ?? this.trailing,
        onTap: onTap ?? this.onTap,
        onLongPress: onLongPress ?? this.onLongPress,
      );
}
