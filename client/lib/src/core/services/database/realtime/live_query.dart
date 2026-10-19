import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

/// A query whose stream stays current: it emits the cached then the network
/// result, rebroadcasts cache writes (own mutations) and refetches when the
/// [LiveQueryRegistry] sees a change to what it showed. Single subscription:
/// the query runs from listen until cancel.
class LiveQuery<T> extends Stream<T> implements LiveQueryTarget {
  final DBGraphQLClient _client;
  final LiveQueryRegistry _registry;
  final WatchQueryOptions<T> _options;

  @override
  final LiveQueryKind kind;

  @override
  LiveQueryDependencies dependencies = LiveQueryDependencies.unknown;

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
    required this.kind,
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
    _registry.register(this);
    if (!_registry.isOnline) _registry.markStale(this);
    _resultsSubscription = results
        .where((result) => result.isNotLoading)
        .listen(
          (result) {
            dependencies = LiveQueryDependencies.ofResult(result.data);
            _controller?.add(result.parsedData as T);
          },
          onError: (Object error, StackTrace stackTrace) {
            _registry.markStale(this);
            _controller?.addError(error, stackTrace);
          },
        );
  }

  Future<void> _stop() async {
    _registry.unregister(this);
    unawaited(_controller?.close());
    await _resultsSubscription?.cancel();
    await _query?.close();
    _query = null;
  }
}
