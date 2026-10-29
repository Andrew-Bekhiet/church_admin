import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class SelectAllOrNoneButton extends StatelessWidget {
  final ListSelectionCubit selection;
  final ViewableObjectListController list;

  const SelectAllOrNoneButton({
    required this.selection,
    required this.list,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Viewable>>(
      initialData: list.currentFilteredObjectsOrNull,
      stream: list.filteredObjectsStream,
      builder: (context, shownItemsSnapshot) {
        final shownItems = shownItemsSnapshot.data ?? const <Viewable>[];

        return BlocBuilder<ListSelectionCubit, ListSelectionState>(
          bloc: selection,
          builder: (context, state) => state.areAllSelected(shownItems)
              ? IconButton(
                  tooltip: 'تحديد لا شئ',
                  icon: const Icon(Symbols.deselect),
                  onPressed: selection.selectNone,
                )
              : IconButton(
                  tooltip: 'تحديد الكل',
                  icon: const Icon(Symbols.select_all),
                  onPressed: () => selection.selectAll(shownItems),
                ),
        );
      },
    );
  }
}
