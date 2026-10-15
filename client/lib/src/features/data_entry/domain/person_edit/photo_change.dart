import 'package:image_picker/image_picker.dart' show XFile;

sealed class PhotoChange {
  const PhotoChange();
}

final class DeletePhoto extends PhotoChange {
  const DeletePhoto();
}

final class KeepPhoto extends PhotoChange {
  const KeepPhoto();
}

final class ReplacePhoto extends PhotoChange {
  final XFile photo;

  @override
  int get hashCode => photo.path.hashCode;

  const ReplacePhoto(this.photo);

  @override
  bool operator ==(Object other) =>
      other is ReplacePhoto && other.photo.path == photo.path;
}
