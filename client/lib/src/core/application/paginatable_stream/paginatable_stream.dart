import 'dart:async';
import 'dart:math' as math;

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

/// A base class that provides pagination functionality for streams of items.
///
/// This abstract class defines the core functionality needed to implement a paginated stream,
/// where data is loaded and listened to in batches (pages) as needed.
abstract class PaginatableStreamBase<T> extends Stream<List<T>> {
  PaginatableStreamBase();

  int get pageSize;

  bool get hasMore;

  int get currentPageIndex;

  List<T> get currentItems;

  T? get currentCursor;

  int? get currentTotalCount;

  bool get isLoading;

  Stream<bool> get onLoadingChanged;

  Stream<int?> get totalCountStream;

  Future<void> listenToPage(int pageIndex);

  Future<void> listenToNextPage() => listenToPage(currentPageIndex + 1);

  Future<void> dispose();
}

/// A concrete implementation of [PaginatableStreamBase<T, P>] that handles pagination logic.
///
/// This class manages a realtime list of items that are loaded in pages, using a factory function
/// to fetch each page independently. It maintains the current state of pagination and provides methods
/// to dynamically listen to each page.
///
/// ## Usage:
/// ```dart
/// final paginatedStream = PaginatableStream<User>(
///   factory: (cursor, pageIndex, pageSize) => fetchUsers(cursor, pageSize),
///   pageSize: 20,
/// );
///
/// // Listen to the stream
/// paginatedStream.listen((allUsers) {
///   // Handle the list of all fetched users
/// });
///
/// // Listen the next page
/// await paginatedStream.listenToNextPage();
/// ```
class PaginatableStream<T, P> extends PaginatableStreamBase<T> {
  @override
  final int pageSize;

  final BehaviorSubject<PaginatableStreamData<T>> _subject = BehaviorSubject();
  late final StreamSubscription<PaginatableStreamData<T>> _subjectSubscription;

  final BehaviorSubject<int> _pageIndex = BehaviorSubject.seeded(0);

  final BehaviorSubject<bool> _onLoadingChanged = BehaviorSubject.seeded(true);

  PaginatableStream({
    required Stream<P> parametersStream,
    required PaginatableStreamFactory<T, P> factory,
    this.pageSize = 100,
  }) {
    _subjectSubscription = parametersStream
        .scan<({P value, bool changed})?>(
          (previousValue, value, _) {
            if ((previousValue ?? '') != (value ?? '')) {
              listenToPage(0);
              return (value: value, changed: true);
            }

            return (value: value, changed: false);
          },
          null,
        )
        .doOnData((_) => _onLoadingChanged.add(true))
        .switchMap(
          (p) => _pageIndex
              .doOnData((_) => _onLoadingChanged.add(true))
              .switchMap(
                (pageIndex) => factory(
                  PaginatableStreamRequest(
                    cursor: p?.changed ?? false
                        ? null
                        : currentItems.elementAtOrNull(pageIndex * pageSize) ??
                            currentCursor,
                    param: p?.value,
                    pageIndex: pageIndex,
                    pageSize: pageSize,
                  ),
                ).map(
                  (response) => (
                    pageIndex: pageIndex,
                    response: response,
                    paramChanged: p?.changed ?? false
                  ),
                ),
              ),
        )
        .map(_mapPageResult)
        .doOnData((_) => _onLoadingChanged.add(false))
        .listen(
          _subject.add,
          onError: _subject.addError,
          onDone: _subject.close,
        );
  }

  PaginatableStream.simple({
    required PaginatableStreamFactory<T, void> factory,
    this.pageSize = 100,
  }) {
    _subjectSubscription = _pageIndex
        .doOnData((_) => _onLoadingChanged.add(true))
        .switchMap(
          (pageIndex) => factory(
            PaginatableStreamRequest(
              cursor: currentItems.elementAtOrNull(pageIndex * pageSize) ??
                  currentCursor,
              pageIndex: pageIndex,
              pageSize: pageSize,
            ),
          ).map(
            (response) =>
                (pageIndex: pageIndex, response: response, paramChanged: false),
          ),
        )
        .map(_mapPageResult)
        .doOnData((_) => _onLoadingChanged.add(false))
        .listen(
          _subject.add,
          onError: _subject.addError,
          onDone: _subject.close,
        );
  }

  static PaginatableStream<T, String?> withSearch<T>({
    required PaginatableStreamFactory<T, String?> factory,
    required Stream<String?> searchStream,
    int pageSize = 100,
  }) =>
      PaginatableStream(
        factory: factory,
        parametersStream: searchStream,
        pageSize: pageSize,
      );

  PaginatableStreamData<T> _mapPageResult(
    ({
      int pageIndex,
      PaginatableStreamResponse<T> response,
      bool paramChanged
    }) newPageResult,
  ) {
    final currentPageIndex = newPageResult.pageIndex;
    final newItems = newPageResult.response.data;

    if (newPageResult.paramChanged) {
      return PaginatableStreamData<T>(
        items: newItems,
        cursor: newPageResult.response.cursor,
        totalCount: newPageResult.response.totalCount,
      );
    }

    final int start = currentPageIndex * pageSize;
    final int end = start + math.min(pageSize, newItems.length);

    final combined = start < currentItems.length
        ? currentItems.mapIndexed(
            (i, e) => start <= i && i < end ? newItems[i - start] : e,
          )
        : currentItems.followedBy(newItems);

    return PaginatableStreamData<T>(
      items: combined.toList(),
      cursor: newPageResult.response.cursor,
      totalCount: newPageResult.response.totalCount,
    );
  }

  @override
  bool get hasMore => _subject.valueOrNull?.hasMore ?? false;

  @override
  int get currentPageIndex => _pageIndex.value;

  @override
  List<T> get currentItems => _subject.valueOrNull?.items ?? [];

  @override
  T? get currentCursor => _subject.valueOrNull?.cursor;

  @override
  int? get currentTotalCount => _subject.valueOrNull?.totalCount;

  @override
  bool get isLoading => _onLoadingChanged.value;

  @override
  Stream<bool> get onLoadingChanged => _onLoadingChanged.stream.distinct();

  @override
  Stream<int?> get totalCountStream =>
      _subject.map((e) => e.totalCount).distinct();

  @override
  Future<void> listenToPage(int pageIndex) async {
    RangeError.checkNotNegative(pageIndex);

    if (isLoading) return;

    _pageIndex.add(pageIndex);
    _onLoadingChanged.add(true);
    await _onLoadingChanged.distinct().skip(1).firstWhere((e) => !e);
  }

  @override
  bool get isBroadcast => _subject.isBroadcast;

  @override
  Stream<List<T>> asBroadcastStream({
    void Function(StreamSubscription<List<T>>)? onListen,
    void Function(StreamSubscription<List<T>>)? onCancel,
  }) =>
      _subject
          .map((e) => e.items)
          .asBroadcastStream(onListen: onListen, onCancel: onCancel);

  @override
  StreamSubscription<List<T>> listen(
    void Function(List<T> value)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) =>
      _subject.map((e) => e.items).listen(
            onData,
            onError: onError,
            onDone: onDone,
            cancelOnError: cancelOnError,
          );

  @override
  Future<void> dispose() async {
    await _pageIndex.close();
    await _onLoadingChanged.close();
    await _subjectSubscription.cancel();
    await _subject.close();
  }
}

typedef PaginatableStreamFactory<T, P> = Stream<PaginatableStreamResponse<T>>
    Function(
  PaginatableStreamRequest<T, P>,
);
