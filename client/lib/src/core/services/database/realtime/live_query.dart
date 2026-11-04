import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

/// A query whose stream stays current: it emits the cached then the network
/// result, rebroadcasts cache writes (own mutations), and registers with the
/// server after each network result so that its pushes are written to the
/// cache. Single subscription: the query runs from listen until cancel.
class LiveQuery<T> extends Stream<T> implements LiveQueryTarget {
  final DBGraphQLClient _client;
  final LiveQueryRegistry _registry;
  final WatchQueryOptions<T> _options;

  StreamController<T>? _controller;
  ObservableQuery<T>? _query;
  StreamSubscription<QueryResult<T>>? _resultsSubscription;

  @override
  bool get isListened {
    final controller = _controller;

    return controller != null && controller.hasListener && !controller.isPaused;
  }

  LiveQuery({
    required this._client,
    required this._registry,
    required this._options,
  });

  @override
  StreamSubscription<T> listen(
    void Function(T event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    if (_controller != null) {
      throw StateError('A LiveQuery can be listened to only once.');
    }

    return (_controller = StreamController<T>(
      onListen: _start,
      onResume: () => _registry.notifyListened(this),
      onCancel: _stop,
    )).stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }

  @override
  Future<void> refetch() async {
    final query = _query;
    if (query == null) return;

    if (!query.isRefetchSafe) {
      await query.stream.firstWhere((result) => result.isNotLoading);
    }
    await query.refetch();
  }

  void _start() {
    final (:query, :results) = _client.watchQueryWithConnectivityPolicy(
      _options,
    );
    _query = query;
    _registry.attach(this);
    if (!_registry.isOnline) _registry.markStale(this);
    _resultsSubscription = results
        .where((result) => result.isNotLoading)
        .listen(
          (result) {
            if (result.source == QueryResultSource.network) {
              _startLive(result);
            }
            _controller?.add(result.parsedData as T);
          },
          onError: (Object error, StackTrace stackTrace) {
            _registry.markStale(this);
            _controller?.addError(error, stackTrace);
          },
        );
  }

  void _startLive(QueryResult<T> result) {
    final resultHash = result.resultHash;
    _registry.startLive(
      this,
      LiveQueryRequest(
        document: _options.document,
        operationName: _options.operationName,
        variables: _options.variables,
        resultHashes: resultHash == null ? null : [resultHash],
      ),
    );
  }

  @override
  void onLiveResult(LiveResult result) {
    switch (result) {
      case FullLiveResult(:final data):
        try {
          _client.writeQuery(_options.asRequest, data: data);
        } on PartialDataException {
          refetch().ignore();
        }

      case ListDeltaLiveResult():
        _registry.requestResync(this);
    }
  }

  Future<void> _stop() async {
    _registry.detach(this);
    unawaited(_controller?.close());
    await _resultsSubscription?.cancel();
    await _query?.close();
    _query = null;
  }
}
