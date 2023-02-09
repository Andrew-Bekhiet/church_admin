import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ViewableObjectWidget<T extends Viewable> extends StatelessWidget {
  final T object;

  final bool? selected;
  final bool? forceShowSecondLine;
  final bool? wrapInCard;
  final bool? isThreeLine;
  final bool? dense;
  final bool? enabled;
  final bool? circleCrop;

  final Widget? title;
  final Widget? subtitle;
  // ignore: no-object-declaration
  final Object? heroTag;
  final Widget? trailing;
  final Widget? photo;

  final void Function(T)? onTap;
  final void Function(T)? onLongPress;

  final CAViewableObjectService viewableObjectService;
  final ViewableObjectWidgetConfig config;

  ViewableObjectWidget(
    this.object, {
    this.title,
    this.subtitle,
    this.photo,
    this.selected,
    this.wrapInCard,
    this.dense,
    this.enabled,
    this.forceShowSecondLine,
    this.isThreeLine,
    this.circleCrop,
    this.heroTag,
    this.trailing,
    this.onTap,
    this.onLongPress,
    ViewableObjectWidgetConfig? config,
    CAViewableObjectService? viewableObjectService,
    super.key,
  })  : viewableObjectService =
            viewableObjectService ?? GetIt.I<CAViewableObjectService>(),
        config = config ?? const ViewableObjectWidgetConfig();

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final textColor = ListTileTheme.of(context).textColor ??
        themeData.listTileTheme.textColor ??
        themeData.textTheme.titleMedium!.color!;
    final foregroundColor = object.color.getContrastingColor(textColor);

    final secondLine = viewableObjectService.getSecondLine(object);

    final tile = ListTile(
      iconColor: foregroundColor,
      textColor: foregroundColor,
      tileColor: object.color,
      dense: dense ?? config.dense,
      enabled: enabled ?? config.enabled,
      leading: photo ??
          config.photo ??
          (object is IImage
              ? ImageObjectWidget(
                  object as IImage,
                  heroTag: heroTag,
                  circleCrop: circleCrop ?? config.circleCrop,
                )
              : null),
      title: title ?? Text(object.name),
      subtitle: subtitle ??
          (secondLine != null
              ? Text(secondLine)
              : forceShowSecondLine ?? config.forceShowSecondLine
                  ? const SizedBox()
                  : null),
      onTap: _onTap != null ? () => _onTap!(object) : null,
      onLongPress: _onLongPress != null ? () => _onLongPress!(object) : null,
      isThreeLine: isThreeLine ?? config.isThreeLine,
      trailing: trailing ?? config.trailing,
    );

    if (wrapInCard ?? config.wrapInCard) {
      return Card(
        elevation: selected ?? config.selected ? 4 : 1,
        color: object.color,
        child: tile,
      );
    }

    return tile;
  }

  void Function(T)? get _onTap =>
      onTap ?? config.onTap ?? viewableObjectService.onTap;

  void Function(T)? get _onLongPress => onLongPress ?? config.onLongPress;
}
