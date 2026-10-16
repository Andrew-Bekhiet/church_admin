import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';
import 'package:universal_io/io.dart';

class PhotoPickerAppBar extends StatelessWidget {
  final ViewableWithIDAndImage object;
  final PhotoChange change;
  final ValueChanged<PhotoChange> onChanged;
  final bool canDelete;
  final bool circleCrop;
  final Color? foregroundColor;

  const PhotoPickerAppBar({
    required this.object,
    required this.change,
    required this.onChanged,
    required this.canDelete,
    required this.circleCrop,
    this.foregroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double appBarMaxHeight = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final photoSize = 4 * constraints.biggest.height / 5;
          final colorScheme = ColorScheme.of(context);

          return ViewableObjectAppBar(
            viewable: object,
            appBarMaxHeight: appBarMaxHeight,
            foregroundColor: foregroundColor,
            circleCrop: circleCrop,
            onTap: () => _changePhoto(context),
            overrideImage: switch ((change, object.hasImage)) {
              (ReplacePhoto(:final photo), _) => ClipPath(
                clipper: ShapeBorderClipper(
                  shape: circleCrop
                      ? const CircleBorder()
                      : const RoundedRectangleBorder(
                          borderRadius: ImageObjectWidget.clipBorderRadius,
                        ),
                  textDirection: Directionality.maybeOf(context),
                ),
                child: Image.file(File(photo.path), height: photoSize),
              ),
              (DeletePhoto(), _) || (KeepPhoto(), false) => DecoratedBox(
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
              (KeepPhoto(), true) => null,
            },
          );
        },
      ),
    );
  }

  Future<void> _changePhoto(BuildContext context) async {
    final source = await ImagePickerService.I.showSourceSheet(
      context: context,
      canDelete: canDelete,
    );

    if (source == null) return;

    if (source == ImagePickerService.deleteImage) {
      onChanged(const DeletePhoto());

      return;
    }

    if (!context.mounted) return;

    final newPhoto = await ImagePickerService.I.pickAndCropImage(
      context: context,
      source: source as ImageSource,
      lockAspectRatio: true,
    );
    if (newPhoto != null) onChanged(ReplacePhoto(newPhoto));
  }
}
