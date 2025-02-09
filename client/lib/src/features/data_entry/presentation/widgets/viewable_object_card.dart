import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ViewableObjectCard<T extends Viewable> extends StatelessWidget {
  final T object;

  final bool? selected;
  final bool? circleCrop;

  final Widget? title;
  // ignore: no-object-declaration
  final Object? heroTag;
  final Widget? photo;
  final double? size;

  final void Function(T)? onTap;
  final void Function(T)? onLongPress;

  final ViewableObjectService viewableObjectService;
  final ViewableObjectWidgetConfig config;

  ViewableObjectCard(
    this.object, {
    this.title,
    this.photo,
    this.selected,
    this.circleCrop,
    this.heroTag,
    this.onTap,
    this.onLongPress,
    this.size = 150,
    ViewableObjectWidgetConfig? config,
    ViewableObjectService? viewableObjectService,
    super.key,
  })  : viewableObjectService =
            viewableObjectService ?? ViewableObjectService.I,
        config = config ?? const ViewableObjectWidgetConfig();

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: Card.filled(
        elevation: selected ?? config.selected ? 4 : 1,
        color: object.color,
        child: InkWell(
          onTap: _onTap != null ? () => _onTap!(object) : null,
          onLongPress:
              _onLongPress != null ? () => _onLongPress!(object) : null,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: AbsorbPointer(
                    child: photo ??
                        config.photo ??
                        (object is IImage
                            ? ImageObjectWidget(
                                object as IImage,
                                heroTag: heroTag,
                                circleCrop: circleCrop ??
                                    config.shouldCircleCrop(object as IImage),
                              )
                            : null),
                  ),
                ),
                title ??
                    Text(
                      object.name,
                      style: Theme.of(context).textTheme.bodyLarge,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void Function(T)? get _onTap =>
      onTap ?? config.onTap ?? viewableObjectService.onTap;

  void Function(T)? get _onLongPress => onLongPress ?? config.onLongPress;
}
