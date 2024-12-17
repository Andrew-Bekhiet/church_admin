// ignore_for_file: avoid-returning-widgets
import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

export 'view_object_details/view_area.dart';
export 'view_object_details/view_class.dart';
export 'view_object_details/view_family.dart';
export 'view_object_details/view_group.dart';
export 'view_object_details/view_person.dart';
export 'view_object_details/view_service.dart';
export 'view_object_details/view_store.dart';
export 'view_object_details/view_street.dart';
export 'view_object_details/view_user.dart';

typedef WidgetBuilderWithObject<T> = WBuilderWithObject<T, Widget>;

typedef WBuilderWithObject<T, W extends Widget> = W Function(
  BuildContext context,
  T object,
);

class ViewObjectDetails<T extends ViewableWithIDAndImage>
    extends StatefulWidget {
  static const snapPositions = <double>[0, 0.85, 1];
  static const snapDuration = Duration(milliseconds: 300);

  final T? object;
  final String objectId;

  final Stream<T?> objectStream;
  final List<Type> childrenTypes;
  final Map<Type, Widget Function(BuildContext)> tabsContentBuilders;
  final Widget Function(BuildContext, TabController, T)?
      floatingActionButtonBuilder;

  final WidgetBuilder notFoundBuilder;
  final WidgetBuilderWithObject<T> editButtonBuilder;
  final WidgetBuilderWithObject<T> detailsBuilder;
  final SliverPersistentHeaderDelegate? sliverPersistentHeaderDelegate;

  const ViewObjectDetails({
    required this.objectId,
    required this.objectStream,
    required this.notFoundBuilder,
    required this.editButtonBuilder,
    required this.detailsBuilder,
    this.childrenTypes = const [],
    this.sliverPersistentHeaderDelegate,
    this.tabsContentBuilders = const {},
    this.floatingActionButtonBuilder,
    this.object,
    super.key,
  })  : assert(
          childrenTypes.length == 0 || sliverPersistentHeaderDelegate != null,
        ),
        assert(childrenTypes.length == tabsContentBuilders.length);

  @override
  State<ViewObjectDetails<T>> createState() => _ViewObjectDetailsState<T>();
}

class _ViewObjectDetailsState<T extends ViewableWithIDAndImage>
    extends State<ViewObjectDetails<T>> {
  late final ScrollController _scrollController = TrackingScrollController();
  late final double appBarMaxHeight = MediaQuery.sizeOf(context).width;
  Timer? _scrollTimer;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return StreamBuilder<T?>(
      initialData: widget.object,
      stream: widget.objectStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: theme.scaffoldBackgroundColor,
            ),
            body: ErrorWidget.builder(
              FlutterErrorDetails(exception: snapshot.error!),
            ),
          );
        } else if (!snapshot.hasData &&
            snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: theme.scaffoldBackgroundColor,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (!snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: theme.scaffoldBackgroundColor,
            ),
            body: widget.notFoundBuilder(context),
          );
        }

        final objectData = snapshot.requireData!;

        final slivers = [
          SliverAppBar(
            stretch: true,
            pinned: true,
            expandedHeight: appBarMaxHeight,
            actions: [
              if (snapshot.connectionState != ConnectionState.active)
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(child: CircularProgressIndicator()),
                )
              else if (AuthService.I.currentUser!.canEditObject(objectData))
                widget.editButtonBuilder(context, objectData),
            ],
            flexibleSpace: ViewableObjectAppBar(
              circleCrop: objectData is Person || objectData is User,
              viewable: widget.object?.hasImage ?? false
                  ? widget.object!
                  : objectData,
              appBarMaxHeight: appBarMaxHeight,
            ),
          ),
          widget.detailsBuilder(context, objectData),
          if (widget.sliverPersistentHeaderDelegate != null)
            SliverPersistentHeader(
              pinned: true,
              delegate: widget.sliverPersistentHeaderDelegate!,
            ),
        ];

        final body = widget.childrenTypes.isEmpty
            ? CustomScrollView(
                controller: _scrollController,
                slivers: slivers,
              )
            : NestedScrollView(
                controller: _scrollController,
                headerSliverBuilder: (context, isBodyScrolled) => slivers,
                body: TabBarView(
                  key: ValueKey(objectData.id),
                  children: widget.childrenTypes
                      .mapIndexed(
                        (i, type) => LazyTabPage(
                          index: i,
                          builder: widget.tabsContentBuilders[type]!,
                        ),
                      )
                      .toList(),
                ),
              );

        final newTheme =
            ThemingService.getDefault(seedOverride: objectData.color);

        return Theme(
          data: newTheme,
          child: DefaultTabController(
            length: widget.childrenTypes.length,
            child: Scaffold(
              body: NotificationListener<ScrollEndNotification>(
                onNotification: _onScrollEnd,
                child: body,
              ),
              floatingActionButton: widget.floatingActionButtonBuilder != null
                  ? Builder(
                      builder: (context) {
                        return widget.floatingActionButtonBuilder!(
                          context,
                          DefaultTabController.of(context),
                          objectData,
                        );
                      },
                    )
                  : null,
            ),
          ),
        );
      },
    );
  }

  bool _onScrollEnd(ScrollEndNotification _) {
    if (!_scrollController.hasClients) return false;

    _scrollTimer?.cancel();
    _scrollTimer = Timer(
      ViewObjectDetails.snapDuration,
      () {
        if (!_scrollController.hasClients ||
            _scrollController.position.isScrollingNotifier.value) {
          return;
        }

        final maxScroll = appBarMaxHeight - kToolbarHeight;
        final currentScroll = _scrollController.offset;
        final scrollPercent = currentScroll / maxScroll;

        final nearestSnap = ViewObjectDetails.snapPositions.reduce(
          (nearest, element) =>
              (element - scrollPercent).abs() < (nearest - scrollPercent).abs()
                  ? element
                  : nearest,
        );

        if (scrollPercent < 1 && scrollPercent != nearestSnap) {
          Future.microtask(() {
            if (_scrollController.hasClients && scrollPercent != nearestSnap) {
              _scrollController.animateTo(
                nearestSnap * maxScroll,
                duration: ViewObjectDetails.snapDuration,
                curve: Curves.easeOutExpo,
              );
            }
          });
        }
      },
    );

    return false;
  }

  @override
  void dispose() {
    super.dispose();
    _scrollTimer?.cancel();
  }
}
