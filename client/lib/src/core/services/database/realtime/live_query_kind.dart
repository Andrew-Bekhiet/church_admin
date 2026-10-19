enum LiveQueryKind {
  entity(
    debounce: Duration(milliseconds: 250),
    maxWait: Duration(seconds: 1),
  ),
  list(debounce: Duration(seconds: 1), maxWait: Duration(seconds: 3));

  final Duration debounce;

  /// The longest a refetch waits while changes keep restarting [debounce].
  final Duration maxWait;

  const LiveQueryKind({required this.debounce, required this.maxWait});
}
