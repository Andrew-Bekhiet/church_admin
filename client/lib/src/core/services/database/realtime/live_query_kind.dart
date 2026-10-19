enum LiveQueryKind {
  entity(debounce: Duration(milliseconds: 250)),
  list(debounce: Duration(seconds: 1));

  final Duration debounce;

  const LiveQueryKind({required this.debounce});
}
