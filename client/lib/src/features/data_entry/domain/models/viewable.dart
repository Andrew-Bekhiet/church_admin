import 'package:flutter/material.dart';

@immutable
abstract class Viewable {
  String get name;
  Color? get color => null;
  const Viewable();
  Future<String?> getSecondLine() async => null;
}
