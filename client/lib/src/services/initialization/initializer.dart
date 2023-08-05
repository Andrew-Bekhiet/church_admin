import 'dart:async';

abstract interface class Initializer {
  const Initializer();

  FutureOr<void> initialize();
}
