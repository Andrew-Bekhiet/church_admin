import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

export 'edit_object_data/edit_area.dart';
export 'edit_object_data/edit_class.dart';
export 'edit_object_data/edit_family.dart';
export 'edit_object_data/edit_group.dart';
export 'edit_object_data/edit_person.dart';
export 'edit_object_data/edit_service.dart';
export 'edit_object_data/edit_store.dart';
export 'edit_object_data/edit_street.dart';

class EditObjectData<T extends ViewableWithID> extends StatefulWidget {
  static bool defaultCanDelete(EditObjectController controller) =>
      controller.isUpdate &&
      AuthBloc.I.currentUserData!.canDeleteObject(controller.initialObject!);

  final T? objectData;
  final EditObjectController<T> Function() getController;
  final Widget Function(BuildContext, EditObjectController<T>) builder;
  final bool Function(EditObjectController<T>) canDelete;

  const EditObjectData({
    required this.objectData,
    required this.getController,
    required this.builder,
    this.canDelete = defaultCanDelete,
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
    final newTheme = ThemingService.getDefault(
      seedOverride: newObjectData.color,
    );

    return Theme(
      data: newTheme,
      child: Scaffold(
        body: Builder(
          builder: (context) => Form(
            key: _controller.formKey,
            canPop: false,
            onPopInvokedWithResult: (didPop, result) async {
              if (didPop) return;

              final navigator = Navigator.of(context);
              if (await _controller.confirmExit(context)) navigator.pop(result);
            },
            child: CustomScrollView(
              slivers: [
                if (newObjectData is ViewableWithIDAndImage)
                  SliverAppBar(
                    stretch: true,
                    pinned: true,
                    expandedHeight: MediaQuery.sizeOf(context).width,
                    actions: [
                      if (widget.canDelete(_controller))
                        IconButton(
                          onPressed: () => _controller.delete(context),
                          icon: const Icon(Symbols.delete),
                          tooltip: 'حذف',
                        ),
                    ],
                    flexibleSpace: PhotoField(
                      circleCrop:
                          newObjectData is Person || newObjectData is User,
                      object: newObjectData as ViewableWithIDAndImage,
                      initialValue: _controller.photoFieldState,
                      canDelete: _controller.isUpdate,
                      backgroundColor: newObjectData.color,
                      onSaved: (v) => v?.hasChanged ?? false
                          ? _controller.photoFieldState = v!
                          : null,
                    ),
                  ),
                SliverToBoxAdapter(
                  child: FocusScope(
                    debugLabel: 'EditObjectDataFocusScope',
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Builder(
                        builder: (context) =>
                            widget.builder(context, _controller),
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 120)),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          key: EditObjectDataKeys.saveButton,
          label: const Text('حفظ'),
          icon: const Icon(Icons.save),
          onPressed: () => _controller.save(context),
        ),
      ),
    );
  }
}

abstract final class EditObjectDataKeys {
  static const Key saveButton = ValueKey('Edit Object Data Save Button Key');
}
