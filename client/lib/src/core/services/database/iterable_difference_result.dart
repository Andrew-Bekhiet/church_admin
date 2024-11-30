class IterableDifferenceResult<T> {
  final Iterable<T> removed;
  final Iterable<T> added;

  IterableDifferenceResult({
    required this.removed,
    required this.added,
  });
}
