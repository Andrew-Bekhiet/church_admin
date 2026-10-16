import 'dart:async';

abstract interface class Initializer {
  const Initializer();

  Future<void>? initialize();
}
