import 'dart:async';

import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

abstract class PaginatableStreamBase<T> with Stream<List<T>> {
  final int limit;

  bool get isLoading;

  bool get canPaginateForward;
  bool get canPaginateBackward;

  int get currentOffset;

  ValueStream<bool> get onLoadingChanged;

  ValueStream<List<T>> get stream;
  List<T> get currentValue;
  List<T>? get currentValueOrNull;

  PaginatableStreamBase({
    this.limit = 100,
  });

  @protected
  PaginatableStreamBase.private({
    required this.limit,
  });

  PaginatableStreamBase.loadAll() : limit = 1;

  Future<void> loadPage(int offset);

  Future<void> loadNextPage();

  Future<void> loadPreviousPage();

  @override
  StreamSubscription<List<T>> listen(
    void Function(List<T> event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }

  Future<void> dispose();
}
