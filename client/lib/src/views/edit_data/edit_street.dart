import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' show ContrastingColor;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mime/mime.dart';
import 'package:rxdart/rxdart.dart';
import 'package:transparent_pointer/transparent_pointer.dart';
import 'package:universal_file/universal_file.dart';
import 'package:uuid/uuid.dart';

import 'photo_field_state.dart';

class EditStreet extends StatefulWidget {
  static final route = GoRoute(
    path: 'editStreet',
    builder: (context, state) {
      return EditStreet(
        street: (state.extra as Map?)?['street'] as Street?,
      );
    },
  );

  final Street? street;

  const EditStreet({
    required this.street,
    super.key,
  });

  @override
  State<EditStreet> createState() => _EditStreetState();
}

class _EditStreetState extends State<EditStreet> {
  late Street initialStreet =
      widget.street ?? Street(id: const Uuid().v4(), name: 'شارع جديد');
  late Street newStreet = initialStreet;

  bool _saveLock = false;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  PhotoFieldState _photoFieldState = PhotoFieldState(deletePhoto: false);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final foregroundColor = newStreet.color.getContrastingColor(
      ListTileTheme.of(context).textColor ??
          themeData.listTileTheme.textColor ??
          themeData.textTheme.titleMedium!.color!,
    );

    return Theme(
      data: CAThemingService.getDefault(primaryOverride: newStreet.color),
      child: Scaffold(
        body: Form(
          key: _form,
          onWillPop: _confirmExit,
          child: CustomScrollView(
            slivers: [
              FormField<PhotoFieldState>(
                initialValue: _photoFieldState,
                onSaved: (v) =>
                    v?.hasChanged ?? false ? _photoFieldState = v! : null,
                builder: (state) => SliverAppBar(
                  backgroundColor: newStreet.color,
                  foregroundColor: foregroundColor,
                  stretch: true,
                  pinned: true,
                  expandedHeight: MediaQuery.of(context).size.height * 0.4,
                  actions: [
                    IconButton(
                      onPressed: () async {
                        final source = await ImagePickerService.I
                            .showSourceSheet(context: context);

                        if (source == null) {
                          return;
                        } else if (source == ImagePickerService.deleteImage) {
                          state
                            ..didChange(PhotoFieldState(deletePhoto: true))
                            ..save();
                        }

                        if (!mounted) return;

                        final newPhoto =
                            await ImagePickerService.I.pickAndCropImage(
                          context: context,
                          source: source as ImageSource,
                          lockAspectRatio: true,
                        );
                        if (newPhoto != null) {
                          state
                            ..didChange(
                              PhotoFieldState(
                                deletePhoto: false,
                                newPhoto: newPhoto,
                              ),
                            )
                            ..save();
                        }
                      },
                      icon: const Icon(Icons.photo_camera),
                      tooltip: 'اختيار صورة',
                    ),
                    if (widget.street != null)
                      IconButton(
                        onPressed: _delete,
                        icon: const Icon(Icons.delete),
                        tooltip: 'حذف',
                      ),
                  ],
                  flexibleSpace: SafeArea(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final themeData = Theme.of(context);

                        return FlexibleSpaceBar(
                          centerTitle: false,
                          expandedTitleScale: 4,
                          titlePadding: const EdgeInsetsDirectional.only(
                            bottom: 16,
                            start: 72,
                            end: 10,
                          ),
                          title: TransparentPointer(
                            child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 300),
                              opacity: constraints.biggest.height >
                                      kToolbarHeight * 2
                                  ? 0
                                  : 1,
                              child: Text(
                                widget.street?.name ?? newStreet.name,
                                style: themeData.textTheme.titleLarge?.copyWith(
                                  color: foregroundColor,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          background: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            child: ProgressIndicatorTheme(
                              data: themeData.progressIndicatorTheme.copyWith(
                                color: themeData.brightness == Brightness.light
                                    ? themeData.colorScheme.onPrimary
                                    : themeData.colorScheme.onSurface,
                              ),
                              child: IconTheme(
                                data: IconTheme.of(context)
                                    .copyWith(color: foregroundColor),
                                child: state.value!.hasChanged
                                    ? state.value!.deletePhoto
                                        ? ImageObjectWidget(
                                            Street(id: '', name: ''),
                                            circleCrop: false,
                                          )
                                        : Image.file(
                                            File(state.value!.newPhoto!.path),
                                          )
                                    : ImageObjectWidget(
                                        newStreet,
                                        circleCrop: false,
                                      ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: FocusScope(
                  debugLabel: 'EditStreetFocusScope',
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
                                key: ValueKey(newStreet.name),
                                decoration: const InputDecoration(
                                  labelText: 'الاسم',
                                ),
                                initialValue: newStreet.name,
                                onChanged: (value) =>
                                    newStreet = newStreet.copyWith(
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
                            ColorField(
                              initialValue: newStreet.color,
                              onChanged: (value) => setState(
                                () => newStreet =
                                    newStreet.copyWith(color: value),
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
        final Street? result = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EditStreetLineMap(
              onSaved: Navigator.of(context).pop,
              initialStreet: newStreet,
              geomapOptions: GeomapOptions(
                layers: const {
                  GeoMapLayer.streets,
                },
                selectedStreets: {newStreet},
              ),
            ),
          ),
        );
        if (result != null) {
          newStreet = result;
        }
      };

  Future<void> _delete() async {
    final navigator = Navigator.of(context);
    final rslt = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('هل تريد حذف ' + initialStreet.name + '؟'),
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
      await DatabaseService.I.streets.deleteStreet(streetId: initialStreet.id);
      navigator
        ..pop()
        ..pop();
    }
  }

  Future<bool> _confirmExit() async {
    _form.currentState!.save();
    return newStreet == initialStreet ||
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
          SnackBar(
            duration: const Duration(minutes: 1),
            content: Row(
              children: const [
                Expanded(child: Text('جار الحفظ ...')),
                CircularProgressIndicator(),
              ],
            ),
          ),
        );

        if (widget.street == null) {
          await DatabaseService.I.streets.insertStreet(
            newStreet: newStreet,
          );
        } else {
          await DatabaseService.I.streets.updateStreet(
            newStreet: newStreet,
            oldStreet: initialStreet,
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
          final uploadUrl = await CAFunctionsService.I.getUploadUrl(
            'streets',
            newStreet.id,
            contentType: mimeType,
          );

          await CAFunctionsService.I.uploadPhoto(
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
          data: newStreet.toJson(),
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
