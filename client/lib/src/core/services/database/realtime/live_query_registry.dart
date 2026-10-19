import 'dart:async';
import 'dart:collection';

import 'package:church_admin/church_admin.dart';
import 'package:rxdart/rxdart.dart';

/// Decides which active queries a change feed event invalidates and when
/// they refetch: each target debounces by its [LiveQueryKind], an unheard or
/// offline target only turns stale until it is heard or online again, and
/// at most [maxConcurrentRefetches] refetches run at once.
class LiveQueryRegistry {
  static const maxConcurrentRefetches = 4;

  final Stream<ChangeFeedEvent> _changeFeedEvents;
  final ValueStream<bool> _connectivity;

  final Map<LiveQueryTarget, LiveQueryTargetSchedule> _schedules = {};
  final Queue<LiveQueryTarget> _refetchQueue = Queue();
  int _refetchesRunning = 0;

  StreamSubscription<ChangeFeedEvent>? _changeFeedSubscription;
  StreamSubscription<bool>? _connectivitySubscription;

  bool get _isOnline => _connectivity.valueOrNull ?? true;

  LiveQueryRegistry({
    required this._changeFeedEvents,
    required this._connectivity,
  });

  LiveQueryRegistry.withoutChangeFeed({
    required ValueStream<bool> connectivity,
  }) : this(changeFeedEvents: const Stream.empty(), connectivity: connectivity);

  void register(LiveQueryTarget target) {
    _schedules[target] = LiveQueryTargetSchedule();
    _changeFeedSubscription ??= _changeFeedEvents.listen(_onChangeFeedEvent);
    _connectivitySubscription ??= _connectivity
        .distinct()
        .where((online) => online)
        .listen((_) => _refetchStaleListenedTargets());
  }

  void unregister(LiveQueryTarget target) {
    _schedules.remove(target)?.debounce?.cancel();
    _refetchQueue.remove(target);
    if (_schedules.isNotEmpty) return;

    unawaited(_changeFeedSubscription?.cancel());
    _changeFeedSubscription = null;
    unawaited(_connectivitySubscription?.cancel());
    _connectivitySubscription = null;
  }

  void notifyListened(LiveQueryTarget target) {
    final schedule = _schedules[target];
    if (schedule == null || !schedule.stale) return;

    schedule.stale = false;
    _enqueue(target);
  }

  void _onChangeFeedEvent(ChangeFeedEvent event) {
    final invalidated = switch (event) {
      ResyncRequired() => _schedules.keys.toList(),
      ChangesReceived(:final changes) => [
        for (final target in _schedules.keys)
          if (changes.any(
            (change) => target.dependencies.isAffectedBy(change, target.kind),
          ))
            target,
      ],
    };
    for (final target in invalidated) {
      _invalidate(target);
    }
  }

  void _invalidate(LiveQueryTarget target) {
    final schedule = _schedules[target];
    if (schedule == null) return;

    schedule
      ..debounce?.cancel()
      ..debounce = Timer(target.kind.debounce, () => _onDue(target));
  }

  void _onDue(LiveQueryTarget target) {
    final schedule = _schedules[target];
    if (schedule == null) return;

    schedule.debounce = null;
    if (!target.isListened || !_isOnline) {
      schedule.stale = true;

      return;
    }
    _enqueue(target);
  }

  void _refetchStaleListenedTargets() {
    for (final MapEntry(key: target, value: schedule) in _schedules.entries) {
      if (!schedule.stale || !target.isListened) continue;

      schedule.stale = false;
      _enqueue(target);
    }
  }

  void _enqueue(LiveQueryTarget target) {
    final schedule = _schedules[target];
    if (schedule == null) return;
    if (schedule.refetching) {
      schedule.refetchAgain = true;

      return;
    }
    if (!_refetchQueue.contains(target)) _refetchQueue.add(target);
    _startQueuedRefetches();
  }

  void _startQueuedRefetches() {
    while (_refetchesRunning < maxConcurrentRefetches &&
        _refetchQueue.isNotEmpty) {
      final target = _refetchQueue.removeFirst();
      final schedule = _schedules[target];
      if (schedule == null) continue;

      _refetchesRunning++;
      schedule.refetching = true;
      unawaited(
        target
            .refetch()
            .catchError((Object _) => null)
            .whenComplete(() => _onRefetchDone(target, schedule)),
      );
    }
  }

  void _onRefetchDone(
    LiveQueryTarget target,
    LiveQueryTargetSchedule schedule,
  ) {
    _refetchesRunning--;
    schedule.refetching = false;
    if (schedule.refetchAgain) {
      schedule.refetchAgain = false;
      _enqueue(target);
    }
    _startQueuedRefetches();
  }
}

class LiveQueryTargetSchedule {
  Timer? debounce;
  bool stale = false;
  bool refetching = false;
  bool refetchAgain = false;
}
