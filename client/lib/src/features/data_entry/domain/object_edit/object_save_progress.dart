import 'package:equatable/equatable.dart';

sealed class ObjectSaveProgress extends Equatable {
  @override
  List<Object?> get props => const [];

  const ObjectSaveProgress();
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
