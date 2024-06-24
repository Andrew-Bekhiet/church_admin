import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:transparent_pointer/transparent_pointer.dart';
import 'package:universal_io/io.dart';

class PhotoFieldState {
  final bool deletePhoto;
  final XFile? newPhoto;

  PhotoFieldState({required this.deletePhoto, this.newPhoto});

  bool get hasChanged => deletePhoto || newPhoto != null;
}

class PhotoField extends StatelessWidget {
  final ViewableWithIDAndImage object;
  final ViewableWithIDAndImage objectOnEmpty;

  final PhotoFieldState? initialValue;
  final void Function(PhotoFieldState?)? onSaved;
  final bool canDelete;

  final Color? backgroundColor;
  final Color? foregroundColor;

  final List<Widget> addActions;

  const PhotoField({
    required this.object,
    required this.objectOnEmpty,
    required this.canDelete,
    this.backgroundColor,
    this.foregroundColor,
    this.addActions = const [],
    this.onSaved,
    this.initialValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double appBarHeight = MediaQuery.sizeOf(context).height * 0.41;

    return FormField<PhotoFieldState>(
      initialValue: initialValue,
      onSaved: onSaved,
      builder: (state) => SliverAppBar(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        stretch: true,
        pinned: true,
        expandedHeight: appBarHeight,
        actions: [
          IconButton(
            onPressed: _changeImage(context, state),
            icon: const Icon(Symbols.photo_camera),
            tooltip: 'اختيار صورة',
          ),
          ...addActions,
        ],
        flexibleSpace: LayoutBuilder(
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
                  opacity:
                      constraints.biggest.height > kToolbarHeight * 2 ? 0 : 1,
                  child: Text(
                    object.name,
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
                    data:
                        IconTheme.of(context).copyWith(color: foregroundColor),
                    child: state.value!.hasChanged
                        ? state.value!.deletePhoto
                            ? ImageObjectWidget(
                                objectOnEmpty,
                                circleCrop: false,
                                size: appBarHeight,
                              )
                            : Image.file(
                                File(state.value!.newPhoto!.path),
                              )
                        : ImageObjectWidget(
                            object,
                            circleCrop: false,
                            size: appBarHeight,
                          ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void Function() _changeImage(
    BuildContext context,
    FormFieldState<PhotoFieldState> state,
  ) =>
      () async {
        final source = await ImagePickerService.I.showSourceSheet(
          context: context,
          canDelete: canDelete,
        );

        if (source == null) {
          return;
        } else if (source == ImagePickerService.deleteImage) {
          state
            ..didChange(PhotoFieldState(deletePhoto: true))
            ..save();
          return;
        }

        if (context.mounted) {
          final newPhoto = await ImagePickerService.I.pickAndCropImage(
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
        }
      };
}
