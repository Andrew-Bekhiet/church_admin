import 'dart:async';
import 'dart:developer';

import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

class DelegatingPaginatableStream<T> extends PaginatableStreamBase<T> {
  @protected
  final OnQuery<T> streamDelegate;

  DelegatingPaginatableStream({
    required this.streamDelegate,
    bool isLogging = kDebugMode,
    super.limit = 100,
  }) : super.private() {
    _querySubscription = streamDelegate(
      this,
      isLogging
          ? _offset.map(
              (o) {
                log('Listening to offset ' + o.toString());
                return o;
              },
            )
          : _offset,
    ).map(
      (r) {
        _canPaginateBackward = r.canPaginateBackward ?? _canPaginateBackward;
        _canPaginateForward = r.canPaginateForward ?? _canPaginateForward;
        _isLoading = false;

        return r.result;
      },
    ).listen(_subject.add, onError: _subject.addError);
  }

  late final StreamSubscription<List<T>> _querySubscription;

  final BehaviorSubject<List<T>> _subject = BehaviorSubject();
  final BehaviorSubject<int> _offset = BehaviorSubject.seeded(0);

  bool _isLoading = true;
  bool _canPaginateBackward = false;
  bool _canPaginateForward = false;

  @override
  bool get isLoading => _isLoading;
  @override
  bool get canPaginateBackward => _canPaginateBackward;
  @override
  bool get canPaginateForward => _canPaginateForward;

  @override
  int get currentOffset => _offset.value;

  @override
  ValueStream<List<T>> get stream => _subject.shareValue();

  @override
  List<T> get currentValue => _subject.value.toList();

  @override
  List<T>? get currentValueOrNull => _subject.valueOrNull?.toList();

  @override
  Future<void> loadPage(int offset) async {
    _canPaginateForward = false;
    _canPaginateBackward = false;
    _isLoading = true;

    _offset.add(offset);
  }

  @override
  Future<void> loadNextPage() async {
    if (canPaginateForward) {
      _canPaginateForward = false;
      _isLoading = true;
      _offset.add(_offset.value + 1);
    } else {
      throw StateError('Cannot paginate forward');
    }
  }

  @override
  Future<void> loadPreviousPage() async {
    if (canPaginateBackward) {
      _canPaginateBackward = false;
      _isLoading = true;
      _offset.add(_offset.value - 1);
    } else {
      throw StateError('Cannot paginate backward');
    }
  }

  @override
  Future<void> dispose() async {
    await _subject.close();
    await _querySubscription.cancel();
    await _offset.close();
  }
}

typedef OnQuery<TParsed> = Stream<DelegatingStreamResult<TParsed>> Function(
  DelegatingPaginatableStream<TParsed> instance,
  Stream<int> offset,
);

class DelegatingStreamResult<T> {
  final List<T> result;
  final bool? canPaginateBackward;
  final bool? canPaginateForward;

  DelegatingStreamResult({
    required this.result,
    this.canPaginateBackward,
    this.canPaginateForward,
  });
}
