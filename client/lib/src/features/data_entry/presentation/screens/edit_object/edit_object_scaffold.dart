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
  final bool canDelete;
  final AppRoute Function(T created) detailsRouteOf;
  final Widget fields;
  final String? nameHint;

  const EditObjectScaffold({
    required this.form,
    required this.saveCubit,
    required this.canDelete,
    required this.detailsRouteOf,
    required this.fields,
    this.nameHint,
    super.key,
  });

  @override
  State<EditObjectScaffold<T>> createState() => _EditObjectScaffoldState<T>();
}

class _EditObjectScaffoldState<T extends ViewableWithIDAndImage>
    extends State<EditObjectScaffold<T>> {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? _progressSnackBar;

  ObjectFormController<T> get _form => widget.form;

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
                        if (widget.canDelete)
                          IconButton(
                            onPressed: _delete,
                            icon: const Icon(Symbols.delete),
                            tooltip: 'حذف',
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
      case NotSavingObject():
        _progressSnackBar?.close();
        _progressSnackBar = null;

      case SavingObject() || UploadingObjectPhoto():
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
    final outcome = await widget.saveCubit.submit();
    if (!mounted) return;

    switch (outcome) {
      case ObjectSaved(:final object):
        _leaveAfterSave(object, message: 'تم بنجاح');

      case ObjectSavedButPhotoFailed(
        :final object,
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
        _leaveAfterSave(object, message: 'تم الحفظ لكن تعذر رفع الصورة');

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
        _form.value.allFields
            .firstWhereOrNull((field) => field.value.isInvalid)
            ?.focus();

      case ObjectSaveAlreadyInProgress() ||
          ObjectSaveAbandonedBecauseEditorClosed():
        return;
    }
  }

  void _leaveAfterSave(T saved, {required String message}) {
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

    Navigator.of(context).pop();
  }

  Future<void> _confirmExit(bool didPop, Object? result) async {
    if (didPop) return;

    final navigator = Navigator.of(context);
    if (!_form.wasModified) {
      navigator.pop(result);

      return;
    }

    final discard = await showDialog<bool>(
      context: context,
      builder: (context) => const DiscardChangesDialog(),
    );

    if (discard ?? false) navigator.pop(result);
  }

  Future<void> _delete() async {
    final navigator = Navigator.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final iconColor = Theme.of(context).primaryIconTheme.color;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => DeleteConfirmationDialog(
        objectName: _form.savedObject?.name ?? '',
      ),
    );
    if (confirmed != true || !mounted) return;

    try {
      await widget.saveCubit.deleteSavedObject();
    } on Exception catch (error, stackTrace) {
      if (!mounted) return;

      await LoggingService.I.showErrorDialogAndReport(
        context,
        LogRecord(
          error: error,
          stackTrace: stackTrace,
          data: {
            'objectType': '$T',
            'initialObject': _reportable(_form.savedObject),
          },
        ),
      );

      return;
    }
    if (!mounted) return;

    messenger.showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Expanded(child: Text('تم الحذف بنجاح')),
            Icon(Symbols.done, color: iconColor),
          ],
        ),
      ),
    );

    navigator.pop();
    WidgetsBinding.instance.addPostFrameCallback((_) => navigator.pop());
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
