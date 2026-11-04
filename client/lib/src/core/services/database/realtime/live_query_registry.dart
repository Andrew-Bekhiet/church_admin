import 'dart:async';
import 'dart:collection';

import 'package:church_admin/church_admin.dart';
import 'package:rxdart/rxdart.dart';

/// Keeps active queries live through the live queries channel: each target holds at
/// most one registration, under a ref of its own that the server answers
/// to. A result for a ref no target holds any more is dropped. Every join of
/// the channel re-sends all registrations, because the server keeps none
/// across a join. A registration the channel fails to take, or whose first
/// run fails on the server, is sent again after [registerRetryDelay] up to
/// [maxRegisterAttempts] times, then its target turns stale; one the server
/// refuses is not. An unheard or offline target that missed a load only turns
/// stale until it is heard or online again, and at most
/// [maxConcurrentRefetches] stale refetches run at once. The client stays
/// subscribed for [liveQueriesGracePeriod] after the last target leaves, so
/// moving between screens does not reconnect it.
class LiveQueryRegistry {
  static const maxConcurrentRefetches = 4;
  static const liveQueriesGracePeriod = Duration(seconds: 30);
  static const registerRetryDelay = Duration(seconds: 5);
  static const maxRegisterAttempts = 5;

  final LiveQueriesClient? _liveQueries;
  final ValueStream<bool> _connectivity;

  final Map<LiveQueryTarget, LiveQueryTargetState> _states = {};
  final Map<String, LiveQueryTarget> _targetsByRef = {};
  final Queue<LiveQueryTarget> _refetchQueue = Queue();
  int _refetchesRunning = 0;
  int _refCounter = 0;

  StreamSubscription<LiveQueriesEvent>? _liveQueriesSubscription;
  StreamSubscription<bool>? _connectivitySubscription;
  Timer? _liveQueriesRelease;
  Timer? _registerRetry;

  bool get isOnline => _connectivity.valueOrNull ?? true;

  LiveQueryRegistry({
    required this._liveQueries,
    required this._connectivity,
  });

  LiveQueryRegistry.withoutLiveQueries({
    required ValueStream<bool> connectivity,
  }) : this(liveQueries: null, connectivity: connectivity);

  void attach(LiveQueryTarget target) {
    _liveQueriesRelease?.cancel();
    _liveQueriesRelease = null;
    _states[target] = LiveQueryTargetState();
    _liveQueriesSubscription ??= _liveQueries?.events.listen(
      _onLiveQueriesEvent,
    );
    _connectivitySubscription ??= _connectivity
        .distinct()
        .where((online) => online)
        .listen((_) => _refetchStaleListenedTargets());
  }

  void detach(LiveQueryTarget target) {
    stopLive(target);
    _states.remove(target);
    _refetchQueue.remove(target);
    if (_states.isNotEmpty) return;

    _liveQueriesRelease?.cancel();
    _liveQueriesRelease = Timer(liveQueriesGracePeriod, _releaseLiveQueries);
  }

  /// Registers [request] for [target] under a new ref, replacing the
  /// registration it held, so that no result of the old one applies again.
  void startLive(LiveQueryTarget target, LiveQueryRequest request) {
    final state = _states[target];
    if (state == null) return;

    stopLive(target);
    final live = LiveRegistrationState(
      ref: 'live-${_refCounter++}',
      request: request,
    );
    state.live = live;
    _targetsByRef[live.ref] = target;
    unawaited(_sendRegistrationOrRetryOrMarkStale(target, live));
  }

  void stopLive(LiveQueryTarget target) {
    final live = _states[target]?.live;
    if (live == null) return;

    _states[target]?.live = null;
    _targetsByRef.remove(live.ref);
    _liveQueries?.unregister(live.ref);
  }

  void requestResync(LiveQueryTarget target) {
    if (_states[target]?.live case final live?) _liveQueries?.resync(live.ref);
  }

