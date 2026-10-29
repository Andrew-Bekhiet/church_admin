import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final mina = Person(id: 'p1', name: 'مينا');
  final mark = Person(id: 'p2', name: 'مارك');
  const minaFamily = Family(id: 'f1', name: 'عائلة مينا');

  Matcher selectingExactly(Iterable<Viewable> items) =>
      isA<ListSelectionActive>().having(
        (state) => state.selected,
        'selected',
        unorderedEquals(items),
      );

  blocTest<ListSelectionCubit, ListSelectionState>(
    'a selection starts inactive',
    build: ListSelectionCubit.new,
    verify: (selection) =>
        expect(selection.state, const ListSelectionInactive()),
  );

  blocTest<ListSelectionCubit, ListSelectionState>(
    'an always-active selection starts selecting its initial items',
    build: () => ListSelectionCubit.alwaysActive([mina]),
    verify: (selection) => expect(selection.state, selectingExactly([mina])),
  );

  blocTest<ListSelectionCubit, ListSelectionState>(
    'starting a selection selects only that item',
    build: () => ListSelectionCubit.alwaysActive([mark]),
    act: (selection) => selection.startSelectingWith(mina),
    expect: () => [
      selectingExactly([mina]),
    ],
  );

  blocTest<ListSelectionCubit, ListSelectionState>(
    'toggling adds an unselected item and removes a selected one',
    build: ListSelectionCubit.new,
    act: (selection) => selection
      ..startSelectingWith(mina)
      ..toggle(mark)
      ..toggle(mina),
    skip: 1,
    expect: () => [
      selectingExactly([mina, mark]),
      selectingExactly([mark]),
    ],
  );

  blocTest<ListSelectionCubit, ListSelectionState>(
    'toggling removes a selected item given as a refreshed copy',
    build: () => ListSelectionCubit.alwaysActive([mina]),
    act: (selection) => selection.toggle(Person(id: mina.id, name: 'اسم جديد')),
    expect: () => [selectingExactly(const [])],
  );

  blocTest<ListSelectionCubit, ListSelectionState>(
    'toggling while inactive changes nothing',
    build: ListSelectionCubit.new,
    act: (selection) => selection.toggle(mina),
    expect: () => const <ListSelectionState>[],
  );

  blocTest<ListSelectionCubit, ListSelectionState>(
    'selecting items keeps one copy of each and mixes types',
    build: () => ListSelectionCubit.alwaysActive([mina]),
    act: (selection) => selection
      ..selectAll([Person(id: mina.id, name: 'اسم جديد'), mark])
      ..select(minaFamily),
    expect: () => [
      selectingExactly([mina, mark]),
      selectingExactly([mina, mark, minaFamily]),
    ],
  );

  blocTest<ListSelectionCubit, ListSelectionState>(
    'selecting while inactive starts selecting',
    build: ListSelectionCubit.new,
    act: (selection) => selection.select(mina),
    expect: () => [
      selectingExactly([mina]),
    ],
  );

  blocTest<ListSelectionCubit, ListSelectionState>(
    'deselecting items keeps the rest selected',
    build: () => ListSelectionCubit.alwaysActive([mina, mark, minaFamily]),
    act: (selection) =>
        selection.deselectAll([Person(id: mina.id, name: 'اسم جديد'), mark]),
    expect: () => [
      selectingExactly([minaFamily]),
    ],
  );

  blocTest<ListSelectionCubit, ListSelectionState>(
    'an item re-selected as a refreshed copy is still the item selected before',
    build: () => ListSelectionCubit.alwaysActive([mina]),
    act: (selection) => selection
      ..toggle(mina)
      ..toggle(Person(id: mina.id, name: 'اسم جديد')),
    verify: (selection) =>
        expect(selection.state.selectedOfType<Person>().contains(mina), isTrue),
  );

  blocTest<ListSelectionCubit, ListSelectionState>(
    'ending a selection stops selecting',
    build: ListSelectionCubit.new,
    act: (selection) => selection
      ..startSelectingWith(mina)
      ..endUnlessAlwaysActive(),
    skip: 1,
    expect: () => [const ListSelectionInactive()],
  );

  blocTest<ListSelectionCubit, ListSelectionState>(
    'an always-active selection keeps selecting when asked to end',
    build: () => ListSelectionCubit.alwaysActive([mina]),
    act: (selection) => selection.endUnlessAlwaysActive(),
    expect: () => const <ListSelectionState>[],
  );
}
