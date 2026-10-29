import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class ListSelectionBar extends StatelessWidget implements PreferredSizeWidget {
  final ViewableObjectListController list;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  List<Viewable> get _loaded => list.currentFilteredObjectsOrNull ?? const [];

  const ListSelectionBar({required this.list, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final onBarColor = theme.colorScheme.onPrimaryContainer;
    final selection = context.read<ListSelectionCubit>();

    return BlocBuilder<ListSelectionCubit, ListSelectionState>(
      builder: (context, state) => switch (state) {
        ListSelectionInactive() => const SizedBox.shrink(),
        final ListSelectionActive active => AppBar(
          key: ListSelectionBarKeys.bar,
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
          title: Text('${active.selected.length} محدد'),
          actions: [
            SelectAllOrNoneButton(
              key: ListSelectionBarKeys.selectAllButton,
              selection: selection,
              list: list,
            ),
            for (final action in BulkActionsRegistry.I.actionsApplicableToAnyOf(
              active.selected,
            ))
              IconButton(
                tooltip: action.label,
                icon: action.icon,
                onPressed: () => _run(action, active, context),
              ),
          ],
        ),
      },
    );
  }

  void _run(
    BulkAction action,
    ListSelectionActive active,
    BuildContext context,
  ) {
    final applicableItems = action.filterApplicableItems(
      active.inOrderOf(_loaded).selected,
    );

    AnalyticsService.I.track(BulkActionOpen(action, applicableItems));
    unawaited(action.run(context, applicableItems));
  }
}

abstract final class ListSelectionBarKeys {
  static const Key bar = ValueKey('List Selection Bar Key');
  static const Key closeButton = ValueKey('List Selection Bar Close Key');
  static const Key selectAllButton = ValueKey(
    'List Selection Bar Select All Key',
  );
}
