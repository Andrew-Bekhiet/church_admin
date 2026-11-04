import 'dart:async';
import 'dart:math' as math;

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

/// A list loaded in keyset pages and kept live as one window: the loaded
/// window is registered with the server after each network load, and its
/// pushes edit the rows held in [_window]. Loads fetch chunks of at most
/// [maxPageSize] chained by their end keysets.
class KeysetPaginatedStream<T, P> extends PaginatableStreamBase<T>
    implements LiveQueryTarget {
  @override
  final int pageSize;
  final int? totalLimit;
  final int maxPageSize;

  final KeysetPageQuery<T> Function(P parameters) _pageQueryFor;
  final Json Function(P parameters) _variablesFor;
  final LiveQueryRegistry _registry;

  late final BehaviorSubject<PaginatableStreamData<T>> _subject =
      BehaviorSubject(onListen: () => _registry.notifyListened(this));
  final BehaviorSubject<bool> _loading = BehaviorSubject.seeded(true);
  late final StreamSubscription<P> _parametersSubscription;

  Future<void> _lastOperation = Future.value();
  int _generation = 0;
  bool _hasParameters = false;
  late P _parameters;
  int _pageIndex = 0;
  LiveListWindow? _window;
  KeysetPageQuery<T>? _loadedQuery;
  bool _awaitingResync = false;

  @override
  bool get isListened => _subject.hasListener;

  @override
  bool get hasMore => _subject.valueOrNull?.hasMore ?? false;

  @override
  int get currentPageIndex => _pageIndex;

  @override
  List<T> get currentItems => _subject.valueOrNull?.items ?? [];

  @override
  T? get currentCursor => currentItems.lastOrNull;

  @override
  int? get currentTotalCount => _subject.valueOrNull?.totalCount;

  @override
  bool get isLoading => _loading.value;

  @override
  Stream<bool> get onLoadingChanged => _loading.stream.distinct();

  @override
  Stream<int?> get totalCountStream =>
      _subject.map((data) => data.totalCount).distinct();

  @override
  bool get isBroadcast => true;

  int get _windowSize => (_pageIndex + 1) * pageSize;

  FetchPolicy get _networkPolicy =>
      _registry.isOnline ? FetchPolicy.networkOnly : FetchPolicy.cacheFirst;

  KeysetPaginatedStream({
    required Stream<P> parametersStream,
    required this._pageQueryFor,
    required this._variablesFor,
    required this._registry,
    int pageSize = PaginatableStream.defaultPageSize,
    this.maxPageSize = AshPagination.maxPageSize,
    this.totalLimit,
  }) : pageSize = totalLimit ?? pageSize {
    _registry.attach(this);
    _parametersSubscription = parametersStream.listen(_onParameters);
  }

  @override
  Future<void> listenToPage(int pageIndex) async {
    RangeError.checkNotNegative(pageIndex);
    if (isLoading || !_hasParameters || pageIndex <= _pageIndex) return;

    final generation = _generation;
    await _serialized(() async {
      final needsResyncs = (pageIndex + 1) * pageSize - currentItems.length;
      if (generation != _generation || !hasMore || needsResyncs <= 0) return;

      _pageIndex = pageIndex;
      await _load(
        generation,
        rows: needsResyncs,
        after: _window?.endKeyset,
        keep: currentItems,
      );
    });
  }

  @override
  Future<void> refetch() {
    final generation = _generation;

    return _serialized(() async {
      if (generation != _generation || !_hasParameters) return;

      await _load(generation, rows: _windowSize, after: null, keep: const []);
    });
  }

  void _onParameters(P parameters) {
    _parameters = parameters;
    _hasParameters = true;
    final generation = ++_generation;
    _pageIndex = 0;
    _registry.stopLive(this);
    unawaited(
      _serialized(() async {
        if (generation != _generation) return;

        if (_registry.isOnline) {
          await _showCachedWindow(generation);
        }
        await _load(generation, rows: _windowSize, after: null, keep: const []);
      }),
    );
  }

  Future<void> _showCachedWindow(int generation) async {
    try {
      await _load(
        generation,
        rows: _windowSize,
        after: null,
        keep: const [],
        fetchPolicy: FetchPolicy.cacheOnly,
      );
    } on Object {
      return;
    }
  }

  Future<void> _load(
    int generation, {
    required int rows,
    required String? after,
    required List<T> keep,
    FetchPolicy? fetchPolicy,
  }) async {
    final effectivePolicy = fetchPolicy ?? _networkPolicy;
    final isCachePreview = effectivePolicy == FetchPolicy.cacheOnly;
    if (effectivePolicy == FetchPolicy.cacheFirst) _registry.markStale(this);
    _loading.add(true);
    try {
      final query = _pageQueryFor(_parameters);
      final variables = _variablesFor(_parameters);
      final chunks = await _fetchChunks(
        query,
        variables,
        rows: rows,
        after: after,
        fetchPolicy: effectivePolicy,
      );
      if (generation != _generation) return;

      _registry.stopLive(this);
      _awaitingResync = false;
      _storeAndPublishLoaded(query, keep, chunks, requestedRows: rows);
      if (effectivePolicy == FetchPolicy.networkOnly) {
        _startLive(query, variables, chunks, isFromFirstRow: keep.isEmpty);
      }
    } on Object catch (error, stackTrace) {
      if (generation != _generation) return;
      if (isCachePreview) rethrow;

      _registry.markStale(this);
      _subject.addError(error, stackTrace);
    } finally {
      if (generation == _generation) _loading.add(false);
    }
  }

  Future<List<KeysetChunk<T>>> _fetchChunks(
    KeysetPageQuery<T> query,
    Json variables, {
    required int rows,
    required String? after,
    required FetchPolicy fetchPolicy,
  }) {
    return KeysetPageQuery.fetchChained(
      rows: rows,
      after: after,
      maxPageSize: maxPageSize,
      fetchChunk: (first, after) => query.fetch(
        variables: variables,
        chunk: KeysetChunkRequest(
          first: first,
          after: after,
          fetchPolicy: fetchPolicy,
        ),
      ),
    );
  }

  void _storeAndPublishLoaded(
    KeysetPageQuery<T> query,
    List<T> keep,
    List<KeysetChunk<T>> chunks, {
    required int requestedRows,
  }) {
    final fetchedRows = chunks.map((chunk) => chunk.page.items.length).sum;
    final chunksData = [for (final chunk in chunks) chunk.data];
    _loadedQuery = query;
    final window = _window =
        (keep.isEmpty ? null : _window) ??
        LiveListWindow(rootField: AshResultParser.rootFieldOf(query.document));
    window.append(chunksData);
    final page = query.parsePage(window.pageData);
    _publish(
      page.items,
      count: page.count,
      hasMore: fetchedRows >= requestedRows,
    );
  }

  void _publish(
    List<T> items, {
    required int? count,
    required bool hasMore,
  }) {
    _subject.add(
      PaginatableStreamData(
        items: items,
        cursor: hasMore ? items.lastOrNull : null,
        totalCount: switch ((count, totalLimit)) {
          (final count?, final limit?) => math.min(count, limit),
          (final count, _) => count,
        },
      ),
    );
  }

  void _startLive(
    KeysetPageQuery<T> query,
    Json variables,
    List<KeysetChunk<T>> chunks, {
    required bool isFromFirstRow,
  }) {
    final hashes = [for (final chunk in chunks) chunk.resultHash];
    final isEveryChunkHashKnown = isFromFirstRow && !hashes.contains(null);
    _registry.startLive(
      this,
      LiveQueryRequest(
        document: query.document,
        operationName: query.operationName,
        variables: variables,
        window: LiveWindowSize(rows: _windowSize, chunk: maxPageSize),
        resultHashes: isEveryChunkHashKnown ? hashes.cast<String>() : null,
      ),
    );
  }

  @override
  void onLiveResult(LiveResult result) {
    final window = _window;
    final query = _loadedQuery;
    if (window == null || query == null) return;

    final update = switch (result) {
      FullLiveResult(:final data) => _applyFull(window, data),
      ListDeltaLiveResult() when _awaitingResync => LiveWindowUpdate.unchanged,
      final ListDeltaLiveResult delta => window.applyDelta(delta),
    };
    switch (update) {
      case LiveWindowUpdate.unchanged:
        return;

      case LiveWindowUpdate.needsResync:
        _awaitingResync = true;
        _registry.requestResync(this);

      case LiveWindowUpdate.changed:
        final page = query.parsePage(window.pageData);
        _publish(
          page.items,
          count: page.count,
          hasMore: page.items.length >= _windowSize,
        );
    }
  }

  LiveWindowUpdate _applyFull(LiveListWindow window, Json data) {
    _awaitingResync = false;

    return window.applyFull(data);
  }

  Future<void> _serialized(Future<void> Function() operation) =>
      _lastOperation = _lastOperation
          .catchError((Object _) => null)
          .then((_) => operation());

  @override
  Stream<List<T>> asBroadcastStream({
    void Function(StreamSubscription<List<T>>)? onListen,
    void Function(StreamSubscription<List<T>>)? onCancel,
  }) => _subject
      .map((data) => data.items)
      .asBroadcastStream(onListen: onListen, onCancel: onCancel);

  @override
  StreamSubscription<List<T>> listen(
    void Function(List<T> value)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) => _subject
      .map((data) => data.items)
      .listen(
        onData,
        onError: onError,
        onDone: onDone,
        cancelOnError: cancelOnError,
      );

  @override
  Future<void> dispose() async {
    _generation++;
    _registry.detach(this);
    await _parametersSubscription.cancel();
    await _loading.close();
    await _subject.close();
  }
}
