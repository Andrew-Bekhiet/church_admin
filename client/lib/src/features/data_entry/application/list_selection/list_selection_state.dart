import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

sealed class ListSelectionState with Equatable {
  static final _byId = EqualityBy<Viewable, Object>(_idOrItself);

  static Object _idOrItself(Object item) => item is ID ? item.id : item;

  Set<Viewable> get selected;

  @override
  List<Object?> get props => [selected];

  const ListSelectionState();

  Set<T> selectedOfType<T extends Object>() => EqualitySet.from(
    EqualityBy<T, Object>(_idOrItself),
    selected.whereType<T>(),
  );

  bool areAllSelected(Iterable<Viewable> items) =>
      items.isNotEmpty && items.every(selected.contains);

  bool? maybeIsSelected(Viewable item);
}

final class ListSelectionInactive extends ListSelectionState {
  @override
  Set<Viewable> get selected => const {};

  const ListSelectionInactive();

  @override
  bool? maybeIsSelected(Viewable item) => null;
}

final class ListSelectionActive extends ListSelectionState {
  @override
  final Set<Viewable> selected;

  ListSelectionActive(Iterable<Viewable> items)
    : selected = EqualitySet.from(ListSelectionState._byId, items);

  @override
  bool maybeIsSelected(Viewable item) => selected.contains(item);

  ListSelectionActive including(Iterable<Viewable> items) =>
      ListSelectionActive([...selected, ...items]);

  ListSelectionActive excluding(Iterable<Viewable> items) {
    final excluded = EqualitySet.from(ListSelectionState._byId, items);

    return ListSelectionActive(selected.whereNot(excluded.contains));
  }
}
