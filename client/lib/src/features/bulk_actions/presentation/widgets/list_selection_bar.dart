import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class ListSelectionBar extends StatelessWidget implements PreferredSizeWidget {
  final ViewableObjectListController list;
  final double toolbarHeight;

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);

  const ListSelectionBar({
    required this.list,
    this.toolbarHeight = kToolbarHeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final onBarColor = theme.colorScheme.onPrimaryContainer;
    final selection = context.read<ListSelectionCubit>();

    return BlocProvider(
      create: (_) => BulkActionInvocationCubit(),
      child: BlocBuilder<ListSelectionCubit, ListSelectionState>(
        builder: (context, state) => switch (state) {
          ListSelectionInactive() => const SizedBox.shrink(),
          final ListSelectionActive state => AppBar(
            key: ListSelectionBarKeys.bar,
            toolbarHeight: toolbarHeight,
            backgroundColor: theme.colorScheme.primaryContainer,
            foregroundColor: onBarColor,
            titleTextStyle: theme.textTheme.titleLarge?.copyWith(
              color: onBarColor,
            ),
            leading: IconButton(
              key: ListSelectionBarKeys.closeButton,
              tooltip: 'الغاء التحديد',
              icon: const Icon(Symbols.close),
              onPressed: selection.endUnlessAlwaysActive,
            ),
            title: Text(
              '${state.selected.length} محدد',
              key: ListSelectionBarKeys.selectedCount,
            ),
            actions: [
              StreamBuilder<List<Viewable>>(
                initialData: list.currentFilteredObjectsOrNull,
                stream: list.filteredObjectsStream,
                builder: (context, shownItemsSnapshot) {
                  final shownItems =
                      shownItemsSnapshot.data ?? const <Viewable>[];

                  return SelectAllOrNoneButton(
                    key: ListSelectionBarKeys.selectAllButton,
                    areAllShownItemsSelected: state.areAllSelected(shownItems),
                    onSelectAll: () => selection.selectAll(shownItems),
                    onSelectNone: () => selection.deselectAll(shownItems),
                  );
                },
              ),
              BlocBuilder<BulkActionInvocationCubit, BulkActionInvocationState>(
                builder: (context, invocation) => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final action
                        in BulkActionsRegistry.I.actionsApplicableToAnyOf(
                          state.selected,
                        ))
                      IconButton(
                        key: ListSelectionBarKeys.actionButtonFor(action),
                        tooltip: action.label,
                        icon: action.icon,
                        onPressed: invocation is BulkActionRunning
                            ? null
                            : () => _invoke(context, action, state),
                      ),
                  ],
                ),
              ),
            ],
          ),
        },
      ),
    );
  }

  void _invoke(
    BuildContext context,
    BulkAction action,
    ListSelectionActive state,
  ) {
    final applicableItems = action.filterApplicableItems(
      state.inOrderOf(list.currentFilteredObjectsOrNull ?? const []).selected,
    );

    unawaited(
      context.read<BulkActionInvocationCubit>().invoke(
        actionKey: action.key,
        items: applicableItems,
        run: () => action.run(context, applicableItems),
      ),
    );
  }
}

abstract final class ListSelectionBarKeys {
  static const Key bar = ValueKey('List Selection Bar Key');
  static const Key closeButton = ValueKey('List Selection Bar Close Key');
  static const Key selectAllButton = ValueKey(
    'List Selection Bar Select All Key',
  );
  static const Key selectedCount = ValueKey(
    'List Selection Bar Selected Count Key',
  );

  static Key actionButtonFor(BulkAction action) =>
      ValueKey('List Selection Bar Action Key ${action.key}');
}
