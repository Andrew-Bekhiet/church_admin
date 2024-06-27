import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ViewableObjectAppBar extends StatefulWidget {
  const ViewableObjectAppBar({
    required this.viewable,
    required this.foregroundColor,
    required this.backgroundColor,
    required this.appBarMaxHeight,
    this.duration,
    this.scrollController,
    this.circleCrop = true,
    super.key,
  }) : assert(scrollController == null || duration != null);

  final Color? foregroundColor;
  final Color? backgroundColor;
  final ViewableWithIDAndImage viewable;
  final double appBarMaxHeight;
  final Duration? duration;
  final ScrollController? scrollController;
  final bool circleCrop;

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

  final _snapPositions = <double>[0, 0.85, 1];

  @override
  void initState() {
    super.initState();
    widget.scrollController?.position.isScrollingNotifier
        .addListener(_scrollListener);
  }

  @override
  void didUpdateWidget(ViewableObjectAppBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.scrollController != widget.scrollController) {
      oldWidget.scrollController?.position.isScrollingNotifier
          .removeListener(_scrollListener);
      widget.scrollController?.position.isScrollingNotifier
          .addListener(_scrollListener);
    }
  }

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
                height: constraints.biggest.height,
                photoAlign: _photoAlignTween.lerp(animationValue),
                borderRadius: borderRadiusValue,
                circleCrop: widget.circleCrop && animationValue > 0.75,
                blurhashSize: widget.appBarMaxHeight + kToolbarHeight,
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

  Future<void> _scrollListener() async {
    if (widget.scrollController!.position.isScrollingNotifier.value) return;

    final maxScroll = widget.appBarMaxHeight - kToolbarHeight;
    final currentScroll = widget.scrollController!.offset;
    final scrollPercent = currentScroll / maxScroll;

    if (scrollPercent < 1) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final nearestSnap = _snapPositions.reduce(
          (nearest, current) =>
              (current - scrollPercent).abs() < (nearest - scrollPercent).abs()
                  ? current
                  : nearest,
        );
        if (widget.scrollController!.hasClients) {
          widget.scrollController!.animateTo(
            nearestSnap * maxScroll,
            duration: widget.duration!,
            curve: Curves.easeOutExpo,
          );
        }
      });
    }
  }

  @override
  void dispose() {
    widget.scrollController?.position.isScrollingNotifier
        .removeListener(_scrollListener);

    super.dispose();
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
  });

  final ViewableWithIDAndImage viewable;

  final double height;
  final double blurhashSize;
  final Alignment photoAlign;
  final Color? foregroundColor;
  final bool circleCrop;
  final BorderRadius? borderRadius;

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
          child: ImageObjectWidget(
            viewable,
            circleCrop: circleCrop,
            size: height,
            borderRadius: borderRadius,
            blurhashSize: blurhashSize,
          ),
        ),
      ),
    );
  }
}
