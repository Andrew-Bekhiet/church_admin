import 'package:church_admin/church_admin.dart';

class PhotoFieldState {
  final bool deletePhoto;
  final CroppedFile? newPhoto;

  PhotoFieldState({required this.deletePhoto, this.newPhoto});

  bool get hasChanged => deletePhoto || newPhoto != null;
}
