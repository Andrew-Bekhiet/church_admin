import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final mina = Person(id: 'p1', name: 'مينا');
  final mark = Person(id: 'p2', name: 'مارك');
  const minaFamily = Family(id: 'f1', name: 'عائلة مينا');

  test('selected items of a type leave out the other types', () {
    final state = ListSelectionActive([mina, minaFamily, mark]);

    expect(state.selectedOfType<Person>(), {mina, mark});
    expect(state.selectedOfType<Family>(), {minaFamily});
  });

  test('all items count as selected only when each one is', () {
    expect(
      ListSelectionActive([mina, mark]).areAllSelected([mina, mark]),
      isTrue,
    );
    expect(ListSelectionActive([mina]).areAllSelected([mina, mark]), isFalse);
    expect(ListSelectionActive([mina]).areAllSelected(const []), isFalse);
    expect(const ListSelectionInactive().areAllSelected([mina]), isFalse);
  });

  test('selections holding the same items are equal', () {
    expect(ListSelectionActive([mina]), ListSelectionActive([mina]));
    expect(ListSelectionActive([mina]), isNot(ListSelectionActive([mark])));
    expect(ListSelectionActive(const []), isNot(const ListSelectionInactive()));
  });

  test('an item shows as unmarked while not selecting', () {
    expect(const ListSelectionInactive().maybeIsSelected(mina), isNull);
    expect(ListSelectionActive([mina]).maybeIsSelected(mina), isTrue);
    expect(ListSelectionActive([mina]).maybeIsSelected(mark), isFalse);
  });
}
