import 'dart:async';

// ignore: one_member_abstracts
abstract interface class Initializer {
  const Initializer();

  Future<void>? initialize();
}
