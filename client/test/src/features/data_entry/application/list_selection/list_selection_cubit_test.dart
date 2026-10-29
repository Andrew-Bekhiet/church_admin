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

  test('a selection starts inactive', () {
    final selection = ListSelectionCubit();
    addTearDown(selection.close);

    expect(selection.state, const ListSelectionInactive());
  });

  test('an always-active selection starts selecting its initial items', () {
    final selection = ListSelectionCubit.alwaysActive([mina]);
    addTearDown(selection.close);

    expect(selection.state, selectingExactly([mina]));
  });

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
    'selecting none keeps selecting with nothing selected',
    build: () => ListSelectionCubit.alwaysActive([mina, mark]),
    act: (selection) => selection.selectNone(),
    expect: () => [selectingExactly(const [])],
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

  test('an item shows as unmarked while not selecting', () {
    expect(const ListSelectionInactive().maybeIsSelected(mina), isNull);
    expect(ListSelectionActive([mina]).maybeIsSelected(mina), isTrue);
    expect(ListSelectionActive([mina]).maybeIsSelected(mark), isFalse);
  });
}
