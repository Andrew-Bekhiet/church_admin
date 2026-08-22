import 'dart:async';

import 'package:rxdart/rxdart.dart';

extension StreamExtensions<T> on Stream<T> {
  /// Just like [startWith], but accepts a [Future]
  ///
  /// ### Example
  ///
  ///     Stream.fromIterable([1, 2, 3])
  ///       .startWithFuture(Future(() async => 0))
  ///       .listen(print); // prints 0, 1, 2, 3
  ///
  Stream<T> startWithFuture(Future<T> startValue) =>
      Stream.fromFuture(startValue).switchMap(startWith);

  ///Awaits until another next element is emitted
  ///and returns it
  Future<T?> next({
    bool ignoreStreamDone = false,
  }) {
    return nextWhere(
      (_) => true,
      ignoreStreamDone: ignoreStreamDone,
    );
  }

  ///Awaits until element that statify condition is emitted
  ///and returns it
  Future<T?> nextWhere(
    bool Function(T) test, {
    bool ignoreStreamDone = false,
  }) {
    final completer = Completer<T>();
    late final StreamSubscription<T> subscription;
    subscription = listen(
      (data) async {
        if (completer.isCompleted || !test(data)) return;

        completer.complete(data);
        await subscription.cancel();
      },
      onError: (data) async {
        if (completer.isCompleted) return;

        completer.completeError(data);
        await subscription.cancel();
      },
      onDone: () async {
        if (!completer.isCompleted && !ignoreStreamDone) {
          completer.completeError(
            StateError('Stream finished with no more items'),
          );
        } else {
          completer.complete();
        }
        await subscription.cancel();
      },
    );

    return completer.future;
  }

  Future<T> get nextNonNullStrict =>
      nextWhere(
        (o) => o != null,
      ).then(
        (value) {
          if (value == null) {
            throw StateError('Stream finished with no more items');
          }

          return value;
        },
      );

  Future<T?> get nextNonNull =>
      nextWhere((o) => o != null, ignoreStreamDone: true);
}
