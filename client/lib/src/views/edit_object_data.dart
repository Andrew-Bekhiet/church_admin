import 'package:church_admin/church_admin.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:flutter/material.dart';

export 'edit_object_data/edit_area.dart';
export 'edit_object_data/edit_class.dart';
export 'edit_object_data/edit_family.dart';
export 'edit_object_data/edit_group.dart';
export 'edit_object_data/edit_person.dart';
export 'edit_object_data/edit_service.dart';
export 'edit_object_data/edit_store.dart';
export 'edit_object_data/edit_street.dart';

class EditObjectData<T extends ViewableWithID> extends StatefulWidget {
  static bool defaultCanDeletePhoto(EditObjectController controller) =>
      controller.isUpdate;

  final T? objectData;
  final EditObjectController<T> Function() getController;
  final T? objectOnEmptyPhoto;
  final Widget Function(BuildContext, EditObjectController<T>) builder;
  final bool Function(EditObjectController<T>) canDeletePhoto;

  const EditObjectData({
    required this.objectData,
    required this.getController,
    required this.builder,
    this.objectOnEmptyPhoto,
    this.canDeletePhoto = defaultCanDeletePhoto,
    super.key,
  });

  @override
  State<EditObjectData<T>> createState() => _EditObjectDataState<T>();
}

class _EditObjectDataState<T extends ViewableWithID>
    extends State<EditObjectData<T>> {
  EditObjectController<T> get _controller => widget.getController();

  T get initialObjectData => _controller.initialObject!;
  T get newObjectData => _controller.newObject;
  set newObjectData(T a) => _controller.newObject = a;

  @override
  Widget build(BuildContext context) {
    final foregroundColor = newObjectData.color?.findInvert();

    return Theme(
      data: ThemingService.getDefault(primaryOverride: newObjectData.color),
      child: Scaffold(
        body: Form(
          key: _controller.formKey,
          onPopInvoked: (didPop) async {
            if (didPop) return;

            final navigator = Navigator.of(context);
            if (await _controller.confirmExit(context)) navigator.pop();
          },
          child: CustomScrollView(
            slivers: [
              if (newObjectData is ViewableWithIDAndImage)
                PhotoField(
                  object: newObjectData as ViewableWithIDAndImage,
                  initialValue: _controller.photoFieldState,
                  objectOnEmpty:
                      widget.objectOnEmptyPhoto! as ViewableWithIDAndImage,
                  canDelete: _controller.isUpdate,
                  backgroundColor: newObjectData.color,
                  foregroundColor: foregroundColor,
                  addActions: [
                    if (widget.canDeletePhoto(_controller))
                      IconButton(
                        onPressed: () => _controller.delete(context),
                        icon: const Icon(Icons.delete),
                        tooltip: 'حذف',
                      ),
                  ],
                  onSaved: (v) => v?.hasChanged ?? false
                      ? _controller.photoFieldState = v!
                      : null,
                ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: FocusScope(
                  debugLabel: 'EditObjectDataFocusScope',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Builder(
                      builder: (context) =>
                          widget.builder(context, _controller),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _controller.save(context),
          tooltip: 'حفظ',
          child: const Icon(Icons.save),
        ),
      ),
    );
  }
}
