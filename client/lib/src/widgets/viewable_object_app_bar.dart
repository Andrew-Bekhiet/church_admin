import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ViewableObjectAppBar extends StatefulWidget {
  const ViewableObjectAppBar({
    required this.viewable,
    required this.foregroundColor,
    required this.appBarMaxHeight,
    required this.duration,
    this.scrollController,
    this.circleCrop = true,
    super.key,
  });

  final Color? foregroundColor;
  final ViewableWithIDAndImage viewable;
  final double appBarMaxHeight;
  final Duration duration;
  final ScrollController? scrollController;
  final bool circleCrop;

  @override
  State<ViewableObjectAppBar> createState() => ViewableObjectAppBarState();
}

class ViewableObjectAppBarState extends State<ViewableObjectAppBar> {
  final _photoAlignTween = AlignmentTween(
    begin: Alignment.center,
    end: Alignment.centerRight,
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
          end: const Alignment(0.2, 0),
        ),
        weight: 1,
      ),
    ],
  );

  final _bgPositionPercentTween = Tween<double>(
    begin: 0.5,
    end: 1,
  ).chain(
    CurveTween(
      curve: const Interval(0.5, 1, curve: Curves.elasticOut),
    ),
  );

  late final _bgColorTween = ColorTween(
    begin: Theme.of(context).scaffoldBackgroundColor,
    end: widget.foregroundColor,
  ).chain(
    CurveTween(
      curve: const Interval(0.5, 1, curve: Curves.elasticOut),
    ),
  );

  late final _textStyleTeen = TextStyleTween(
    begin: Theme.of(context).textTheme.headlineMedium!.copyWith(
          color: Theme.of(context).textTheme.titleLarge!.color,
        ),
    end: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: widget.foregroundColor,
          fontSize: Theme.of(context).textTheme.titleLarge!.fontSize! * 0.8,
        ),
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
    final themeData = Theme.of(context);

    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final animationValue = 1 -
              (constraints.biggest.height - kToolbarHeight) /
                  (widget.appBarMaxHeight - kToolbarHeight);

          return Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: _bgPositionPercentTween.transform(animationValue) *
                    constraints.biggest.height,
                bottom: 0,
                right: 0,
                left: 0,
                child: ColoredBox(
                  color: themeData.scaffoldBackgroundColor,
                ),
              ),
              _AppBarPhoto(
                foregroundColor: widget.foregroundColor,
                viewable: widget.viewable,
                height: constraints.biggest.height,
                photoAlign: _photoAlignTween.lerp(animationValue),
                bgColor: _bgColorTween.transform(animationValue),
                circleCrop: widget.circleCrop,
              ),
              Align(
                alignment: _textAlignTween.transform(animationValue),
                child: Text(
                  widget.viewable.name,
                  overflow: TextOverflow.ellipsis,
                  style: _textStyleTeen.transform(animationValue),
                ),
              )
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
            duration: widget.duration,
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
    required this.bgColor,
    required this.height,
    required this.viewable,
    required this.foregroundColor,
    required this.circleCrop,
  });

  final ViewableWithIDAndImage viewable;

  final double height;
  final Alignment photoAlign;
  final Color? bgColor;
  final Color? foregroundColor;
  final bool circleCrop;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Transform.scale(
      scale: 0.8,
      child: Align(
        alignment: photoAlign,
        child: ProgressIndicatorTheme(
          data: themeData.progressIndicatorTheme.copyWith(
            color: themeData.brightness == Brightness.light
                ? themeData.colorScheme.onPrimary
                : themeData.colorScheme.onSurface,
          ),
          child: IconTheme(
            data: IconTheme.of(context).copyWith(color: foregroundColor),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: bgColor ?? Colors.transparent,
                shape: circleCrop ? BoxShape.circle : BoxShape.rectangle,
                borderRadius: circleCrop
                    ? null
                    : const BorderRadius.all(Radius.circular(10)),
              ),
              child: ImageObjectWidget(viewable, circleCrop: circleCrop),
            ),
          ),
        ),
      ),
    );
  }
}
