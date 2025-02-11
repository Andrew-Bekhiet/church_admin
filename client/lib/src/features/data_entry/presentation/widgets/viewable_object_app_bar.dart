import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ViewableObjectAppBar extends StatefulWidget {
  const ViewableObjectAppBar({
    required this.viewable,
    required this.appBarMaxHeight,
    this.foregroundColor,
    this.circleCrop = true,
    this.onTap,
    this.overrideImage,
    super.key,
  });

  final Color? foregroundColor;
  final ViewableWithIDAndImage viewable;
  final double appBarMaxHeight;
  final bool circleCrop;
  final void Function()? onTap;
  final Widget? overrideImage;

  @override
  State<ViewableObjectAppBar> createState() => ViewableObjectAppBarState();
}

class ViewableObjectAppBarState extends State<ViewableObjectAppBar> {
  final _photoAlignTween = AlignmentTween(
    begin: Alignment.center,
    end: const Alignment(0.8, 0),
  );

  final _textAlignTween = TweenSequence(
    [
      TweenSequenceItem(
        tween: AlignmentTween(
          begin: Alignment.bottomCenter,
          end: const Alignment(-0.7, 0),
        ),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: AlignmentTween(
          begin: const Alignment(-0.7, 0),
          end: Alignment.center,
        ),
        weight: 1,
      ),
    ],
  );

  late final _borderRadiusTween = BorderRadiusTween(
    begin: const BorderRadius.all(Radius.circular(10)),
    end: const BorderRadius.all(Radius.circular(90)),
  ).chain(
    CurveTween(
      curve: const Interval(0.25, 1, curve: Curves.easeOutExpo),
    ),
  );

  late final _textStyleTween = TextStyleTween(
    begin: Theme.of(context).textTheme.headlineMedium!.copyWith(
          color: Theme.of(context).textTheme.titleLarge!.color,
        ),
    end: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: widget.foregroundColor,
          fontSize: Theme.of(context).textTheme.titleLarge!.fontSize! * 0.8,
        ),
  );

  late final _foregroundColorTween = ColorTween(
    begin: Theme.of(context).textTheme.titleLarge!.color,
    end:
        widget.foregroundColor ?? Theme.of(context).textTheme.titleLarge!.color,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final animationValue = 1 -
              ((constraints.biggest.height - kToolbarHeight) /
                  (widget.appBarMaxHeight - kToolbarHeight));

          final BorderRadius? borderRadiusValue = _borderRadiusTween
              .transform(widget.circleCrop ? animationValue : 0);

          final Alignment textAlignValue =
              _textAlignTween.transform(animationValue);

          return Stack(
            alignment: Alignment.center,
            children: [
              _AppBarPhoto(
                foregroundColor: _foregroundColorTween.lerp(animationValue),
                viewable: widget.viewable,
                height: 3 * constraints.biggest.height / 5,
                photoAlign: _photoAlignTween.lerp(animationValue),
                borderRadius: borderRadiusValue,
                circleCrop: widget.circleCrop,
                blurhashSize: widget.appBarMaxHeight + kToolbarHeight,
                onTap: widget.onTap,
                overrideImage: widget.overrideImage,
              ),
              Align(
                alignment: textAlignValue,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: animationValue > 0.9
                        ? constraints.biggest.width - kToolbarHeight * 3 - 16
                        : double.infinity,
                  ),
                  child: Text(
                    widget.viewable.name,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    style: _textStyleTween.transform(animationValue),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _AppBarPhoto extends StatelessWidget {
  const _AppBarPhoto({
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

  final ViewableWithIDAndImage viewable;

  final double height;
  final double blurhashSize;
  final Alignment photoAlign;
  final Color? foregroundColor;
  final bool circleCrop;
  final BorderRadius? borderRadius;
  final void Function()? onTap;
  final Widget? overrideImage;

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
              child: overrideImage ??
                  ImageObjectWidget(
                    viewable,
                    // circleCrop: true,
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
