import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ViewableObjectListItem<T extends Viewable> extends StatelessWidget {
  ViewableObjectListItem({
    required this.item,
    required this.selectionController,
    this.itemBuilder,
    this.viewableObjectWidgetConfig,
    this.addSeparator = true,
    ViewableObjectService? viewableObjectService,
    super.key,
  }) : viewableObjectService = viewableObjectService ?? ViewableObjectService.I;

  final T item;
  final SelectionController<T> selectionController;
  final ItemBuilder<T>? itemBuilder;
  final ViewableObjectWidgetConfig<T>? viewableObjectWidgetConfig;
  final ViewableObjectService viewableObjectService;
  final bool addSeparator;

  late final ViewableObjectWidgetConfig<T> effectiveConfig =
      (viewableObjectWidgetConfig ?? ViewableObjectWidgetConfig<T>()).copyWith(
    onLongPress: _onLongPress,
    onTap: _onTap,
  );

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool?>(
      initialData: selectionController.currentValue?.contains(item),
      stream:
          selectionController.stream.map((s) => s?.contains(item)).distinct(),
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

        final Widget itemWidget = itemBuilder != null
            ? itemBuilder!(
                context,
                item,
                config,
              )
            : ViewableObjectWidget<T>(
                item,
                config: config,
                viewableObjectService: viewableObjectService,
              );

        if (!addSeparator) return itemWidget;

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            itemWidget,
            const Divider(),
          ],
        );
      },
    );
  }

  void _onSelect(bool isSelected) => isSelected
      ? selectionController.deselect(item)
      : selectionController.select(item);

  void _onTap(T item) {
    if (!selectionController.isSelecting) {
      final effectiveOnTap = viewableObjectWidgetConfig?.onTap ??
          ViewableObjectWidgetConfig<T>().onTap ??
          viewableObjectService.onTap;

      effectiveOnTap(item);
    } else {
      _onSelect(selectionController.isSelected(item));
    }
  }

  void _onLongPress(T item) {
    final effectiveOnLongPress = viewableObjectWidgetConfig?.onLongPress ??
        ViewableObjectWidgetConfig<T>().onLongPress;

    if (effectiveOnLongPress != null) {
      effectiveOnLongPress(item);
    } else if (!selectionController.isSelecting) {
      selectionController.toggle(item);
    } else {
      selectionController.clear();
    }
  }
}
