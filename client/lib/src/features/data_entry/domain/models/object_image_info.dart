import 'package:equatable/equatable.dart';

abstract class ObjectImageInfo with Equatable {
  static String photoCacheKeyOf(String cacheKey, DateTime? updatedTime) =>
      '$cacheKey@${updatedTime?.toIso8601String()}';

  String get cacheKey;

  DateTime? get lastUpdatedTime;

  String get photoCacheKey => photoCacheKeyOf(cacheKey, lastUpdatedTime);

  @override
  List<Object?> get props => [cacheKey, lastUpdatedTime];
  const ObjectImageInfo();

  Future<String> getDownloadUrl();

  Future<String> getUploadUrl({String? contentType});

  Future<void> delete();
}
