import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:image_picker/image_picker.dart' show XFile;

class FakePersonPhotoUploader implements PersonPhotoUploader {
  final List<Person> peopleWhosePhotoWasDeleted = [];
  final List<XFile> uploadedPhotos = [];

  Completer<void> uploadFinished = Completer<void>();
  void Function(double progress)? reportProgress;
  Object? uploadError;

  @override
  Future<void> deletePhotoOf(Person person) async {
    peopleWhosePhotoWasDeleted.add(person);
  }

  @override
  Future<void> uploadPhotoOf(
    Person person,
    XFile photo, {
    required void Function(double progress) onProgress,
  }) async {
    reportProgress = onProgress;
    await uploadFinished.future;
    if (uploadError case final error?) throw error;
    uploadedPhotos.add(photo);
  }
}
