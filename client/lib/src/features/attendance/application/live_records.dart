final class LiveRecords<K, R> {
  final K Function(R record) _keyOf;

  Set<K> _inFlight = {};
  Map<K, R> _serverRecords = {};
  Map<K, R?> _optimisticRecords = {};

  Set<K> get effectiveKeys => {
    ..._serverRecords.keys,
    ..._optimisticRecords.keys,
  }.where((key) => effectiveRecord(key) != null).toSet();

  LiveRecords({required this._keyOf});

  bool isPending(K key) =>
      _inFlight.contains(key) || _optimisticRecords.containsKey(key);

  void beginOptimistic(K key, R? optimisticRecord) {
    _optimisticRecords[key] = optimisticRecord;
    _inFlight.add(key);
  }

  void endInFlight(K key) => _inFlight.remove(key);

  void rollbackOptimistic(K key) => _optimisticRecords.remove(key);

  void settle(K key) {
    endInFlight(key);
    _dropConfirmedOptimisticRecords();
  }

  void refreshWithServerRecords(Iterable<R> records) {
    _serverRecords = {for (final record in records) _keyOf(record): record};
    _dropConfirmedOptimisticRecords();
  }

  R? effectiveRecord(K key) => _optimisticRecords.containsKey(key)
      ? _optimisticRecords[key]
      : _serverRecords[key];

  void reset() {
    _serverRecords = {};
    _optimisticRecords = {};
    _inFlight = {};
  }

  // Only drop an optimistic mark once the server confirms it — i.e. when
  // the server record agrees with the optimistic state. A stale subscription
  // snapshot (one that predates the committed INSERT/DELETE) would otherwise
  // clear the mark early and flash the record to the wrong state.
  void _dropConfirmedOptimisticRecords() {
    _optimisticRecords.removeWhere((key, optimisticRecord) {
      if (_inFlight.contains(key)) return false;

      final serverHasRecord = _serverRecords.containsKey(key);

      return optimisticRecord != null ? serverHasRecord : !serverHasRecord;
    });
  }
}
