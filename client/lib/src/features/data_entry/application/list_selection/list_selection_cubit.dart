import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListSelectionCubit extends Cubit<ListSelectionState> {
  final bool _isAlwaysActive;

  ListSelectionCubit()
    : _isAlwaysActive = false,
      super(const ListSelectionInactive());

  ListSelectionCubit.alwaysActive([
    Iterable<Viewable> initialSelection = const [],
  ]) : _isAlwaysActive = true,
       super(ListSelectionActive(initialSelection));

  void startSelectingWith(Viewable item) => emit(ListSelectionActive([item]));

  void toggle(Viewable item) {
    if (state case final ListSelectionActive active) {
      emit(
        active.selected.contains(item)
            ? active.excluding([item])
            : active.including([item]),
      );
    }
  }

  void select(Viewable item) => selectAll([item]);

  void selectAll(Iterable<Viewable> items) => emit(switch (state) {
    final ListSelectionActive active => active.including(items),
    ListSelectionInactive() => ListSelectionActive(items),
  });

  void deselectAll(Iterable<Viewable> items) {
    if (state case final ListSelectionActive active) {
      emit(active.excluding(items));
    }
  }

  void endUnlessAlwaysActive() {
    if (!_isAlwaysActive) emit(const ListSelectionInactive());
  }
}
