import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

export 'package:image_cropper/image_cropper.dart'
    show CropAspectRatio, CropStyle, CroppedFile;
export 'package:image_picker/image_picker.dart' show ImageSource;

class ImagePickerService {
  static ImagePickerService get I =>
      globalProviderContainer.read(imagePickerServiceProvider);

  static const deleteImage = _DeleteImage();

  ImagePickerService({
    required ImagePicker imagePicker,
    required ImageCropper imageCropper,
  })  : _imagePicker = imagePicker,
        _imageCropper = imageCropper;

  final ImagePicker _imagePicker;
  final ImageCropper _imageCropper;

  /// Shows a Modal Bottom Sheet to select [ImageSource]
  /// or delete the image if [canDelete] is true
  ///
  /// returns [ImageSource] or the constant [deleteImage]
  /// in case the user tapped on the delete button
  Future<Object?> showSourceSheet({
    required BuildContext context,
    bool canDelete = true,
  }) async {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop(ImageSource.camera);
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Column(
                      children: [
                        Icon(
                          Icons.camera,
                          size: 30,
                        ),
                        SizedBox(height: 3),
                        Text(
                          'من الكاميرا',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop(ImageSource.gallery);
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Column(
                      children: [
                        Icon(
                          Icons.photo_library,
                          size: 30,
                        ),
                        SizedBox(height: 3),
                        Text(
                          'من المعرض',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (canDelete)
              IconButton(
                onPressed: () async {
                  final navigator = Navigator.of(context);
                  final rslt = await showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('هل تريد حذف الصورة؟'),
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

                  if (rslt == true) navigator.pop(deleteImage);
                },
                icon: const Icon(Icons.delete),
                tooltip: 'حذف الصورة',
              ),
          ],
        ),
      ),
    );
  }

  Future<XFile?> pickAndCropImage({
    required BuildContext context,
    required ImageSource source,
    CropAspectRatio aspectRatio = const CropAspectRatio(ratioX: 1, ratioY: 1),
    CropStyle cropStyle = CropStyle.rectangle,
    bool lockAspectRatio = false,
  }) async {
    final primaryColor = Theme.of(context).colorScheme.primary;
    final webUiSettings = WebUiSettings(context: context);

    if (source == ImageSource.camera) {
      final cameraPermission = await Permission.camera.request();

      if (cameraPermission != PermissionStatus.granted &&
          cameraPermission != PermissionStatus.limited) return null;
    }

    final image = await _imagePicker.pickImage(
      source: source,
      requestFullMetadata: false,
    );

    if (image == null) return null;

    final croppedFile = await _imageCropper.cropImage(
      sourcePath: image.path,
      aspectRatio: aspectRatio,
      uiSettings: [
        AndroidUiSettings(
          cropStyle: cropStyle,
          toolbarTitle: 'قص الصورة',
          toolbarColor: primaryColor,
          initAspectRatio: CropAspectRatioPreset.square,
          lockAspectRatio: lockAspectRatio,
        ),
        IOSUiSettings(
          cropStyle: cropStyle,
          aspectRatioLockEnabled: lockAspectRatio,
          resetAspectRatioEnabled: !lockAspectRatio,
          minimumAspectRatio: 1,
          title: 'قص الصورة',
        ),
        webUiSettings,
      ],
    );

    if (croppedFile == null) return null;

    return XFile(croppedFile.path);
  }
}

class _DeleteImage {
  const _DeleteImage();
}
