import 'package:church_admin/church_admin.dart';
import 'package:image_picker/image_picker.dart' show XFile;

abstract interface class PersonPhotoUploader {
  Future<void> deletePhotoOf(Person person);

  Future<void> uploadPhotoOf(
    Person person,
    XFile photo, {
    required void Function(double progress) onProgress,
  });
}
