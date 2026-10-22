import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class ObjectSaveCubit<T extends ViewableWithIDAndImage>
    extends Cubit<ObjectSaveProgress> {
  final ObjectFormController<T> _form;
  final FullCRUDDAO<T> _dao;
  final PhotoUploader _photoUploader;
  final OutOfSightAfterSave? _outOfSight;

  bool get _editorWasClosed => isClosed || _form.isDisposed;

  ObjectSaveCubit({
    required this._form,
    required this._dao,
    required this._photoUploader,
    this._outOfSight,
  }) : super(const NotSavingObject());

  Future<ObjectSaveOutcome<T>> submit({bool confirmedMove = false}) async {
    final canStart = switch (state) {
      NotSavingObject() => true,
      AwaitingObjectMoveConfirmation() => confirmedMove,
      DeletingObject() || SavingObject() || UploadingObjectPhoto() => false,
    };
    if (!canStart) return const ObjectSaveAlreadyInProgress();

    emit(const SavingObject());
    var keepAwaitingMoveConfirmation = false;
    T? attemptedObject;
    try {
      final isValid = await _form.validate();
      if (_editorWasClosed) {
        return const ObjectSaveAbandonedBecauseEditorClosed();
      }
      if (!isValid) return const InvalidObject();

      final object = attemptedObject = _form.toObject();
      final movesOutOfSight = _movesOutOfSight(object);
      if (movesOutOfSight && !confirmedMove) {
        keepAwaitingMoveConfirmation = true;
        emit(const AwaitingObjectMoveConfirmation());

        return const ObjectNeedsMoveConfirmation();
      }

      return await _save(object, movedOutOfSight: movesOutOfSight);
    } on Exception catch (error, stackTrace) {
      if (_editorWasClosed) {
        return const ObjectSaveAbandonedBecauseEditorClosed();
      }

      return ObjectSaveFailed(
        error: error,
        stackTrace: stackTrace,
        attemptedObject: attemptedObject ?? _form.toObject(),
      );
    } finally {
      if (!isClosed && !keepAwaitingMoveConfirmation) {
        emit(const NotSavingObject());
      }
    }
  }

  void declineMove() {
    if (state is! AwaitingObjectMoveConfirmation) return;

    emit(const NotSavingObject());
  }

  Future<bool> tryDeleteSavedObject() async {
    final savedObject = _form.savedObject;
    if (savedObject == null) {
      throw StateError('Cannot delete an object that has not been created');
    }
    if (state is! NotSavingObject) return false;

    emit(const DeletingObject());
    try {
      await _dao.deleteById(id: savedObject.id);

      return true;
    } finally {
      if (!isClosed) emit(const NotSavingObject());
    }
  }

  @protected
  Future<T> create(T object) => _dao.createObject(newObject: object);

  @protected
  Future<T?> update(T savedObject, T editedObject) =>
      _dao.updateObject(oldObject: savedObject, newObject: editedObject);

  bool _movesOutOfSight(T edited) => switch ((_outOfSight, _form.savedObject)) {
    (final outOfSight?, final saved?) => outOfSight.isMovedOutOfSight(
      saved,
      edited,
    ),
    _ => false,
  };

  Future<ObjectSaveOutcome<T>> _save(
    T object, {
    required bool movedOutOfSight,
  }) async {
    final saved = switch (_form.savedObject) {
      null => await create(object),
      final savedObject => await update(savedObject, object) ?? object,
    };
    if (_editorWasClosed) {
      return const ObjectSaveAbandonedBecauseEditorClosed();
    }

    return _applyPhotoChangeTo(saved, movedOutOfSight: movedOutOfSight);
  }

  Future<ObjectSaveOutcome<T>> _applyPhotoChangeTo(
    T saved, {
    required bool movedOutOfSight,
  }) async {
    try {
      switch (_form.photo.fieldValue) {
        case KeepPhoto():
          break;

        case DeletePhoto():
          await _photoUploader.deletePhotoOf(saved);

        case ReplacePhoto(:final photo):
          emit(const UploadingObjectPhoto());
          await _photoUploader.uploadPhotoOf(
            saved,
            photo,
            onProgress: (progress) {
              if (isClosed) return;

              emit(UploadingObjectPhoto(progress: progress));
            },
          );
      }
    } on Exception catch (error, stackTrace) {
      return ObjectSavedButPhotoFailed(
        object: saved,
        movedOutOfSight: movedOutOfSight,
        error: error,
        stackTrace: stackTrace,
      );
    }
    if (_editorWasClosed) return const ObjectSaveAbandonedBecauseEditorClosed();

    return ObjectSaved(object: saved, movedOutOfSight: movedOutOfSight);
  }
}
