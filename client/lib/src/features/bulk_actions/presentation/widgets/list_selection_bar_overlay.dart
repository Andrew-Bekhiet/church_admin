import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class ListSelectionBarOverlay extends StatelessWidget {
  final Widget child;

  const ListSelectionBarOverlay({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    final active = ListSelectionHost.maybeActiveOf(context);

    return Stack(
      children: [
        child,
        PositionedDirectional(
          top: 0,
          start: 0,
          end: 0,
          child: AnimatedSwitcher(
            duration: Durations.short4,
            child: switch (active) {
              (:final selection, :final list) => BlocProvider.value(
                key: ObjectKey(selection),
                value: selection,
                child: ListSelectionBar(list: list),
              ),
              null => const SizedBox.shrink(),
            },
          ),
        ),
      ],
    );
  }
}
