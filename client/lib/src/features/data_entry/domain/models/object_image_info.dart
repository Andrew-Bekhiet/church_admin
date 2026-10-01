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

  Future<String> getDownloadUrl();

  Future<String> getUploadUrl({String? contentType});

  Future<void> delete();
}

class FunctionsObjectImageInfo extends ObjectImageInfo {
  final String _table;
  final String _id;

  @override
  final DateTime? lastUpdatedTime;

  @override
  String get cacheKey => '$_table/$_id';

  @override
  List<Object?> get props => [cacheKey, lastUpdatedTime];

  const FunctionsObjectImageInfo(
    this._table,
    this._id, {
    this.lastUpdatedTime,
  });

  @override
  Future<String> getDownloadUrl() =>
      FunctionsService.I.getDownloadUrl(_table, _id);

  @override
  Future<String> getUploadUrl({String? contentType}) =>
      FunctionsService.I.getUploadUrl(
        _table,
        _id,
        contentType: contentType,
      );

  @override
  Future<void> delete() => FunctionsService.I.deletePhoto(_table, _id);
}
