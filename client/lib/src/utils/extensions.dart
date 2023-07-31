import 'dart:async';

import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timeago/timeago.dart';

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

extension DateTimeX on DateTime {
  String toDurationString({bool appendSince = true, DateTime? now}) {
    if (appendSince) {
      return format(this, locale: 'ar', clock: now ?? clock.now());
    }
    return format(this, locale: 'ar', clock: now ?? clock.now())
        .replaceAll('منذ ', '');
  }

  DateTime truncateToDay() {
    return DateTime(year, month, day);
  }

  DateTime truncateToUTCDay() {
    return DateTime.utc(year, month, day);
  }

  DateTime replaceTimeOfDay(TimeOfDay time) {
    return DateTime(
      year,
      month,
      day,
      time.hour,
      time.minute,
      second,
      millisecond,
      microsecond,
    );
  }

  DateTime replaceTime(DateTime time) {
    return DateTime(
      year,
      month,
      day,
      time.hour,
      time.minute,
      time.second,
      time.millisecond,
      time.microsecond,
    );
  }

  DateTime replaceDate(DateTime date) {
    return DateTime(
      date.year,
      date.month,
      date.day,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
    );
  }
}

extension MaxValueLength<T> on Map<T, List> {
  T? get maxOrNull {
    if (isEmpty) return null;
    var value = entries.first;
    for (final element in entries) {
      final newValue = element;
      if (newValue.value.length > value.value.length) {
        value = newValue;
      }
    }
    return value.key;
  }
}

extension NextItem<T> on Stream<T> {
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
        if (!completer.isCompleted && test(data)) {
          completer.complete(data);
          await subscription.cancel();
        }
      },
      onError: (data) async {
        if (!completer.isCompleted) {
          completer.completeError(data);
          await subscription.cancel();
        }
      },
      onDone: () async {
        if (!completer.isCompleted && !ignoreStreamDone) {
          completer
              .completeError(StateError('Stream finished with no more items'));
        } else {
          completer.complete();
        }
        await subscription.cancel();
      },
    );

    return completer.future;
  }

  Future<T> get nextNonNullStrict => nextWhere(
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

extension WithPadding on Widget {
  Widget withPadding(EdgeInsetsGeometry padding) => Padding(
        padding: padding,
        child: this,
      );
}

extension CopyDateTimeRange on DateTimeRange {
  DateTimeRange copyWith({DateTime? start, DateTime? end}) {
    return DateTimeRange(
      start: start ?? this.start,
      end: end ?? this.end,
    );
  }
}
