import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:universal_io/io.dart';

class PhotoFieldState {
  final bool deletePhoto;
  final XFile? newPhoto;

  bool get hasChanged => deletePhoto || newPhoto != null;

  PhotoFieldState({required this.deletePhoto, this.newPhoto});
}

class PhotoField extends StatelessWidget {
  final ViewableWithIDAndImage object;

  final PhotoFieldState? initialValue;
  final bool canDelete;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool circleCrop;

  void Function() _changeImage(
    BuildContext context,
    FormFieldState<PhotoFieldState> state,
  ) => () async {
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

  const PhotoField({
    required this.object,
    required this.circleCrop,
    required this.canDelete,
    this.backgroundColor,
    this.foregroundColor,
    this.onSaved,
    this.initialValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double appBarMaxHeight = MediaQuery.sizeOf(context).width;

    return FormField<PhotoFieldState>(
      initialValue: initialValue,
      onSaved: onSaved,
      builder: (state) => SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final photoSize = 4 * constraints.biggest.height / 5;
            final colorScheme = Theme.of(context).colorScheme;

            return ViewableObjectAppBar(
              viewable: object,
              appBarMaxHeight: appBarMaxHeight,
              foregroundColor: foregroundColor,
              circleCrop: circleCrop,
              onTap: _changeImage(context, state),
              overrideImage: switch ((
                state.value!.hasChanged,
                state.value!.deletePhoto,
                object.hasImage,
              )) {
                (true, false, _) => ClipPath(
                  clipper: ShapeBorderClipper(
                    shape: circleCrop
                        ? const CircleBorder()
                        : const RoundedRectangleBorder(
                            borderRadius: ImageObjectWidget.clipBorderRadius,
                          ),
                    textDirection: Directionality.maybeOf(context),
                  ),
                  child: Image.file(
                    File(state.value!.newPhoto!.path),
                    height: photoSize,
                  ),
                ),
                (true, true, _) || (_, _, false) => DecoratedBox(
                  decoration: ShapeDecoration(
                    shape: const CircleBorder(),
                    color: colorScheme.primaryContainer,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.expand(
                      height: photoSize,
                      width: photoSize,
                    ),
                    child: Icon(
                      Symbols.camera_alt,
                      size: 2 * photoSize / 3,
                      color: colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                (_, _, _) => null,
              },
            );
          },
        ),
      ),
    );
  }

  final void Function(PhotoFieldState?)? onSaved;
}
