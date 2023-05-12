import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class ObjectImageInfo with EquatableMixin {
  factory ObjectImageInfo({
    required String cacheKey,
    required Future<String> Function() downloadUrlFn,
    required DateTime lastUpdatedTime,
    required Future<String> Function({String? contentType, String? overrideId})
        uploadUrlFn,
  }) = _ObjectImageInfoImpl;

  @protected
  ObjectImageInfo.internal();

  String get cacheKey;

  DateTime get lastUpdatedTime;

  Future<String> downloadUrl();

  Future<String> uploadUrl({String? contentType, String? overrideId});

  @override
  List<Object?> get props => [cacheKey, lastUpdatedTime];
}

class _ObjectImageInfoImpl extends ObjectImageInfo {
  _ObjectImageInfoImpl({
    required this.cacheKey,
    required this.downloadUrlFn,
    required this.uploadUrlFn,
    required this.lastUpdatedTime,
  }) : super.internal();

  @override
  final String cacheKey;

  final Future<String> Function() downloadUrlFn;
  final Future<String> Function({String? contentType, String? overrideId})
      uploadUrlFn;

  @override
  final DateTime lastUpdatedTime;

  @override
  Future<String> downloadUrl() => downloadUrlFn();

  @override
  Future<String> uploadUrl({String? contentType, String? overrideId}) =>
      uploadUrlFn(contentType: contentType, overrideId: overrideId);
}
