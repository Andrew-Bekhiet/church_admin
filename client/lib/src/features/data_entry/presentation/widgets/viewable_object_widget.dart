import 'package:church_admin/church_admin.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:flutter/material.dart';

class ViewableObjectWidget<T extends Viewable> extends StatelessWidget {
  final T object;

  final bool? selected;
  final bool? forceShowSecondLine;
  final bool? wrapInCard;
  final bool? isThreeLine;
  final bool? isDense;
  final bool? enabled;
  final bool? circleCrop;

  final Widget? title;
  final Widget? subtitle;
  // ignore: no-object-declaration
  final Object? heroTag;
  final Widget? trailing;
  final Widget? photo;

  final ViewableObjectService viewableObjectService;
  final ViewableObjectWidgetConfig config;

  ViewableObjectWidget(
    this.object, {
    this.title,
    this.subtitle,
    this.photo,
    this.selected,
    this.wrapInCard,
    this.isDense,
    this.enabled,
    this.forceShowSecondLine,
    this.isThreeLine,
    this.circleCrop,
    this.heroTag,
    this.trailing,
    this.onTap,
    this.onLongPress,
    ViewableObjectWidgetConfig? config,
    ViewableObjectService? viewableObjectService,
    super.key,
  }) : viewableObjectService = viewableObjectService ?? ViewableObjectService.I,
       config = config ?? const ViewableObjectWidgetConfig();

  @override
  Widget build(BuildContext context) {
    final foregroundColor =
        object.color?.findInvert() ??
        (wrapInCard ?? config.wrapInCard
            ? CardTheme.of(context).color?.findInvert()
            : ListTileTheme.of(context).textColor);

    final secondLine = viewableObjectService.getFormattedValue(
      object,
      config.secondLineField,
    );

    final tile = ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      iconColor: foregroundColor,
      textColor: foregroundColor,
      tileColor: object.color,
      dense: isDense ?? config.isDense,
      enabled: enabled ?? config.enabled,
      leading:
          photo ??
          config.photo ??
          (object is IImage
              ? ImageObjectWidget(
                  object as IImage,
                  heroTag: heroTag,
                  isDense: isDense ?? config.isDense,
                  circleCrop:
                      circleCrop ?? config.shouldCircleCrop(object as IImage),
                )
              : null),
      title: title ?? Text(object.name, overflow: TextOverflow.ellipsis),
      subtitle:
          subtitle ??
          (secondLine != null
              ? Text(
                  secondLine,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              : forceShowSecondLine ?? config.forceShowSecondLine
              ? const SizedBox()
              : null),
      onTap: _onTap != null ? () => _onTap!(object) : null,
      onLongPress: _onLongPress != null ? () => _onLongPress!(object) : null,
      isThreeLine: isThreeLine ?? config.isThreeLine,
      trailing: trailing ?? config.trailing,
    );

    if (wrapInCard ?? config.wrapInCard) {
      return Card.outlined(
        elevation: selected ?? config.selected ? 4 : 1,
        color: object.color,
        child: tile,
      );
    }

    return tile;
  }

  final void Function(T)? onTap;
  final void Function(T)? onLongPress;

  void Function(T)? get _onTap =>
      onTap ?? config.onTap ?? viewableObjectService.onTap;

  void Function(T)? get _onLongPress => onLongPress ?? config.onLongPress;
}
