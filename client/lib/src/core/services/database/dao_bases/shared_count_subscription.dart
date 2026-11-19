import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

class SharedCountSubscription {
  final Stream<int?> Function(List<Filter>? where) _subscribeToCount;

  List<Filter>? _where;
  ValueStream<int?>? _counts;
  StreamSubscription<int?>? _connection;
  bool _hasEnded = false;

  SharedCountSubscription(this._subscribeToCount);

  Stream<int?> countsFor(List<Filter>? where) {
    if (_counts case final counts?
        when !_hasEnded && const ListEquality<Filter>().equals(where, _where)) {
      return counts;
    }

    unawaited(_connection?.cancel());
    _where = where;
    _hasEnded = false;
    final counts = _subscribeToCount(where)
        .doOnError((_, _) => _hasEnded = true)
        .doOnDone(() => _hasEnded = true)
        .publishValue();
    _connection = counts.connect();

    return _counts = counts;
  }

  Future<void> dispose() async => _connection?.cancel();
}