  /// Makes [target] refetch once it is heard and online, for a load that
  /// could not reach the server.
  void markStale(LiveQueryTarget target) => _states[target]?.stale = true;

  void notifyListened(LiveQueryTarget target) {
    final state = _states[target];
    if (state == null || !state.stale) return;

    state.stale = false;
    _enqueue(target);
  }

  void _releaseLiveQueries() {
    _liveQueriesRelease = null;
    unawaited(_liveQueriesSubscription?.cancel());
    _liveQueriesSubscription = null;
    unawaited(_connectivitySubscription?.cancel());
    _connectivitySubscription = null;
  }

  void _onLiveQueriesEvent(LiveQueriesEvent event) {
    switch (event) {
      case LiveResultReceived(:final result):
        _route(result);

      case ChannelJoined():
        _registerAgain();
    }
  }

  void _route(LiveResult result) {
    final target = _targetsByRef[result.ref];
    final live = _states[target]?.live;
    if (target == null || live == null) return;

    _forgetResultHashes(live);
    target.onLiveResult(result);
  }

  void _forgetResultHashes(LiveRegistrationState live) =>
      live.request = live.request.withoutResultHashes();

  void _registerAgain() {
    for (final MapEntry(key: target, value: state) in _states.entries) {
      if (state.live case final live?) {
        live.failedAttempts = 0;
        unawaited(_sendRegistrationOrRetryOrMarkStale(target, live));
      }
    }
  }

  Future<void> _sendRegistrationOrRetryOrMarkStale(
    LiveQueryTarget target,
    LiveRegistrationState live,
  ) async {
    live.needsRetry = false;
    final outcome = await _liveQueries?.register(
      LiveRegistration(ref: live.ref, request: live.request),
    );
    if (outcome != LiveRegisterOutcome.failed) return;
    if (!identical(_states[target]?.live, live)) return;

    if (++live.failedAttempts >= maxRegisterAttempts) {
      markStale(target);

      return;
    }

    live.needsRetry = true;
    _registerRetry ??= Timer(registerRetryDelay, _retryFailedRegistrations);
  }

  void _retryFailedRegistrations() {
    _registerRetry = null;
    for (final MapEntry(key: target, value: state) in _states.entries) {
      if (state.live
          case LiveRegistrationState(needsRetry: true) && final live) {
        unawaited(_sendRegistrationOrRetryOrMarkStale(target, live));
      }
    }
  }

  void _refetchStaleListenedTargets() {
    for (final MapEntry(key: target, value: state) in _states.entries) {
      if (!state.stale || !target.isListened) continue;

      state.stale = false;
      _enqueue(target);
    }
  }

  void _enqueue(LiveQueryTarget target) {
    final state = _states[target];
    if (state == null) return;
    if (state.refetching) {
      state.refetchAgain = true;

      return;
    }
    if (!_refetchQueue.contains(target)) _refetchQueue.add(target);
    _startQueuedRefetches();
  }

  void _startQueuedRefetches() {
    while (_refetchesRunning < maxConcurrentRefetches &&
        _refetchQueue.isNotEmpty) {
      final target = _refetchQueue.removeFirst();
      final state = _states[target];
      if (state == null) continue;

      _refetchesRunning++;
      state.refetching = true;
      unawaited(
        target
            .refetch()
            .catchError((Object _) => null)
            .whenComplete(() => _onRefetchDone(target, state)),
      );
    }
  }

  void _onRefetchDone(LiveQueryTarget target, LiveQueryTargetState state) {
    _refetchesRunning--;
    state.refetching = false;
    if (state.refetchAgain) {
      state.refetchAgain = false;
      _enqueue(target);
    }
    _startQueuedRefetches();
  }
}

class LiveQueryTargetState {
  LiveRegistrationState? live;
  bool stale = false;
  bool refetching = false;
  bool refetchAgain = false;
}

class LiveRegistrationState {
  final String ref;
  LiveQueryRequest request;
  bool needsRetry = false;
  int failedAttempts = 0;

  LiveRegistrationState({required this.ref, required this.request});
}
