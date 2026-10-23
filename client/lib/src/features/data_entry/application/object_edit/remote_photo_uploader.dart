import 'package:church_admin/church_admin.dart';
import 'package:image_picker/image_picker.dart' show XFile;
import 'package:mime/mime.dart';

class RemotePhotoUploader implements PhotoUploader {
  final PhotosDAO _photos;

  const RemotePhotoUploader(this._photos);

  @override
  Future<void> deletePhotoOf(IImage object) => object.imageInfo.delete();

  @override
  Future<void> uploadPhotoOf(
    IImage object,
    XFile photo, {
    required void Function(double progress) onProgress,
  }) async {
    final mimeType =
        MimeTypeResolver().lookup(photo.path) ??
        (throw PhotoContentTypeUnknownException(photo.path));
    final link = await object.imageInfo.requestUploadLink(
      contentType: mimeType,
    );

    await _photos.uploadPhoto(
      link: link,
      fileStream: photo.openRead(),
      fileLength: await photo.length(),
      onSendProgress: (sent, total) => onProgress(sent / total),
    );
    await object.imageInfo.confirmUpload(link);
  }
}
