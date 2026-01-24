import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mime/mime.dart';
import 'package:rxdart/rxdart.dart';

typedef UpdateFunc<T> = Future<T?> Function(T oldObject, T newObject);

class EditObjectController<T extends ViewableWithID> {
  bool _saveLock = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late PhotoFieldState photoFieldState = PhotoFieldState(deletePhoto: false);

  final T? initialObject;

  T newObject;

  final void Function(T object)? afterCreate;
  final Future<T> Function(T object)? onCreate;
  final UpdateFunc<T>? onUpdate;
  final Future<void> Function(T object)? onDelete;

  final Json Function(T object) toJson;

  EditObjectController({
    required this.toJson,
    required this.newObject,
    required void Function(T object) this.afterCreate,
    required Future<T> Function(T object) this.onCreate,
    this.onUpdate,
    this.onDelete,
    this.initialObject,
  }) : assert(
         initialObject == null || (onUpdate != null && onDelete != null),
         'You must provide update and delete functions when editing an existing object',
       );

  EditObjectController.update({
    required this.toJson,
    required T this.initialObject,
    required this.newObject,
    required UpdateFunc<T> this.onUpdate,
    this.onDelete,
  }) : onCreate = null,
       afterCreate = null;

  EditObjectController._({
    required this.toJson,
    required this.newObject,
    this.afterCreate,
    this.onCreate,
    this.onUpdate,
    this.onDelete,
    this.initialObject,
  });

  bool get hasChanged => initialObject != newObject;
  bool get isCreate => initialObject == null;
  bool get isUpdate => initialObject != null;

  Future<void> save(BuildContext context) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    try {
      if (_saveLock) return;

      if (formKey.currentState!.validate()) {
        _saveLock = true;
        formKey.currentState!.save();

        final themeData = Theme.of(context);
        final navigator = Navigator.of(context);

        scaffoldMessenger.showSnackBar(
          const SnackBar(
            duration: Duration(minutes: 2),
            content: Row(
              children: [
                Expanded(child: Text('جار الحفظ ...')),
                CircularProgressIndicator(),
              ],
            ),
          ),
        );

        final T returnedObject;
        if (isCreate) {
          returnedObject = await onCreate!(newObject);
        } else {
          returnedObject =
              await onUpdate!(initialObject!, newObject) ?? newObject;
        }

        await _handlePhotoChange(returnedObject, scaffoldMessenger);

        scaffoldMessenger
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Row(
                children: [
                  const Expanded(child: Text('تم بنجاح')),
                  Icon(Symbols.done, color: themeData.primaryIconTheme.color),
                ],
              ),
            ),
          );

        if (afterCreate case final afterCreate? when isCreate) {
          afterCreate(returnedObject);
        } else {
          navigator.pop();
        }

        _saveLock = false;
      }
    } on Exception catch (e, stackTrace) {
      _saveLock = false;

      scaffoldMessenger.hideCurrentSnackBar();

      if (context.mounted) {
        await LoggingService.I.showErrorDialogAndReport(
          context,
          LogRecord(
            error: e,
            stackTrace: stackTrace,
            data: {
              'objectType': T.toString(),
              'initialObject': initialObject != null
                  ? toJson(initialObject!)
                  : null,
              'newObject': toJson(newObject),
            },
          ),
        );
      }
    }
  }

  Future<void> _handlePhotoChange(
    T returnedObject,
    ScaffoldMessengerState scaffoldMessenger,
  ) async {
    if (photoFieldState.hasChanged && photoFieldState.deletePhoto) {
      await (returnedObject as IImage).imageInfo.delete();
    } else if (photoFieldState.hasChanged) {
      scaffoldMessenger.hideCurrentSnackBar();

      final uploadProgress = BehaviorSubject<double?>();

      scaffoldMessenger.showSnackBar(
        SnackBar(
          duration: const Duration(minutes: 30),
          content: Row(
            children: [
              const Expanded(child: Text('جار رفع الصورة ...')),
              StreamBuilder<double?>(
                stream: uploadProgress.stream,
                builder: (context, snapshot) =>
                    CircularProgressIndicator(value: snapshot.data),
              ),
            ],
          ),
        ),
      );

      final mimeType = MimeTypeResolver().lookup(
        photoFieldState.newPhoto!.path,
      );

      final uploadUrl = await (returnedObject as IImage).imageInfo.getUploadUrl(
        contentType: mimeType,
      );

      await FunctionsService.I.uploadPhoto(
        url: uploadUrl,
        contentType: mimeType,
        fileStream: photoFieldState.newPhoto!.openRead(),
        fileLength: await photoFieldState.newPhoto!.length(),
        onSendProgress: (sent, total) => uploadProgress.add(sent / total),
      );

      await uploadProgress.close();
    }
  }

  Future<void> delete(BuildContext context) async {
    if (isCreate) {
      throw Exception('Cannot delete an object that has not been created');
    }

    final navigator = Navigator.of(context);
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final themeData = Theme.of(context);

    final rslt = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('هل تريد حذف ${initialObject!.name}؟'),
        actions: [
          FilledButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('لا'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('نعم'),
          ),
        ],
      ),
    );

    if (rslt != true) return;

    await onDelete!(initialObject!);

    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Expanded(child: Text('تم الحذف بنجاح')),
            Icon(Symbols.done, color: themeData.primaryIconTheme.color),
          ],
        ),
      ),
    );

    navigator.pop();
    WidgetsBinding.instance.addPostFrameCallback((_) => navigator.pop());
  }

  Future<bool> confirmExit(BuildContext context) async {
    formKey.currentState!.save();

    return newObject == initialObject && !photoFieldState.hasChanged ||
        (await showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('هل تريد تجاهل التغييرات؟'),
                actions: [
                  FilledButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text('البقاء'),
                  ),
                  FilledButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: const Text('تجاهل'),
                  ),
                ],
              ),
            ) ??
            false);
  }

  EditObjectController<T> copyWith({
    T? initialObject,
    T? newObject,
    Future<T> Function(T object)? onCreate,
    UpdateFunc<T>? onUpdate,
    Future<void> Function(T object)? onDelete,
    Json Function(T object)? toJson,
    void Function(T object)? afterCreate,
  }) {
    return EditObjectController<T>._(
      initialObject: initialObject ?? this.initialObject,
      newObject: newObject ?? this.newObject,
      onCreate: onCreate ?? this.onCreate,
      onUpdate: onUpdate ?? this.onUpdate,
      onDelete: onDelete ?? this.onDelete,
      toJson: toJson ?? this.toJson,
      afterCreate: afterCreate ?? this.afterCreate,
    );
  }
}
