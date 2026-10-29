import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class ViewableObjectListItem<T extends Viewable> extends StatelessWidget {
  final T item;
  final ListSelectionCubit selection;
  final ItemBuilder<T>? itemBuilder;
  final ViewableObjectWidgetConfig<T>? viewableObjectWidgetConfig;
  final ViewableObjectService viewableObjectService;
  final bool addSeparator;

  ViewableObjectListItem({
    required this.item,
    required this.selection,
    this.addSeparator = true,
    this.itemBuilder,
    this.viewableObjectWidgetConfig,
    ViewableObjectService? viewableObjectService,
    super.key,
  }) : viewableObjectService = viewableObjectService ?? ViewableObjectService.I;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ListSelectionCubit, ListSelectionState, bool?>(
      bloc: selection,
      selector: (state) => state.maybeIsSelected(item),
      builder: (context, isSelected) {
        final config =
            (viewableObjectWidgetConfig ?? ViewableObjectWidgetConfig<T>())
                .copyWith(
                  onTap: _onTap,
                  onLongPress: _onLongPress,
                  selected: isSelected,
                  trailing: isSelected != null
                      ? Checkbox(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: isSelected,
                          onChanged: (_) => selection.toggle(item),
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

  void _onTap(T item) {
    if (selection.state is ListSelectionActive) {
      selection.toggle(item);
    } else {
      final effectiveOnTap =
          viewableObjectWidgetConfig?.onTap ??
          ViewableObjectWidgetConfig<T>().onTap ??
          viewableObjectService.onTap;

      effectiveOnTap(item);
    }
  }

  void _onLongPress(T item) {
    final effectiveOnLongPress =
        viewableObjectWidgetConfig?.onLongPress ??
        ViewableObjectWidgetConfig<T>().onLongPress;

    if (effectiveOnLongPress != null) {
      effectiveOnLongPress(item);
    } else {
      switch (selection.state) {
        case ListSelectionInactive():
          selection.startSelectingWith(item);
        case ListSelectionActive():
          selection.end();
      }
    }
  }
}
