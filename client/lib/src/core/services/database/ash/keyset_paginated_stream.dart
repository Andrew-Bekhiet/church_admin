import 'dart:async';
import 'dart:math' as math;

import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

typedef KeysetChunkFetcher<T, P> = Future<KeysetChunk<T>> Function(
  P parameters,
  KeysetChunkRequest chunk,
);

/// A list loaded in keyset pages and kept live as one window: every loaded
/// row is refetched from the start when the change feed touches the list,
/// in chunks of at most [maxPageSize] chained by their end keysets.
class KeysetPaginatedStream<T, P> extends PaginatableStreamBase<T>
    implements LiveQueryTarget {
  @override
  final int pageSize;
  final int? totalLimit;
  final int maxPageSize;

  final KeysetChunkFetcher<T, P> _fetchChunk;
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
  String? _endKeyset;

  @override
  LiveQueryDependencies dependencies = LiveQueryDependencies.unknown;

  @override
  LiveQueryKind get kind => LiveQueryKind.list;

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
    required this._fetchChunk,
    required this._registry,
    int pageSize = PaginatableStream.defaultPageSize,
    this.maxPageSize = AshPagination.maxPageSize,
    this.totalLimit,
  }) : pageSize = totalLimit ?? pageSize {
    _registry.register(this);
    _parametersSubscription = parametersStream.listen(_onParameters);
  }

  @override
  Future<void> listenToPage(int pageIndex) async {
    RangeError.checkNotNegative(pageIndex);
    if (isLoading || !_hasParameters || pageIndex <= _pageIndex) return;

    final generation = _generation;
    await _serialized(() async {
      final missingRows = (pageIndex + 1) * pageSize - currentItems.length;
      if (generation != _generation || !hasMore || missingRows <= 0) return;

      _pageIndex = pageIndex;
      await _load(
        generation,
        rows: missingRows,
        after: _endKeyset,
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
      final chunks = await _fetchChunks(
        rows: rows,
        after: after,
        fetchPolicy: effectivePolicy,
      );
      if (generation != _generation) return;

      _emit(keep, chunks, requestedRows: rows);
    } on Object catch (error, stackTrace) {
      if (generation != _generation) return;
      if (isCachePreview) rethrow;

      _registry.markStale(this);
      _subject.addError(error, stackTrace);
    } finally {
      if (generation == _generation) _loading.add(false);
    }
  }

  Future<List<KeysetChunk<T>>> _fetchChunks({
    required int rows,
    required String? after,
    required FetchPolicy fetchPolicy,
  }) {
    return KeysetPageQuery.fetchChained(
      rows: rows,
      after: after,
      maxPageSize: maxPageSize,
      fetchChunk: (first, after) => _fetchChunk(
        _parameters,
        KeysetChunkRequest(
          first: first,
          after: after,
          fetchPolicy: fetchPolicy,
        ),
      ),
    );
  }

  void _emit(
    List<T> keep,
    List<KeysetChunk<T>> chunks, {
    required int requestedRows,
  }) {
    final items = [
      ...keep,
      for (final chunk in chunks) ...chunk.page.items,
    ];
    final fetchedRows = items.length - keep.length;
    final hasMore = fetchedRows >= requestedRows;
    _endKeyset = chunks.lastOrNull?.page.endKeyset ?? _endKeyset;
    final loadedDependencies = LiveQueryDependencies.ofResult([
      for (final chunk in chunks) chunk.data,
    ]);
    dependencies = keep.isEmpty
        ? loadedDependencies
        : dependencies.union(loadedDependencies);
    final count = chunks.lastOrNull?.page.count;
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
    _registry.unregister(this);
    await _parametersSubscription.cancel();
    await _loading.close();
    await _subject.close();
  }
}
