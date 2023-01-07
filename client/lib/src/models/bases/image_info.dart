import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class ObjectImageInfo with EquatableMixin {
  factory ObjectImageInfo({
    required String cacheKey,
    required Future<String> Function() downloadUrlFn,
    required DateTime lastUpdatedTime,
  }) = _ObjectImageInfoImpl;

  @protected
  ObjectImageInfo.internal();

  String get cacheKey;

  DateTime get lastUpdatedTime;

  Future<String> downloadUrl();

  @override
  List<Object?> get props => [cacheKey, lastUpdatedTime];
}

class _ObjectImageInfoImpl extends ObjectImageInfo {
  _ObjectImageInfoImpl({
    required this.cacheKey,
    required this.downloadUrlFn,
    required this.lastUpdatedTime,
  }) : super.internal();

  @override
  final String cacheKey;

  final Future<String> Function() downloadUrlFn;

  @override
  final DateTime lastUpdatedTime;

  @override
  Future<String> downloadUrl() => downloadUrlFn();
}
