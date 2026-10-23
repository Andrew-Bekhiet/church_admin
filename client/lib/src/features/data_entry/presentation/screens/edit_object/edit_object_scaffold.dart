import 'dart:async';

import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class EditObjectScaffold<T extends ViewableWithIDAndImage>
    extends StatefulWidget {
  static const double floatingActionButtonClearance = 120;

  final ObjectFormController<T> form;
  final ObjectSaveCubit<T> saveCubit;
  final bool Function(T saved) canDelete;
  final AppRoute Function(T created) detailsRouteOf;
  final Widget fields;
  final String? nameHint;
  final String movedOutOfSightMessage;
  final bool Function()? hasUnsavedInput;

  const EditObjectScaffold({
    required this.form,
    required this.saveCubit,
    required this.canDelete,
    required this.detailsRouteOf,
    required this.fields,
    this.movedOutOfSightMessage = 'تم النقل',
    this.nameHint,
    this.hasUnsavedInput,
    super.key,
  });

  @override
  State<EditObjectScaffold<T>> createState() => _EditObjectScaffoldState<T>();
}

class _EditObjectScaffoldState<T extends ViewableWithIDAndImage>
    extends State<EditObjectScaffold<T>> {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? _progressSnackBar;

  ObjectFormController<T> get _form => widget.form;

  T get _editedEntity => _form.savedObject ?? _form.initialDraft;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ObjectSaveCubit<T>, ObjectSaveProgress>(
      bloc: widget.saveCubit,
      listener: (context, progress) => _showSaveProgressWhileSaving(progress),
      child:
          ValueListenableBuilder<AdvancedFieldState<Color?, ObjectEditError>>(
            valueListenable: _form.color,
            builder: (context, color, child) => Theme(
              data: ThemingService.getDefault(seedOverride: color.value),
              child: child!,
            ),
            child: PopScope(
              canPop: false,
              onPopInvokedWithResult: _confirmExit,
              child: Scaffold(
                body: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      stretch: true,
                      pinned: true,
                      expandedHeight: MediaQuery.sizeOf(context).width,
                      actions: [
                        if (_form.savedObject case final saved?
                            when widget.canDelete(saved))
                          ObjectDeleteButton<T>(
                            saveCubit: widget.saveCubit,
                            savedObject: saved,
                          ),
                      ],
                      flexibleSpace: ListenableBuilder(
                        listenable: Listenable.merge([_form.name, _form.color]),
                        builder: (context, _) =>
                            AdvancedPhotoField<ObjectEditError>(
                              field: _form.photo,
                              object: _form.toObject(),
                              canDelete: !_form.isCreate,
                              circleCrop: false,
                            ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.only(
                        bottom:
                            EditObjectScaffold.floatingActionButtonClearance,
                      ),
                      sliver: SliverToBoxAdapter(
                        child: FocusScope(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  child: AdvancedTextInput<ObjectEditError>(
                                    key: EditObjectScaffoldKeys.nameField,
                                    field: _form.name,
                                    translateError: ObjectEditError.messageOf,
                                    labelText: 'الاسم',
                                    hintText: widget.nameHint,
                                    keyboardType: TextInputType.name,
                                    autofillHints: const [AutofillHints.name],
                                    textCapitalization:
                                        TextCapitalization.words,
                                  ),
                                ),
                                widget.fields,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                floatingActionButton: ObjectSaveButton(
                  progress: widget.saveCubit,
                  onPressed: _save,
                ),
              ),
            ),
          ),
    );
  }

  void _showSaveProgressWhileSaving(ObjectSaveProgress progress) {
    switch (progress) {
      case NotSavingObject() || AwaitingObjectMoveConfirmation():
        _progressSnackBar?.close();
        _progressSnackBar = null;

      case DeletingObject() || SavingObject() || UploadingObjectPhoto():
        _progressSnackBar ??= _replaceSnackBarsWithSaveProgress();
    }
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
  _replaceSnackBarsWithSaveProgress() {
    final messenger = ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..removeCurrentSnackBar();

    return messenger.showSnackBar(
      SnackBar(
        duration: const Duration(minutes: 30),
        content: ObjectSaveProgressMessage(progress: widget.saveCubit),
      ),
    );
  }

  Future<void> _save() async {
    final outcome = await widget.saveCubit.submit(
      confirmMoveOutOfSight: _confirmMoveOutOfSight,
    );
    if (!mounted) return;

    switch (outcome) {
      case ObjectSaved(:final object, :final movedOutOfSight):
        _leaveAfterSave(
          object,
          message: movedOutOfSight ? widget.movedOutOfSightMessage : 'تم بنجاح',
          movedOutOfSight: movedOutOfSight,
        );

      case ObjectSavedButPhotoFailed(
        :final object,
        :final movedOutOfSight,
        :final error,
        :final stackTrace,
      ):
        unawaited(
          LoggingService.I.error(
            LogRecord(
              error: error,
              stackTrace: stackTrace,
              data: {'objectType': '$T', 'newObject': _reportable(object)},
            ),
          ),
        );
        _leaveAfterSave(
          object,
          message: 'تم الحفظ لكن تعذر رفع الصورة',
          movedOutOfSight: movedOutOfSight,
        );

      case ObjectSaveFailed(
        :final error,
        :final stackTrace,
        :final attemptedObject,
      ):
        await LoggingService.I.showErrorDialogAndReport(
          context,
          LogRecord(
            error: error,
            stackTrace: stackTrace,
            data: {
              'objectType': '$T',
              'initialObject': _reportable(_form.savedObject),
              'newObject': _reportable(attemptedObject),
            },
          ),
        );

      case InvalidObject():
        _focusFirstInvalidField();

      case ObjectMoveOutOfSightDeclined() ||
          ObjectSaveAlreadyInProgress() ||
          ObjectSaveAbandonedBecauseEditorClosed():
        return;
    }
  }

  Future<bool> _confirmMoveOutOfSight() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => const MoveOutOfSightConfirmationDialog(),
    );

    return confirmed ?? false;
  }

  void _focusFirstInvalidField() {
    final invalidFields = _form.value.allFields
        .where((field) => field.value.isInvalid)
        .toList();
    final firstInvalidField = invalidFields.firstOrNull;
    if (firstInvalidField == null) return;

    firstInvalidField.focus();
    AnalyticsService.I.track(
      FirstInvalidFieldFocus(
        _editedEntity,
        invalidFieldCount: invalidFields.length,
      ),
    );
  }

  void _leaveAfterSave(
    T saved, {
    required String message,
    required bool movedOutOfSight,
  }) {
    final navigator = Navigator.of(context);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Expanded(child: Text(message)),
            Icon(Symbols.done, color: Theme.of(context).primaryIconTheme.color),
          ],
        ),
      ),
    );

    if (_form.isCreate) {
      unawaited(widget.detailsRouteOf(saved).pushReplacement(context));

      return;
    }

    navigator.pop();
    if (movedOutOfSight) {
      WidgetsBinding.instance.addPostFrameCallback((_) => navigator.pop());
    }
  }

  Future<void> _confirmExit(bool didPop, Object? result) async {
    if (didPop) return;

    final navigator = Navigator.of(context);
    if (!_form.wasModified && !(widget.hasUnsavedInput?.call() ?? false)) {
      navigator.pop(result);

      return;
    }

    AnalyticsService.I.track(DiscardPromptShow(_editedEntity));
    final discard = await showDialog<bool>(
      context: context,
      builder: (context) => const DiscardChangesDialog(),
    );
    final isDiscarded = discard ?? false;
    AnalyticsService.I.track(
      DiscardPromptAnswer(_editedEntity, isDiscarded: isDiscarded),
    );

    if (isDiscarded) navigator.pop(result);
  }

  Object? _reportable(T? object) => switch (object) {
    final ToJson serializable => serializable.toJson(),
    _ => object?.id,
  };

  @override
  void dispose() {
    _progressSnackBar?.close();
    super.dispose();
  }
}

abstract final class EditObjectScaffoldKeys {
  static const Key nameField = ValueKey('Edit Object Name Field Key');
}
