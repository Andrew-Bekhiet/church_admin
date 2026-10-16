import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ViewableObjectAppBarPhoto extends StatelessWidget {
  final ViewableWithIDAndImage viewable;

  final double height;
  final double blurhashSize;
  final Alignment photoAlign;
  final Color? foregroundColor;
  final bool circleCrop;
  final BorderRadius? borderRadius;
  final Widget? overrideImage;
  final void Function()? onTap;

  const ViewableObjectAppBarPhoto({
    required this.photoAlign,
    required this.borderRadius,
    required this.height,
    required this.blurhashSize,
    required this.viewable,
    required this.foregroundColor,
    required this.circleCrop,
    required this.onTap,
    required this.overrideImage,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Align(
      alignment: photoAlign,
      child: ProgressIndicatorTheme(
        data: themeData.progressIndicatorTheme.copyWith(
          color: themeData.brightness == Brightness.light
              ? themeData.colorScheme.onPrimary
              : themeData.colorScheme.onSurface,
        ),
        child: IconTheme(
          data: IconTheme.of(context).copyWith(color: foregroundColor),
          child: GestureDetector(
            onTap: onTap,
            child: AbsorbPointer(
              absorbing: onTap != null,
              child:
                  overrideImage ??
                  ImageObjectWidget(
                    viewable,
                    size: height,
                    borderRadius: borderRadius,
                    blurhashSize: blurhashSize,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
