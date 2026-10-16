import 'dart:async';

// Ignored because it's an interface that other classes implement
abstract interface class Initializer {
  const Initializer();

  Future<void>? initialize();
}
