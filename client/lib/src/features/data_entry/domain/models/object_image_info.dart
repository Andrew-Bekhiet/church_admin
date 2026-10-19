import 'package:church_admin/church_admin.dart';
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

  Future<PhotoLink> getDownloadLink();

  Future<String> getUploadUrl({String? contentType});

  Future<void> delete();
}
