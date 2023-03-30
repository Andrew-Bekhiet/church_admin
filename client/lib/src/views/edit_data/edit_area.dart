/* import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart'
    show ContrastingColor, TappableFormField;
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mime/mime.dart';
import 'package:rxdart/rxdart.dart';
import 'package:transparent_pointer/transparent_pointer.dart';
import 'package:universal_file/universal_file.dart';
import 'package:uuid/uuid.dart';

import 'photo_state.dart';

class EditArea extends StatefulWidget {
  static final route = GoRoute(
    path: 'editArea',
    builder: (context, state) {
      return EditArea(
        area: (state.extra as Map?)?['area'] as Area?,
      );
    },
  );

  final Area? area;

  const EditArea({
    required this.area,
    super.key,
  });

  @override
  State<EditArea> createState() => _EditAreaState();
}

class _EditAreaState extends State<EditArea> {
  late Area initialArea =
      widget.area ?? Area(id: const Uuid().v4(), name: 'منطقة جديدة');
  late Area newArea = initialArea;

  bool _saveLock = false;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  String? _suggestedAddress;
  PhotoState _photoState = PhotoState(deletePhoto: false);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final foregroundColor = newArea.color.getContrastingColor(
      ListTileTheme.of(context).textColor ??
          themeData.listTileTheme.textColor ??
          themeData.textTheme.titleMedium!.color!,
    );

    return Theme(
      data: CAThemingService.getDefault(primaryOverride: newArea.color),
      child: Scaffold(
        body: Form(
          key: _form,
          onWillPop: _confirmExit,
          child: CustomScrollView(
            slivers: [
              FormField<PhotoState>(
                initialValue: _photoState,
                onSaved: (v) =>
                    v?.hasChanged ?? false ? _photoState = v! : null,
                builder: (state) => SliverAppBar(
                  backgroundColor: newArea.color,
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
                            ..didChange(PhotoState(deletePhoto: true))
                            ..save();
                        }

                        if (!mounted) return;

                        final newPhoto =
                            await ImagePickerService.I.pickAndCropImage(
                          context: context,
                          source: source as ImageSource,
                          cropStyle: CropStyle.circle,
                          lockAspectRatio: true,
                        );
                        if (newPhoto != null) {
                          state
                            ..didChange(
                              PhotoState(
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
                    if (widget.area != null)
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
                                widget.area?.name ?? newArea.name,
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
                                            Area(id: '', name: ''),
                                            circleCrop: false,
                                          )
                                        : Image.file(
                                            File(state.value!.newPhoto!.path),
                                          )
                                    : ImageObjectWidget(
                                        newArea,
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
                  debugLabel: 'EditAreaFocusScope',
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
                                key: ValueKey(newArea.name),
                                decoration: const InputDecoration(
                                  labelText: 'الاسم',
                                ),
                                initialValue: newArea.name,
                                onChanged: (value) =>
                                    newArea = newArea.copyWith(
                                  name: value.trim(),
                                ),
                                textInputAction: TextInputAction.next,
                                textCapitalization: TextCapitalization.words,
                                validator: (value) {
                                  if (value?.isEmpty ?? true) {
                                    return 'يجب ملئ الاسم';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            FormField<Color?>(
                              initialValue: newArea.color,
                              builder: (state) => ListTile(
                                title: const Text('اللون'),
                                onTap: () async => _selectColor(state),
                                trailing: ColorIndicator(
                                  hasBorder: true,
                                  width: 50,
                                  height: 50,
                                  borderRadius: 20,
                                  color: state.value ?? Colors.transparent,
                                ),
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

  Future<void> _delete() async {
    final navigator = Navigator.of(context);
    final rslt = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('هل تريد حذف ' + initialArea.name + '؟'),
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
      await DatabaseService.I.areas.deleteArea(areaId: initialArea.id);
      navigator
        ..pop()
        ..pop();
    }
  }

  Future<void> _selectColor(FormFieldState<Color?> state) async {
    final Color newColor = await showColorPickerDialog(
      state.context,
      state.value ?? Theme.of(context).primaryColor,
      title: Text(
        'اختيار اللون',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      spacing: 10,
      runSpacing: 10,
      borderRadius: 20,
      wheelDiameter: 165,
      enableOpacity: true,
      enableTonalPalette: true,
      enableShadesSelection: false,
      showRecentColors: true,
      showColorName: true,
      showColorCode: true,
      colorCodeHasColor: true,
      pickersEnabled: <ColorPickerType, bool>{
        ColorPickerType.wheel: true,
        ColorPickerType.primary: false,
        ColorPickerType.accent: false,
        ColorPickerType.both: false,
        ColorPickerType.bw: false,
        ColorPickerType.custom: false,
      },
      copyPasteBehavior: const ColorPickerCopyPasteBehavior(
        copyButton: true,
        pasteButton: true,
        longPressMenu: true,
      ),
      barrierColor: Colors.black54,
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.height * 0.7,
      ),
    );
    state.didChange(newColor);
    setState(
      () => newArea = newArea.copyWith(color: newColor),
    );
  }

  Future<void> _editGeoLocation(BuildContext context) async {
    final Area? result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DataGeomap(
          editArea: true,
          initialArea: newArea,
          initialLayers: const {GeoMapLayer.areas},
        ),
      ),
    );
    if (result != null) {
      newArea = result;
    }
  }

  Future<bool> _confirmExit() async {
    _form.currentState!.save();
    return newArea == initialArea ||
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

        if (widget.area == null) {
          await DatabaseService.I.areas.insertArea(
            newArea: newArea,
          );
        } else {
          await DatabaseService.I.areas.updateArea(
            newArea: newArea,
            oldArea: initialArea,
          );
        }

        if (_photoState.hasChanged) {
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
              MimeTypeResolver().lookup(_photoState.newPhoto!.path);
          final uploadUrl = await CAFunctionsService.I.getUploadUrl(
            'areas',
            newArea.id,
            contentType: mimeType,
          );

          await CAFunctionsService.I.uploadPhoto(
            url: uploadUrl,
            contentType: mimeType,
            fileStream: _photoState.newPhoto!.openRead(),
            fileLength: File(_photoState.newPhoto!.path).lengthSync(),
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
          data: newArea.toJson(),
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
 */
