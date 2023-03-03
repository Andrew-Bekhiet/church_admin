import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:flutter/widgets.dart';

class ViewableObjectWidgetConfig<T extends Viewable> {
  final bool selected;
  final bool forceShowSecondLine;
  final bool wrapInCard;
  final bool isThreeLine;
  final bool dense;
  final bool enabled;
  final bool circleCrop;

  final Widget? photo;
  final Widget? trailing;

  final void Function(T)? onTap;
  final void Function(T)? onLongPress;

  const ViewableObjectWidgetConfig({
    this.selected = false,
    this.wrapInCard = true,
    this.dense = false,
    this.enabled = true,
    this.forceShowSecondLine = true,
    this.isThreeLine = false,
    this.circleCrop = true,
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
    bool? circleCrop,
    Widget? photo,
    Widget? trailing,
    void Function(T)? onTap,
    void Function(T)? onLongPress,
  }) =>
      ViewableObjectWidgetConfig(
        selected: selected ?? this.selected,
        wrapInCard: wrapInCard ?? this.wrapInCard,
        dense: dense ?? this.dense,
        enabled: enabled ?? this.enabled,
        forceShowSecondLine: forceShowSecondLine ?? this.forceShowSecondLine,
        isThreeLine: isThreeLine ?? this.isThreeLine,
        circleCrop: circleCrop ?? this.circleCrop,
        photo: photo ?? this.photo,
        trailing: trailing ?? this.trailing,
        onTap: onTap ?? this.onTap,
        onLongPress: onLongPress ?? this.onLongPress,
      );
}
