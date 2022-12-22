import 'package:rxdart/rxdart.dart';

extension StartWithFuture<T> on Stream<T> {
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
}
