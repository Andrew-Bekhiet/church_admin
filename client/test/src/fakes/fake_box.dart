import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/mockito.dart';

class FakeBox<T> extends Fake implements Box<T> {
  final Map<String, dynamic> _box = {};

  FakeBox();

  @override
  bool get isOpen => true;

  @override
  T? get(dynamic key, {T? defaultValue}) => _box[key] ?? defaultValue;

  @override
  Future<void> put(dynamic key, T? value) async {
    _box[key] = value;
  }
}
