import 'package:image_picker/image_picker.dart' show XFile;

part 'delete_photo.dart';
part 'keep_photo.dart';
part 'replace_photo.dart';

sealed class PhotoChange {
  const PhotoChange();
}
