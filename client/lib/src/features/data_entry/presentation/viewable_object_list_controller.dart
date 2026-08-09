import 'dart:async';
import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

class ViewableObjectListController<T extends Viewable> {
  final PaginatableStreamBase<T> _objectsPaginatableStream;

  final SelectionController<T> selectionController;

  final Stream<String?>? filterStream;

  final BehaviorSubject<List<T>> _itemsSubject = BehaviorSubject<List<T>>();
  late final StreamSubscription<List<T>> _itemsSubjectSubscription;

  final BehaviorSubject<int> _loadPageThrottler = BehaviorSubject.seeded(0);
  late final StreamSubscription<int> _loadPageThrottlerListener;
  final _DisposablePeriodicStream _loadPageThrottlerTimer =
      _DisposablePeriodicStream(const Duration(seconds: 1, milliseconds: 450));

  ValueStream<List<T>> get filteredObjectsStream => _itemsSubject.stream;

  Stream<bool> get onLoadingChanged =>
      _objectsPaginatableStream.onLoadingChanged;

  Stream<int?> get totalCountStream =>
      _objectsPaginatableStream.totalCountStream;

  List<T>? get currentFilteredObjectsOrNull => _itemsSubject.valueOrNull;

  int? get currentTotalCount => _objectsPaginatableStream.currentTotalCount;

  bool get hasMore => _objectsPaginatableStream.hasMore;

  bool get isLoading => _objectsPaginatableStream.isLoading;

  ViewableObjectListController({
    required PaginatableStreamBase<T> objectsPaginatableStream,
    this.filterStream,
    SelectionController<T>? selectionController,
  }) : _objectsPaginatableStream = objectsPaginatableStream,
       selectionController =
           selectionController ??
           SelectionController<T>(
             equality: EqualityBy(
               (o) => (o is ID) ? (o as ID).id : o,
             ),
           ) {
    if (filterStream == null) {
      _itemsSubjectSubscription = _objectsPaginatableStream.listen(
        _itemsSubject.add,
        onError: _itemsSubject.addError,
        onDone: _itemsSubject.close,
      );
    } else {
      _itemsSubjectSubscription = _objectsPaginatableStream
          .switchMap(
            (objects) => filterStream!
                .distinct(
                  (previous, next) => (previous ?? '') == (next ?? ''),
                )
                .map(
                  (search) => objects
                      .where(
                        (object) => normalizeString(
                          object.name,
                        ).contains(normalizeString(search ?? '')),
                      )
                      .toList(),
                ),
          )
          .listen(
            _itemsSubject.add,
            onError: _itemsSubject.addError,
            onDone: _itemsSubject.close,
          );
    }

    _loadPageThrottlerListener = _loadPageThrottler
        .buffer(_loadPageThrottlerTimer)
        .map(
          (b) => b
              // Last 50 items
              .skip(max(b.length - 50, 0))
              .toList(growable: false)
              .maxFrequencyOrNull,
        )
        .whereType<int>()
        .where(
          (i) =>
              objectsPaginatableStream.currentPageIndex != i &&
              !objectsPaginatableStream.isLoading,
        )
        .listen(objectsPaginatableStream.listenToPage);
  }

  Future<void> listenToNextPage() async {
    await _objectsPaginatableStream.listenToNextPage();
  }

  Future<void> itemVisibleAt(int index) async {
    _loadPageThrottler.add(
      defaultOffsetFromIndex(_objectsPaginatableStream.pageSize, index),
    );
  }

  Future<void> dispose() async {
    await _loadPageThrottlerTimer.cancel();

    await Future.wait([
      _loadPageThrottler.close(),
      _loadPageThrottlerListener.cancel(),
      selectionController.dispose(),
      _objectsPaginatableStream.dispose(),
    ]);

    await _itemsSubjectSubscription.cancel();
    await _itemsSubject.close();
  }
}

String normalizeString(String s) =>
    s.trim().toLowerCase().replaceAll(RegExp('أ|إ|آ'), 'ا');

int defaultOffsetFromIndex(int limit, int index) => (index / limit).floor();

class _DisposablePeriodicStream extends Stream<void> {
  final Duration duration;

  final StreamController<void> _controller = StreamController<void>.broadcast(
    sync: true,
  );

  late final Timer _timer;

  @override
  bool get isBroadcast => _controller.stream.isBroadcast;

  _DisposablePeriodicStream(this.duration) {
    _timer = Timer.periodic(duration, (_) => _controller.add(null));
  }

  Future<void> cancel() async {
    _timer.cancel();
    await _controller.close();
  }

  @override
  StreamSubscription<void> listen(
    void Function(void event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return _controller.stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }
}
