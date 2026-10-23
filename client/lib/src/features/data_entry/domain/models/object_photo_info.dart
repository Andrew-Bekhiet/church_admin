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
  Future<PhotoUploadLink> requestUploadLink({required String contentType}) =>
      DatabaseService.I.photos.requestPhotoUpload(
        subject: _subject,
        id: _id,
        contentType: contentType,
      );

  @override
  Future<void> confirmUpload(PhotoUploadLink link) =>
      DatabaseService.I.photos.confirmPhotoUpload(
        subject: _subject,
        id: _id,
        confirmationToken: link.confirmationToken,
      );

  @override
  Future<void> delete() =>
      DatabaseService.I.photos.deletePhoto(subject: _subject, id: _id);
}
