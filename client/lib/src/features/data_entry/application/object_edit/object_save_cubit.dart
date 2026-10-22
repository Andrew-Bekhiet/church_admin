import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class ObjectSaveCubit<T extends ViewableWithIDAndImage>
    extends Cubit<ObjectSaveProgress> {
  final ObjectFormController<T> _form;
  final FullCRUDDAO<T> _dao;
  final PhotoUploader _photoUploader;

  bool get _editorWasClosed => isClosed || _form.isDisposed;

  ObjectSaveCubit({
    required this._form,
    required this._dao,
    required this._photoUploader,
  }) : super(const NotSavingObject());

  Future<ObjectSaveOutcome<T>> submit() async {
    if (state is! NotSavingObject) return const ObjectSaveAlreadyInProgress();

    emit(const SavingObject());
    T? attemptedObject;
    try {
      final isValid = await _form.validate();
      if (_editorWasClosed) {
        return const ObjectSaveAbandonedBecauseEditorClosed();
      }
      if (!isValid) return const InvalidObject();

      final object = attemptedObject = _form.toObject();
      final saved = switch (_form.savedObject) {
        null => await create(object),
        final savedObject => await update(savedObject, object) ?? object,
      };
      if (_editorWasClosed) {
        return const ObjectSaveAbandonedBecauseEditorClosed();
      }

      return await _applyPhotoChangeTo(saved);
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
      if (!isClosed) emit(const NotSavingObject());
    }
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

  Future<ObjectSaveOutcome<T>> _applyPhotoChangeTo(T saved) async {
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
        error: error,
        stackTrace: stackTrace,
      );
    }
    if (_editorWasClosed) return const ObjectSaveAbandonedBecauseEditorClosed();

    return ObjectSaved(object: saved);
  }
}
