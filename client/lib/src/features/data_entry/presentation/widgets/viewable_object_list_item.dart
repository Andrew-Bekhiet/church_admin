import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ViewableObjectListItem<T extends Viewable> extends StatelessWidget {
  ViewableObjectListItem({
    required this.item,
    this.selectionController,
    this.itemBuilder,
    this.viewableObjectWidgetConfig,
    ViewableObjectService? viewableObjectService,
    super.key,
  }) : viewableObjectService = viewableObjectService ?? ViewableObjectService.I;

  final T item;
  final SelectionController<T>? selectionController;
  final ItemBuilder<T>? itemBuilder;
  final ViewableObjectWidgetConfig<T>? viewableObjectWidgetConfig;
  final ViewableObjectService viewableObjectService;

  late final ViewableObjectWidgetConfig<T> effectiveConfig =
      (viewableObjectWidgetConfig ?? ViewableObjectWidgetConfig<T>()).copyWith(
    onLongPress: _onLongPress,
    onTap: _onTap,
  );

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool?>(
      initialData: selectionController?.currentValue?.contains(item),
      stream: selectionController?.stream
              .map((s) => s?.contains(item))
              .distinct() ??
          Stream.value(null),
      builder: (context, selectionData) {
        final config = effectiveConfig.copyWith(
          selected: selectionData.data,
          trailing: selectionData.data != null
              ? Checkbox(
                  value: selectionData.data,
                  onChanged: (v) => _onSelect(!v!),
                )
              : null,
        );

        return itemBuilder?.call(
              context,
              item,
              config,
            ) ??
            ViewableObjectWidget(
              item,
              config: config,
              viewableObjectService: viewableObjectService,
            );
      },
    );
  }

  void _onSelect(bool isSelected) => isSelected
      ? selectionController!.deselect(item)
      : selectionController!.select(item);

  void _onTap(T item) {
    if (selectionController == null || !selectionController!.isSelecting) {
      final effectiveOnTap = viewableObjectWidgetConfig?.onTap ??
          ViewableObjectWidgetConfig<T>().onTap ??
          viewableObjectService.onTap;

      effectiveOnTap(item);
    } else {
      _onSelect(selectionController!.isSelected(item));
    }
  }

  void _onLongPress(T item) {
    final effectiveOnLongPress = viewableObjectWidgetConfig?.onLongPress ??
        ViewableObjectWidgetConfig<T>().onLongPress;

    if (effectiveOnLongPress != null) {
      effectiveOnLongPress(item);
    } else if (selectionController != null) {
      if (!selectionController!.isSelecting) {
        selectionController!.toggle(item);
      } else {
        selectionController!.clear();
      }
    }
  }
}
