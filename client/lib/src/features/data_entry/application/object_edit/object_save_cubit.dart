import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class ObjectSaveCubit<T extends ViewableWithIDAndImage>
    extends Cubit<ObjectSaveProgress> {
  final ObjectFormController<T> _form;
  final FullCRUDDAO<T> _dao;
  final PhotoUploader _photoUploader;
  final OutOfSightAfterSave? _outOfSight;
  final AnalyticsService _analyticsService;
  final Stopwatch _sinceFormOpened = Stopwatch()..start();

  bool get _editorWasClosed => isClosed || _form.isDisposed;

  ObjectSaveCubit({
    required this._form,
    required this._dao,
    required this._photoUploader,
    required this._analyticsService,
    this._outOfSight,
  }) : super(const NotSavingObject());

  Future<ObjectSaveOutcome<T>> submit({
    Future<bool> Function()? confirmMoveOutOfSight,
  }) async {
    final outcome = await _submitOnce(
      confirmMoveOutOfSight: confirmMoveOutOfSight,
    );
    _maybeTrackSaveAttempt(outcome);

    return outcome;
  }

  @protected
  ObjectSaveAttempt saveAttemptOf(
    ObjectSaveOutcome<T> outcome, {
    required ViewableWithID entity,
    required bool isCreate,
    required Duration formOpenDuration,
  }) => PlainObjectSaveAttempt(
    entity: entity,
    isCreate: isCreate,
    formOpenDuration: formOpenDuration,
    outcome: outcome,
  );

  Future<bool> tryDeleteSavedObject() async {
    final savedObject = _form.savedObject;
    if (savedObject == null) {
      throw StateError('Cannot delete an object that has not been created');
    }
    if (state is! NotSavingObject) return false;

    emit(const DeletingObject());
    try {
      await _dao.deleteById(id: savedObject.id);
      _analyticsService.track(ObjectDelete(savedObject, isSuccess: true));

      return true;
    } on Object {
      _analyticsService.track(ObjectDelete(savedObject, isSuccess: false));
      rethrow;
    } finally {
      if (!isClosed) emit(const NotSavingObject());
    }
  }

  @protected
  Future<T> create(T object) => _dao.createObject(newObject: object);

  @protected
  Future<T?> update(T savedObject, T editedObject) =>
      _dao.updateObject(oldObject: savedObject, newObject: editedObject);

  Future<ObjectSaveOutcome<T>> _submitOnce({
    Future<bool> Function()? confirmMoveOutOfSight,
  }) async {
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
      final movesOutOfSight = _movesOutOfSight(object);
      if (movesOutOfSight) {
        emit(const AwaitingObjectMoveConfirmation());
        _analyticsService.track(OutOfSightWarningShow(object));
        final moveConfirmed = await confirmMoveOutOfSight?.call() ?? false;
        if (_editorWasClosed) {
          return const ObjectSaveAbandonedBecauseEditorClosed();
        }
        _analyticsService.track(
          OutOfSightWarningAnswer(object, isConfirmed: moveConfirmed),
        );
        if (!moveConfirmed) return const ObjectMoveOutOfSightDeclined();

        emit(const SavingObject());
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
      if (!isClosed) emit(const NotSavingObject());
    }
  }

  void _maybeTrackSaveAttempt(ObjectSaveOutcome<T> outcome) {
    if (outcome is ObjectSaveAlreadyInProgress<T>) return;

    _analyticsService.track(
      saveAttemptOf(
        outcome,
        entity: _form.savedObject ?? _form.initialDraft,
        isCreate: _form.isCreate,
        formOpenDuration: _sinceFormOpened.elapsed,
      ),
    );
  }

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
