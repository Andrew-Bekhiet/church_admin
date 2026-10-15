part of 'photo_change.dart';

final class ReplacePhoto extends PhotoChange {
  final XFile photo;

  @override
  int get hashCode => photo.path.hashCode;

  const ReplacePhoto(this.photo);

  @override
  bool operator ==(Object other) =>
      other is ReplacePhoto && other.photo.path == photo.path;
}
