import 'package:church_admin/church_admin.dart';
import 'package:image_picker/image_picker.dart' show XFile;
import 'package:mime/mime.dart';

class FunctionsPersonPhotoUploader implements PersonPhotoUploader {
  final FunctionsService _functions;

  const FunctionsPersonPhotoUploader(this._functions);

  @override
  Future<void> deletePhotoOf(Person person) => person.imageInfo.delete();

  @override
  Future<void> uploadPhotoOf(
    Person person,
    XFile photo, {
    required void Function(double progress) onProgress,
  }) async {
    final mimeType = MimeTypeResolver().lookup(photo.path);
    final uploadUrl = await person.imageInfo.getUploadUrl(
      contentType: mimeType,
    );

    await _functions.uploadPhoto(
      url: uploadUrl,
      contentType: mimeType,
      fileStream: photo.openRead(),
      fileLength: await photo.length(),
      onSendProgress: (sent, total) => onProgress(sent / total),
    );
  }
}
