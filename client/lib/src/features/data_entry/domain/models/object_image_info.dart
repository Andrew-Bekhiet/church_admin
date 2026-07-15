import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

abstract class ObjectImageInfo with Equatable {
  const ObjectImageInfo();

  String get cacheKey;

  DateTime? get lastUpdatedTime;

  Future<String> getDownloadUrl();

  Future<String> getUploadUrl({String? contentType});

  Future<void> delete();

  @override
  List<Object?> get props => [cacheKey, lastUpdatedTime];
}

class FunctionsObjectImageInfo extends ObjectImageInfo {
  final String _table;
  final String _id;

  @override
  final DateTime? lastUpdatedTime;

  const FunctionsObjectImageInfo(
    this._table,
    this._id, {
    this.lastUpdatedTime,
  });

  @override
  String get cacheKey => '$_table/$_id';

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

  @override
  List<Object?> get props => [cacheKey, lastUpdatedTime];
}
