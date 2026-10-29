import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

sealed class ListSelectionState with Equatable {
  Set<Viewable> get selected;

  @override
  List<Object?> get props => [selected];

  const ListSelectionState();

  Set<T> selectedOfType<T>() => selected.whereType<T>().toSet();

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
    : selected = EqualitySet.from(_byId, items);

  @override
  bool maybeIsSelected(Viewable item) => selected.contains(item);

  ListSelectionActive including(Iterable<Viewable> items) =>
      ListSelectionActive([...selected, ...items]);

  ListSelectionActive excluding(Viewable item) => ListSelectionActive(
    selected.whereNot((other) => _byId.equals(other, item)),
  );
}

final _byId = EqualityBy<Viewable, Object>(_idOrItself);

Object _idOrItself(Object item) => item is ID ? item.id : item;
