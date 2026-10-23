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
    final mimeType = MimeTypeResolver().lookup(photo.path);
    final uploadUrl = await object.imageInfo.getUploadUrl(
      contentType: mimeType,
    );

    await _photos.uploadPhoto(
      url: uploadUrl,
      contentType: mimeType,
      fileStream: photo.openRead(),
      fileLength: await photo.length(),
      onSendProgress: (sent, total) => onProgress(sent / total),
    );
  }
}
