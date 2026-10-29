import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListSelectionCubit extends Cubit<ListSelectionState> {
  ListSelectionCubit({Iterable<Viewable>? initialSelection})
    : super(
        initialSelection == null
            ? const ListSelectionInactive()
            : ListSelectionActive(initialSelection),
      );

  void startSelectingWith(Viewable item) => emit(ListSelectionActive([item]));

  void toggle(Viewable item) {
    if (state case final ListSelectionActive active) {
      emit(
        active.selected.contains(item)
            ? active.excluding(item)
            : active.including([item]),
      );
    }
  }

  void select(Viewable item) => selectAll([item]);

  void selectAll(Iterable<Viewable> items) => emit(switch (state) {
    final ListSelectionActive active => active.including(items),
    ListSelectionInactive() => ListSelectionActive(items),
  });

  void selectNone() => emit(ListSelectionActive(const []));

  void end() => emit(const ListSelectionInactive());
}
