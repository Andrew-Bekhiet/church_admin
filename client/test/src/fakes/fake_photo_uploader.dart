import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:image_picker/image_picker.dart' show XFile;

class FakePhotoUploader implements PhotoUploader {
  final List<IImage> objectsWhosePhotoWasDeleted = [];
  final List<XFile> uploadedPhotos = [];

  late final Completer<void> uploadFinished = Completer<void>();
  void Function(double progress)? reportProgress;
  Object? uploadError;

  @override
  Future<void> deletePhotoOf(IImage object) async {
    objectsWhosePhotoWasDeleted.add(object);
  }

  @override
  Future<void> uploadPhotoOf(
    IImage object,
    XFile photo, {
    required void Function(double progress) onProgress,
  }) async {
    reportProgress = onProgress;
    await uploadFinished.future;
    if (uploadError case final error?) throw error;
    uploadedPhotos.add(photo);
  }
}
