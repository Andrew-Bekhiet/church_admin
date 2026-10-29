import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class SelectionAwarePersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final SliverPersistentHeaderDelegate child;

  @override
  double get minExtent => child.minExtent;

  @override
  double get maxExtent => child.maxExtent;

  const SelectionAwarePersistentHeaderDelegate(this.child);

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final active = ListSelectionHost.maybeActiveOf(context);

    return SizedBox.expand(
      child: AnimatedSwitcher(
        duration: Durations.short4,
        child: switch (active) {
          (:final selection, :final list) => BlocProvider.value(
            key: ObjectKey(selection),
            value: selection,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListSelectionBar(
                list: list,
                toolbarHeight: max(minExtent, maxExtent - shrinkOffset),
              ),
            ),
          ),
          null => child.build(context, shrinkOffset, overlapsContent),
        },
      ),
    );
  }

  @override
  bool shouldRebuild(SelectionAwarePersistentHeaderDelegate oldDelegate) =>
      child.shouldRebuild(oldDelegate.child);
}
