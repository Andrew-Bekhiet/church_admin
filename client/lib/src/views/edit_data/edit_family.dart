import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mime/mime.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';
import 'package:universal_file/universal_file.dart';
import 'package:uuid/uuid.dart';

class EditFamily extends StatefulWidget {
  static final route = GoRoute(
    path: 'editFamily',
    builder: (context, state) {
      return EditFamily(
        family: (state.extra as Map?)?['family'] as Family?,
        children: (state.extra as Map?)?['children'] as Set<Family>?,
        parents: (state.extra as Map?)?['parents'] as Set<Family>?,
      );
    },
  );

  final Family? family;
  final Set<Family>? children;
  final Set<Family>? parents;

  const EditFamily({
    required this.family,
    this.children,
    this.parents,
    super.key,
  });

  @override
  State<EditFamily> createState() => _EditFamilyState();
}

class _EditFamilyState extends State<EditFamily> {
  late Family initialFamily = widget.family ??
      Family(
        id: const Uuid().v4(),
        name: 'عائلة جديدة',
        children: widget.children?.toList() ?? [],
        parents: widget.parents?.toList() ?? [],
      );
  late Family newFamily = initialFamily;

  bool _saveLock = false;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  PhotoFieldState _photoFieldState = PhotoFieldState(deletePhoto: false);

  bool _relatedFamiliesLoaded = false;

