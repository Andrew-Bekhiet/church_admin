import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'SelectionController: initialSelection',
    () async {
      final initialSelection = {'a', 'b'};
      final unit = SelectionController<String>(
        initialSelection: initialSelection,
      );

      expect(unit.stream, emitsInOrder([initialSelection, emitsDone]));

      expect(unit.currentValue, initialSelection);

      await unit.dispose();
    },
  );

  test(
    'SelectionController: select',
    () async {
      final initialSelection = {'a', 'b'};
      final unit = SelectionController<String>(
        initialSelection: initialSelection,
      );

      expect(
        unit.stream,
        emitsInOrder([
          initialSelection,
          {'a', 'b', 'c'},
          emitsDone,
        ]),
      );

      unit.select('c');

      expect(unit.currentValue, {'a', 'b', 'c'});

      await unit.dispose();
    },
  );

  test(
    'SelectionController: deselect',
    () async {
      final initialSelection = {'a', 'b'};
      final unit = SelectionController<String>(
        initialSelection: initialSelection,
      );

      expect(
        unit.stream,
        emitsInOrder([
          initialSelection,
          {'a'},
          emitsDone,
        ]),
      );

      unit.deselect('b');

      expect(unit.currentValue, {'a'});

      await unit.dispose();
    },
  );

  test(
    'SelectionController: selectAll',
    () async {
      final initialSelection = {'a', 'b'};
      final unit = SelectionController<String>(
        initialSelection: initialSelection,
      );

      expect(
        unit.stream,
        emitsInOrder([
          initialSelection,
          {'a', 'b', 'c', 'd'},
          emitsDone,
        ]),
      );

      unit.selectAll(['c', 'd']);

      expect(unit.currentValue, {'a', 'b', 'c', 'd'});

      await unit.dispose();
    },
  );

  test(
    'SelectionController: selectNone',
    () async {
      final initialSelection = {'a', 'b'};
      final unit = SelectionController<String>(
        initialSelection: initialSelection,
      );

      expect(
        unit.stream,
        emitsInOrder([
          initialSelection,
          <String>{},
          emitsDone,
        ]),
      );

      unit.selectNone();

      expect(unit.currentValue, <String>{});

      await unit.dispose();
    },
  );

  test(
    'SelectionController: toggle',
    () async {
      final initialSelection = {'a', 'b'};
      final unit = SelectionController<String>(
        initialSelection: initialSelection,
      );

      expect(
        unit.stream,
        emitsInOrder([
          initialSelection,
          {'a', 'b', 'c'},
          {'a', 'b'},
          emitsDone,
        ]),
      );

      unit
        ..toggle('c')
        ..toggle('c');

      await unit.dispose();
    },
  );

  test(
    'SelectionController: clear',
    () async {
      final initialSelection = {'a', 'b'};
      final unit = SelectionController<String>(
        initialSelection: initialSelection,
      );

      expect(
        unit.stream,
        emitsInOrder([
          initialSelection,
          null,
          emitsDone,
        ]),
      );

      unit.clear();

      expect(unit.currentValue, isNull);

      await unit.dispose();
    },
  );

  test(
    'SelectionController: isSelecting',
    () async {
      final unit = SelectionController<String>();

      expect(unit.isSelecting, isFalse);

      unit.select('a');

      expect(unit.isSelecting, isTrue);

      unit.clear();

      expect(unit.isSelecting, isFalse);

      await unit.dispose();
    },
  );

  test(
    'SelectionController: isSelected',
    () async {
      final unit = SelectionController<String>();

      expect(unit.isSelected('a'), isFalse);

      unit.select('a');

      expect(unit.isSelected('a'), isTrue);

      await unit.dispose();
    },
  );
}
