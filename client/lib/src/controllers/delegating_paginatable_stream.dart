import 'dart:async';
import 'dart:developer';

import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

class DelegatingPaginatableStream<T> extends PaginatableStreamBase<T>
    implements Stream<List<T>> {
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
        _onLoadingChanged.add(false);

        return r.result;
      },
    ).listen(_subject.add, onError: _subject.addError);
  }

  late final StreamSubscription<List<T>> _querySubscription;

  final BehaviorSubject<List<T>> _subject = BehaviorSubject();
  final BehaviorSubject<int> _offset = BehaviorSubject.seeded(0);

  bool _canPaginateBackward = false;
  bool _canPaginateForward = false;

  final BehaviorSubject<bool> _onLoadingChanged = BehaviorSubject.seeded(true);

  @override
  ValueStream<bool> get onLoadingChanged => _onLoadingChanged.stream;

  @override
  bool get isLoading => _onLoadingChanged.value;
  @override
  bool get canPaginateBackward => _canPaginateBackward;
  @override
  bool get canPaginateForward => _canPaginateForward;

  @override
  int get currentOffset => _offset.value;

  @override
  ValueStream<List<T>> get stream => _subject.stream;

  @override
  List<T> get currentValue => _subject.value.toList();

  @override
  List<T>? get currentValueOrNull => _subject.valueOrNull?.toList();

  @override
  Future<void> loadPage(int offset) async {
    _canPaginateForward = false;
    _canPaginateBackward = false;
    _onLoadingChanged.add(true);

    _offset.add(offset);
  }

  @override
  Future<void> loadNextPage() async {
    if (canPaginateForward) {
      _canPaginateForward = false;
      _onLoadingChanged.add(true);
      _offset.add(_offset.value + 1);
    } else {
      throw StateError('Cannot paginate forward');
    }
  }

  @override
  Future<void> loadPreviousPage() async {
    if (canPaginateBackward) {
      _canPaginateBackward = false;
      _onLoadingChanged.add(true);
      _offset.add(_offset.value - 1);
    } else {
      throw StateError('Cannot paginate backward');
    }
  }

  @override
  Future<bool> any(bool Function(List<T> element) test) => stream.any(test);

  @override
  Stream<List<T>> asBroadcastStream({
    void Function(StreamSubscription<List<T>> subscription)? onListen,
    void Function(StreamSubscription<List<T>> subscription)? onCancel,
  }) =>
      stream.asBroadcastStream(onListen: onListen, onCancel: onCancel);

  @override
  Stream<E> asyncExpand<E>(Stream<E>? Function(List<T> event) convert) =>
      stream.asyncExpand(convert);

  @override
  Stream<E> asyncMap<E>(FutureOr<E> Function(List<T> event) convert) =>
      stream.asyncMap(convert);

  @override
  Stream<R> cast<R>() => stream.cast<R>();

  @override
  Future<bool> contains(Object? needle) => stream.contains(needle);

  @override
  Stream<List<T>> distinct([
    bool Function(List<T> previous, List<T> next)? equals,
  ]) =>
      stream.distinct(equals);

  @override
  Future<E> drain<E>([E? futureValue]) => stream.drain(futureValue);

  @override
  Future<List<T>> elementAt(int index) => stream.elementAt(index);

  @override
  Future<bool> every(bool Function(List<T> element) test) => stream.every(test);

  @override
  Stream<S> expand<S>(Iterable<S> Function(List<T> element) convert) =>
      stream.expand(convert);

  @override
  Future<List<T>> get first => stream.first;

  @override
  Future<List<T>> firstWhere(
    bool Function(List<T> element) test, {
    List<T> Function()? orElse,
  }) =>
      stream.firstWhere(test, orElse: orElse);

  @override
  Future<S> fold<S>(
    S initialValue,
    S Function(S previous, List<T> element) combine,
  ) =>
      stream.fold(initialValue, combine);

  @override
  Future forEach(void Function(List<T> element) action) =>
      stream.forEach(action);

  @override
  Stream<List<T>> handleError(
    Function onError, {
    bool Function(dynamic error)? test,
  }) =>
      stream.handleError(onError, test: test);

  @override
  bool get isBroadcast => stream.isBroadcast;

  @override
  Future<bool> get isEmpty => stream.isEmpty;

  @override
  Future<String> join([String separator = '']) => stream.join();

  @override
  Future<List<T>> get last => stream.last;

  @override
  Future<List<T>> lastWhere(
    bool Function(List<T> element) test, {
    List<T> Function()? orElse,
  }) =>
      stream.lastWhere(test, orElse: orElse);

  @override
  Future<int> get length => stream.length;

  @override
  StreamSubscription<List<T>> listen(
    void Function(List<T> event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) =>
      stream.listen(
        onData,
        onError: onError,
        onDone: onDone,
        cancelOnError: cancelOnError,
      );

  @override
  Stream<S> map<S>(S Function(List<T> event) convert) => stream.map(convert);

  @override
  Future pipe(StreamConsumer<List<T>> streamConsumer) =>
      stream.pipe(streamConsumer);

  @override
  Future<List<T>> reduce(
    List<T> Function(List<T> previous, List<T> element) combine,
  ) =>
      stream.reduce(combine);

  @override
  Future<List<T>> get single => stream.single;

  @override
  Future<List<T>> singleWhere(
    bool Function(List<T> element) test, {
    List<T> Function()? orElse,
  }) =>
      stream.singleWhere(test, orElse: orElse);

  @override
  Stream<List<T>> skip(int count) => stream.skip(count);

  @override
  Stream<List<T>> skipWhile(bool Function(List<T> element) test) =>
      stream.skipWhile(test);

  @override
  Stream<List<T>> take(int count) => stream.take(count);

  @override
  Stream<List<T>> takeWhile(bool Function(List<T> element) test) =>
      stream.takeWhile(test);

  @override
  Stream<List<T>> timeout(
    Duration timeLimit, {
    void Function(EventSink<List<T>> sink)? onTimeout,
  }) =>
      stream.timeout(timeLimit, onTimeout: onTimeout);

  @override
  Future<List<List<T>>> toList() => stream.toList();

  @override
  Future<Set<List<T>>> toSet() => stream.toSet();

  @override
  Stream<S> transform<S>(StreamTransformer<List<T>, S> streamTransformer) =>
      stream.transform(streamTransformer);

  @override
  Stream<List<T>> where(bool Function(List<T> event) test) =>
      stream.where(test);

  @override
  Future<void> dispose() async {
    await _onLoadingChanged.close();
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
