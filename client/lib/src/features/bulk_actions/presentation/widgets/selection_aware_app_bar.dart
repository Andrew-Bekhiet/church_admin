import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class SelectionAwareAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final PreferredSizeWidget child;

  @override
  Size get preferredSize => child.preferredSize;

  const SelectionAwareAppBar({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    final active = ListSelectionHost.maybeActiveOf(context);

    return AnimatedSwitcher(
      duration: Durations.short4,
      child: switch (active) {
        (:final selection, :final list) => BlocProvider.value(
          key: ObjectKey(selection),
          value: selection,
          child: ListSelectionBar(list: list),
        ),
        null => child,
      },
    );
  }
}
