import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class ViewableObjectListIndexedItem<T extends Viewable>
    extends StatelessWidget {
  final int index;
  final List<T> items;
  final ViewableObjectListController<T> objectsController;
  final ViewableObjectListType type;
  final bool addSeparator;
  final ItemBuilder<T>? itemBuilder;
  final ViewableObjectWidgetConfig<T>? viewableObjectWidgetConfig;

  const ViewableObjectListIndexedItem({
    required this.index,
    required this.items,
    required this.objectsController,
    required this.type,
    required this.addSeparator,
    this.itemBuilder,
    this.viewableObjectWidgetConfig,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (index >= items.length) {
      return StreamBuilder(
        stream: objectsController.onLoadingChanged,
        builder: (context, state) =>
            state.hasData &&
                state.requireData &&
                (type != ViewableObjectListType.list || index == items.length)
            ? const Center(child: CircularProgressIndicator())
            : const SizedBox(height: 120),
      );
    }

    return ViewableObjectListItem(
      key: ValueKey(items[index]),
      item: items[index],
      selection: context.read<ListSelectionCubit>(),
      itemBuilder: itemBuilder,
      viewableObjectWidgetConfig: viewableObjectWidgetConfig,
      addSeparator:
          addSeparator &&
          index < items.length - 1 &&
          type == ViewableObjectListType.list,
    );
  }
}
