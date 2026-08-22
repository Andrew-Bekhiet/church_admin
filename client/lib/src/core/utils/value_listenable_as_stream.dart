import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

extension ValueListenableAsStream<T> on ValueListenable<T> {
  /// Returns a [Stream] mirroring this [ValueListenable].
  ///
  /// The underlying [StreamController] is closed automatically once the
  /// returned stream's subscription is cancelled, since a [ValueListenable]
  /// has no lifecycle event of its own to close it on.
  Stream<T> asStream() {
    late final StreamController<T> controller;

    void listener() {
      controller.add(value);
    }

    controller = StreamController<T>(
      onListen: () => addListener(listener),
      onCancel: () {
        removeListener(listener);
        unawaited(controller.close());
      },
    );

    return controller.stream.startWith(value);
  }
}
