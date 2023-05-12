import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mime/mime.dart';
import 'package:rxdart/rxdart.dart';
import 'package:universal_file/universal_file.dart';
import 'package:uuid/uuid.dart';

class EditStore extends StatefulWidget {
  static final route = GoRoute(
    path: 'editStore',
    builder: (context, state) {
      return EditStore(
        store: (state.extra as Map?)?['store'] as Store?,
      );
    },
  );

  final Store? store;

  const EditStore({
    required this.store,
    super.key,
  });

  @override
  State<EditStore> createState() => _EditStoreState();
}

class _EditStoreState extends State<EditStore> {
  late Store initialStore =
      widget.store ?? Store(id: const Uuid().v4(), name: 'متجر جديد');
  late Store newStore = initialStore;

  bool _saveLock = false;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  PhotoFieldState _photoFieldState = PhotoFieldState(deletePhoto: false);

  @override
  Widget build(BuildContext context2) {
    final foregroundColor = newStore.color?.findInvert();

    return Theme(
      data: ThemingService.getDefault(primaryOverride: newStore.color),
      child: Scaffold(
        body: Form(
          key: _form,
          onWillPop: _confirmExit,
          child: CustomScrollView(
            slivers: [
              PhotoField(
                object: newStore,
                initialValue: _photoFieldState,
                objectOnEmpty: Store(id: '', name: ''),
                canDelete: widget.store != null,
                backgroundColor: newStore.color,
                foregroundColor: foregroundColor,
                addActions: [
                  if (widget.store != null)
                    IconButton(
                      onPressed: _delete,
                      icon: const Icon(Icons.delete),
                      tooltip: 'حذف',
                    ),
                ],
                onSaved: (v) =>
                    v?.hasChanged ?? false ? _photoFieldState = v! : null,
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: FocusScope(
                  debugLabel: 'EditStoreFocusScope',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Builder(
                      builder: (context) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _FieldWrapper(
                              builder: (context) => TextFormField(
                                key: ValueKey(newStore.name),
                                decoration: const InputDecoration(
                                  labelText: 'الاسم',
                                ),
                                initialValue: newStore.name,
                                onChanged: (value) =>
                                    newStore = newStore.copyWith(
                                  name: value.trim(),
                                ),
                                textInputAction: TextInputAction.next,
                                textCapitalization: TextCapitalization.words,
                                validator: (value) {
                                  if (value?.trim().isEmpty ?? true) {
                                    return 'يجب ملئ الاسم';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            FilledButton.tonalIcon(
                              onPressed: _editGeolocation(context),
                              icon: const Icon(Icons.edit_location),
                              label: const Text('المكان على الخريطة'),
                            ),
                            ObjectSelectionField<Family, Family?>(
                              decoration:
                                  const InputDecoration(errorMaxLines: 2),
                              initialValue: newStore.family,
                              listController: (s) =>
                                  ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I.families
                                    .streamAll(searchQuery: s),
                              ),
                              labelText: 'العائلة المسؤولة',
                              onChanged: (value) =>
                                  newStore = newStore.copyWith(
                                family: value,
                                familyId: value?.id,
                              ),
                              validator: (value) {
                                if (value == null &&
                                    newStore.geolocation == null) {
                                  return 'يجب اختيار عائلة أو تحديد الموقع';
                                }
                                return null;
                              },
                              builder: (context, state) {
                                return state.value != null
                                    ? IgnorePointer(
                                        child: ViewableObjectWidget(
                                          state.value!,
                                          dense: true,
                                        ),
                                      )
                                    : null;
                              },
                            ),
                            ColorField(
                              initialValue: newStore.color,
                              onChanged: (value) => setState(
                                () =>
                                    newStore = newStore.copyWith(color: value),
                              ),
                            ),
                            const SizedBox(height: 80),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _save,
          tooltip: 'حفظ',
          child: const Icon(Icons.save),
        ),
      ),
    );
  }

  void Function() _editGeolocation(BuildContext context) => () async {
        final Store? result = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EditStoreLocationMap(
              onSaved: Navigator.of(context).pop,
              initialStore: newStore,
              geomapOptions: GeomapOptions(
                layers: const {
                  GeoMapLayer.stores,
                },
                selectedStores: {newStore},
              ),
            ),
          ),
        );
        if (result != null) {
          newStore = result;
        }
      };

  Future<void> _delete() async {
    final navigator = Navigator.of(context);
    final rslt = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('هل تريد حذف ' + initialStore.name + '؟'),
        actions: [
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('لا'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('نعم'),
          ),
        ],
      ),
    );

    if (rslt == true) {
      await DatabaseService.I.stores.deleteStore(storeId: initialStore.id);
      navigator
        ..pop()
        ..pop();
    }
  }

  Future<bool> _confirmExit() async {
    _form.currentState!.save();
    return newStore == initialStore ||
        (await showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('هل تريد تجاهل التغييرات؟'),
                actions: [
                  OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text('البقاء'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: const Text('تجاهل'),
                  ),
                ],
              ),
            ) ??
            false);
  }

  Future<void> _save() async {
    try {
      if (_saveLock) return;

      if (_form.currentState!.validate()) {
        _saveLock = true;
        _form.currentState!.save();

        final navigator = Navigator.of(context);
        final themeData = Theme.of(context);

        scaffoldMessenger.showSnackBar(
          const SnackBar(
            duration: Duration(minutes: 1),
            content: Row(
              children: [
                Expanded(child: Text('جار الحفظ ...')),
                CircularProgressIndicator(),
              ],
            ),
          ),
        );

        if (widget.store == null) {
          await DatabaseService.I.stores.insertStore(
            newStore: newStore,
          );
        } else {
          await DatabaseService.I.stores.updateStore(
            newStore: newStore,
            oldStore: initialStore,
          );
        }

        if (_photoFieldState.hasChanged) {
          scaffoldMessenger.hideCurrentSnackBar();

          final uploadProgress = BehaviorSubject<double?>();

          scaffoldMessenger.showSnackBar(
            SnackBar(
              duration: const Duration(minutes: 5),
              content: Row(
                children: [
                  const Expanded(child: Text('جار رفع الصورة ...')),
                  StreamBuilder<double?>(
                    stream: uploadProgress.stream,
                    builder: (context, snapshot) => CircularProgressIndicator(
                      value: snapshot.data,
                    ),
                  ),
                ],
              ),
            ),
          );

          final mimeType =
              MimeTypeResolver().lookup(_photoFieldState.newPhoto!.path);
          final uploadUrl = await FunctionsService.I.getUploadUrl(
            'stores',
            newStore.id,
            contentType: mimeType,
          );

          await FunctionsService.I.uploadPhoto(
            url: uploadUrl,
            contentType: mimeType,
            fileStream: _photoFieldState.newPhoto!.openRead(),
            fileLength: File(_photoFieldState.newPhoto!.path).lengthSync(),
            onSendProgress: (sent, total) => uploadProgress.add(sent / total),
          );

          await uploadProgress.close();
        }

        scaffoldMessenger
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Row(
                children: [
                  const Expanded(child: Text('تم بنجاح')),
                  Icon(
                    Icons.done,
                    color: themeData.primaryIconTheme.color,
                  ),
                ],
              ),
            ),
          );
        navigator.pop();
      }
    } on Exception catch (e, stackTrace) {
      scaffoldMessenger.hideCurrentSnackBar();

      unawaited(
        showDialog(
          context: context,
          builder: (context) => CAErrorDialog(exception: e),
        ),
      );

      unawaited(
        LoggingService.I.reportError(
          e,
          stackTrace: stackTrace,
          data: newStore.toJson(),
        ),
      );
    } finally {
      _saveLock = false;
    }
  }
}

class _FieldWrapper extends StatelessWidget {
  final Widget Function(BuildContext) builder;

  const _FieldWrapper({required this.builder});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Builder(builder: builder),
    );
  }
}
