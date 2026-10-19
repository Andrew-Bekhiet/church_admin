import 'package:church_admin/church_admin.dart';

class ObjectPhotoInfo extends ObjectImageInfo {
  final Enum_PhotoSubject _subject;
  final String _id;

  @override
  final DateTime? lastUpdatedTime;

  @override
  String get cacheKey => '${_subject.toJson().toLowerCase()}/$_id';

  @override
  List<Object?> get props => [cacheKey, lastUpdatedTime];

  const ObjectPhotoInfo(
    this._subject,
    this._id, {
    this.lastUpdatedTime,
  });

  @override
  Future<PhotoLink> getDownloadLink() =>
      DatabaseService.I.photos.photoDownloadUrl(subject: _subject, id: _id);

  @override
  Future<String> getUploadUrl({String? contentType}) async {
    final link = await DatabaseService.I.photos.requestPhotoUpload(
      subject: _subject,
      id: _id,
      contentType: contentType,
    );

    return link.url;
  }

  @override
  Future<void> delete() =>
      DatabaseService.I.photos.deletePhoto(subject: _subject, id: _id);
}
