import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:image_picker/image_picker.dart';

class PhotoField extends StatelessWidget {
  final ViewableWithIDAndImage object;

  final PhotoFieldState? initialValue;
  final bool canDelete;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool circleCrop;

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
    return FormField<PhotoFieldState>(
      initialValue: initialValue,
      onSaved: onSaved,
      builder: (state) => PhotoPickerAppBar(
        object: object,
        canDelete: canDelete,
        circleCrop: circleCrop,
        foregroundColor: foregroundColor,
        change: switch (state.value) {
          PhotoFieldState(deletePhoto: true) => const DeletePhoto(),
          PhotoFieldState(:final newPhoto?) => ReplacePhoto(newPhoto),
          _ => const KeepPhoto(),
        },
        onChanged: (change) {
          state
            ..didChange(switch (change) {
              DeletePhoto() => PhotoFieldState(deletePhoto: true),
              ReplacePhoto(:final photo) => PhotoFieldState(
                deletePhoto: false,
                newPhoto: photo,
              ),
              KeepPhoto() => PhotoFieldState(deletePhoto: false),
            })
            ..save();
        },
      ),
    );
  }

  final void Function(PhotoFieldState?)? onSaved;
}

class PhotoFieldState {
  final bool deletePhoto;
  final XFile? newPhoto;

  bool get hasChanged => deletePhoto || newPhoto != null;

  PhotoFieldState({required this.deletePhoto, this.newPhoto});
}
