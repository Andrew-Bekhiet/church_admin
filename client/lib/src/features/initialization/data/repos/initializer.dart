import 'dart:async';

// Ignored because it's an interface that other classes implement
// ignore: one_member_abstracts
abstract interface class Initializer {
  const Initializer();

  Future<void>? initialize();
}
