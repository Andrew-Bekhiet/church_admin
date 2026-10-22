import 'package:equatable/equatable.dart';

sealed class ObjectSaveProgress extends Equatable {
  @override
  List<Object?> get props => const [];

  String get message => switch (this) {
    UploadingObjectPhoto() => 'جار رفع الصورة ...',
    DeletingObject() => 'جار الحذف ...',
    NotSavingObject() || SavingObject() => 'جار الحفظ ...',
  };

  const ObjectSaveProgress();
}

final class DeletingObject extends ObjectSaveProgress {
  const DeletingObject();
}

final class NotSavingObject extends ObjectSaveProgress {
  const NotSavingObject();
}

final class SavingObject extends ObjectSaveProgress {
  const SavingObject();
}

final class UploadingObjectPhoto extends ObjectSaveProgress {
  final double? progress;

  @override
  List<Object?> get props => [progress];

  const UploadingObjectPhoto({this.progress});
}