  @override
  void initState() {
    super.initState();
    if (widget.family == null) {
      _relatedFamiliesLoaded = true;
    } else {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) async {
          final relatedFamiliesData = await DatabaseService.I.families
              .getFamilyRelatedFamilies(familyId: initialFamily.id);

          initialFamily = initialFamily.copyWith(
            children: relatedFamiliesData?.children ?? initialFamily.children,
            parents: relatedFamiliesData?.parents ?? initialFamily.parents,
          );
          newFamily = initialFamily;
          _relatedFamiliesLoaded = true;

          if (mounted) {
            setState(() {});
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final foregroundColor = newFamily.color?.findInvert();

    return Theme(
      data: CAThemingService.getDefault(primaryOverride: newFamily.color),
      child: Scaffold(
        body: Form(
          key: _form,
          onWillPop: _confirmExit,
          child: CustomScrollView(
            slivers: [
              PhotoField(
                object: newFamily,
                initialValue: _photoFieldState,
                objectOnEmpty: Family(id: '', name: ''),
                canDelete: widget.family != null,
                backgroundColor: newFamily.color,
                foregroundColor: foregroundColor,
                addActions: [
                  if (widget.family != null)
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
                  debugLabel: 'EditFamilyFocusScope',
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
                                key: ValueKey(newFamily.name),
                                decoration: const InputDecoration(
                                  labelText: 'الاسم',
                                ),
                                initialValue: newFamily.name,
                                onChanged: (value) =>
                                    newFamily = newFamily.copyWith(
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
                            AddressWithLocationField(
                              initialAddress: newFamily.address,
                              onAddressChanged: (value) => setState(
                                () => newFamily =
                                    newFamily.copyWith(address: value),
                              ),
                              onEditLocation: _editGeolocation,
                            ),
                            _FieldWrapper(
                              builder: (context) => TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'ملاحظات',
                                ),
                                initialValue: newFamily.notes,
                                onChanged: (value) =>
                                    newFamily = newFamily.copyWith(
                                  notes: value.trim(),
                                ),
                                textInputAction: TextInputAction.next,
                                maxLines: null,
                                validator: (value) => null,
                              ),
                            ),
                            ColorField(
                              initialValue: newFamily.color,
                              onChanged: (value) => setState(
                                () => newFamily =
                                    newFamily.copyWith(color: value),
                              ),
                            ),
                            const Divider(),
                            MultiObjectSelectionField<Family>(
                              nullable: false,
                              key: ValueKey(
                                Tuple2('parents', newFamily.parents),
                              ),
                              validator: (p) => p?.contains(newFamily) ?? false
                                  ? 'لا يمكن أن تكون عائلة أب أو أم لنفسها'
                                  : null,
                              decoration: InputDecoration(
                                prefixIcon: !_relatedFamiliesLoaded
                                    ? const Center(
                                        heightFactor: 1,
                                        widthFactor: 1,
                                        child: SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: CircularProgressIndicator(),
                                        ),
                                      )
                                    : null,
                                errorMaxLines: 2,
                              ),
                              initialValue: newFamily.parents?.toSet() ?? {},
                              listController: (s) =>
                                  ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I.families
                                    .streamAll(searchQuery: s),
                              ),
                              labelText: 'عائلات الأب والأم',
                              onChanged: (value) =>
                                  newFamily = newFamily.copyWith(
                                parents: value?.toList(),
                              ),
                              itemBuilder: (context, family, config) {
                                return ViewableObjectWidget(
                                  family,
                                  config: config,
                                  wrapInCard: true,
                                );
                              },
                              builder: (context, state) {
                                return state.value != null
                                    ? IgnorePointer(
                                        child: Column(
                                          children: [
                                            for (final family in state.value!)
                                              ViewableObjectWidget(
                                                family,
                                                dense: true,
                                              ),
                                          ],
                                        ),
                                      )
                                    : null;
                              },
                            ),
                            MultiObjectSelectionField<Family>(
                              nullable: false,
                              key: ValueKey(
                                Tuple2('children', newFamily.children),
                              ),
                              validator: (c) => c?.contains(newFamily) ?? false
                                  ? 'لا يمكن أن تكون عائلة أبن أو أبنة لنفسها'
                                  : null,
                              decoration: InputDecoration(
                                prefixIcon: !_relatedFamiliesLoaded
                                    ? const Center(
                                        heightFactor: 1,
                                        widthFactor: 1,
                                        child: SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: CircularProgressIndicator(),
                                        ),
                                      )
                                    : null,
                                errorMaxLines: 2,
                              ),
                              initialValue: newFamily.children?.toSet() ?? {},
                              listController: (s) =>
                                  ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I.families
                                    .streamAll(searchQuery: s),
                              ),
                              labelText: 'عائلات الأبناء',
                              onChanged: (value) =>
                                  newFamily = newFamily.copyWith(
                                children: value?.toList(),
                              ),
                              itemBuilder: (context, family, config) {
                                return ViewableObjectWidget(
                                  family,
                                  config: config,
                                  wrapInCard: true,
                                );
                              },
                              builder: (context, state) {
                                return state.value != null
                                    ? IgnorePointer(
                                        child: Column(
                                          children: [
                                            for (final family in state.value!)
                                              ViewableObjectWidget(
                                                family,
                                                dense: true,
                                              ),
                                          ],
                                        ),
                                      )
                                    : null;
                              },
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

  Future<Point?> _editGeolocation(BuildContext context) async {
    final Family? result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => EditFamilyLocationMap(
          onSaved: Navigator.of(context).pop,
          initialFamily: newFamily,
          geomapOptions: GeomapOptions(
            layers: const {
              GeoMapLayer.families,
            },
            selectedFamilies: {newFamily},
          ),
        ),
      ),
    );
    if (result != null) {
      newFamily = result;
    }
    return result?.geolocation;
  }

  Future<void> _delete() async {
    final navigator = Navigator.of(context);
    final rslt = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('هل تريد حذف ' + initialFamily.name + '؟'),
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
      await DatabaseService.I.families.deleteFamily(familyId: initialFamily.id);
      navigator
        ..pop()
        ..pop();
    }
  }

  Future<bool> _confirmExit() async {
    _form.currentState!.save();
    return newFamily == initialFamily ||
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

        if (widget.family == null) {
          await DatabaseService.I.families.insertFamily(
            newFamily: newFamily,
          );
        } else {
          await DatabaseService.I.families.updateFamily(
            newFamily: newFamily,
            oldFamily: initialFamily,
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
            'families',
            newFamily.id,
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
          data: newFamily.toJson(),
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
