import 'dart:async';

import 'package:clock/clock.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gql/ast.dart';
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

extension MaxFrequencyOrNull<T> on List<T> {
  /// Returns the most frequent element in the list or null if the list is empty.
  T? get maxFrequencyOrNull {
    if (isEmpty) return null;

    final frequencyMap = <T, int>{};
    for (final element in this) {
      frequencyMap[element] = (frequencyMap[element] ?? 0) + 1;
    }

    return frequencyMap.entries.reduce((a, b) => a.value > b.value ? a : b).key;
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

extension FirstSelectionNode on OperationDefinitionNode {
  FieldNode get firstSelectionNode =>
      selectionSet.selections.first as FieldNode;
}

extension ColorValue on Color {
  static int _floatToInt8(double x) {
    return (x * 255.0).round() & 0xff;
  }

  int get argbValue {
    return _floatToInt8(a) << 24 |
        _floatToInt8(r) << 16 |
        _floatToInt8(g) << 8 |
        _floatToInt8(b) << 0;
  }
}

extension ValueListenableAsStream<T> on ValueListenable<T> {
  Stream<T> asStream() {
    late final StreamController<T> controller;

    void listener() {
      controller.add(value);
    }

    controller = StreamController<T>(
      onListen: () => addListener(listener),
      onCancel: () => removeListener(listener),
    );

    return controller.stream.startWith(value);
  }
}
