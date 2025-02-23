import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

class SelectionController<T> {
  final Equality<T> equality;

  SelectionController({
    Iterable<T>? initialSelection,
    this.equality = const Equality(),
  }) {
    _subject = BehaviorSubject.seeded(_convertSet(initialSelection));
  }

  ValueStream<Set<T>?> get stream => _subject.stream;
  Set<T>? get currentValue => _subject.value;

  bool get isSelecting => currentValue != null;

  late final BehaviorSubject<Set<T>?> _subject;

  void toggle(T item) {
    if (isSelected(item)) {
      deselect(item);
    } else {
      select(item);
    }
  }

  bool isSelected(T item) {
    return currentValue?.contains(item) ?? false;
  }

  void select(T item) {
    final selectionWithItem = {..._subject.value ?? <T>{}, item};

    _subject.add(_convertSet(selectionWithItem));
  }

  void deselect(T item) {
    final selectionWithoutItem = (currentValue ?? <T>{}).difference(<T>{item});

    _subject.add(_convertSet(selectionWithoutItem));
  }

  void selectAll(Iterable<T> items) {
    final selectionWithItems = {..._subject.value ?? <T>{}, ...items};

    _subject.add(_convertSet(selectionWithItems));
  }

  void selectNone() {
    _subject.add(_convertSet(<T>{}));
  }

  void clear() {
    _subject.add(null);
  }

  Set<T>? _convertSet(Iterable<T>? set) =>
      set != null ? EqualitySet.from(equality, set) : null;

  Future<void> dispose() async {
    await _subject.close();
  }
}
