import 'package:church_admin/church_admin.dart';
import 'package:image_picker/image_picker.dart' show XFile;

abstract interface class PhotoUploader {
  Future<void> deletePhotoOf(IImage object);

  Future<void> uploadPhotoOf(
    IImage object,
    XFile photo, {
    required void Function(double progress) onProgress,
  });
}
