import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ViewableObjectWidget<T extends Viewable> extends StatelessWidget {
  final T object;

  final bool forceShowSecondLine;
  final bool selected;
  final bool wrapInCard;
  final bool isThreeLine;
  final bool dense;
  final bool enabled;
  final bool circleCrop;

  final Widget? title;
  final Widget? subtitle;
  // ignore: no-object-declaration
  final Object? heroTag;
  final Widget? trailing;
  final Widget? photo;

  final void Function(T)? onTap;
  final void Function(T)? onLongPress;

  final CAViewableObjectService viewableObjectService;

  ViewableObjectWidget(
    this.object, {
    this.title,
    this.subtitle,
    this.photo,
    this.wrapInCard = true,
    this.dense = false,
    this.enabled = true,
    this.forceShowSecondLine = true,
    this.selected = false,
    this.isThreeLine = false,
    this.circleCrop = true,
    this.heroTag,
    this.trailing,
    this.onTap,
    this.onLongPress,
    CAViewableObjectService? viewableObjectService,
    super.key,
  }) : viewableObjectService =
            viewableObjectService ?? GetIt.I<CAViewableObjectService>();

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final textColor = ListTileTheme.of(context).textColor ??
        themeData.listTileTheme.textColor ??
        themeData.textTheme.subtitle1!.color!;
    final foregroundColor = object.color.getContrastingColor(textColor);

    final secondLine = viewableObjectService.getSecondLine(object);

    final tile = ListTile(
      iconColor: foregroundColor,
      textColor: foregroundColor,
      tileColor: object.color,
      dense: dense,
      enabled: enabled,
      leading: photo ??
          (object is IImage
              ? ImageObjectWidget(
                  object as IImage,
                  heroTag: heroTag,
                  circleCrop: circleCrop,
                )
              : null),
      title: title ?? Text(object.name),
      subtitle: subtitle ??
          (secondLine != null
              ? Text(secondLine)
              : forceShowSecondLine
                  ? const SizedBox()
                  : null),
      onTap: _onTap != null ? () => _onTap!(object) : null,
      onLongPress: _onLongPress != null ? () => _onLongPress!(object) : null,
      selected: selected,
      isThreeLine: isThreeLine,
      trailing: trailing,
    );

    if (wrapInCard) {
      return Card(
        color: object.color,
        child: tile,
      );
    }

    return tile;
  }

  void Function(T)? get _onTap => onTap ?? viewableObjectService.onTap;

  void Function(T)? get _onLongPress => onLongPress;
}
