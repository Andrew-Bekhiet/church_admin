// ViewableObjectList is a widget that displays a list of ViewableObjects from a PaginatableStream
import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:visibility_detector/visibility_detector.dart';

enum ViewableObjectListType {
  list(columns: 0),
  grid(columns: 2),
  grid3(columns: 3);

  final int columns;

  const ViewableObjectListType({
    required this.columns,
  });
}

class ViewableObjectList<T extends Viewable> extends StatefulWidget {
  const ViewableObjectList({
    required this.objectsController,
    this.type = ViewableObjectListType.list,
    this.itemBuilder,
    this.viewableObjectWidgetConfig,
    this.scrollController,
    this.itemsExpandable = false,
    this.addSeparator = true,
    super.key,
  });

  final ScrollController? scrollController;
  final ViewableObjectListController<T> objectsController;
  final ItemBuilder<T>? itemBuilder;
  final ViewableObjectWidgetConfig<T>? viewableObjectWidgetConfig;
  final bool itemsExpandable;
  final bool addSeparator;
  final ViewableObjectListType type;

  @override
  State<ViewableObjectList> createState() => _ViewableObjectListState<T>();
}

class _ViewableObjectListState<T extends Viewable>
    extends State<ViewableObjectList<T>> {
  ScrollController? _ownScrollController;
  ScrollController? _scrollController;

  ViewableObjectListController<T> get objectsController =>
      widget.objectsController;

  @override
  void initState() {
    super.initState();

    _listenToScrollController();
  }

  @override
  void didUpdateWidget(covariant ViewableObjectList<T> oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.scrollController == widget.scrollController) return;

    _scrollController?.removeListener(_scrollListener);
    _ownScrollController?.dispose();
    _ownScrollController = null;

    _listenToScrollController();
  }

  void _listenToScrollController() {
    _scrollController =
        widget.scrollController ?? (_ownScrollController = ScrollController());

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      _scrollController?.addListener(_scrollListener);
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<T>>(
      initialData: objectsController.currentFilteredObjectsOrNull,
      stream: objectsController.filteredObjectsStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorWidget.builder(
            FlutterErrorDetails(exception: snapshot.error!),
          );
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final items = snapshot.requireData;

        if (items.isEmpty && !objectsController.isLoading) {
          return const Center(child: Text('لا يوجد بيانات'));
        } else if (items.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        //ignore: avoid-unused-parameters
        Widget itemBuilder(BuildContext context, int i) {
          if (i >= items.length) {
            return StreamBuilder(
              stream: objectsController.onLoadingChanged,
              builder: (context, state) =>
                  state.hasData &&
                      state.requireData &&
                      (widget.type != ViewableObjectListType.list ||
                          i == items.length)
                  ? const Center(child: CircularProgressIndicator())
                  : const SizedBox(height: 120),
            );
          }

          return VisibilityDetector(
            key: ValueKey(items[i]),
            onVisibilityChanged: _onVisibilityChanged(i),
            child: ViewableObjectListItem(
              item: items[i],
              selectionController: objectsController.selectionController,
              itemBuilder: widget.itemBuilder,
              viewableObjectWidgetConfig: widget.viewableObjectWidgetConfig,
              addSeparator:
                  widget.addSeparator &&
                  i < items.length - 1 &&
                  widget.type == ViewableObjectListType.list,
            ),
          );
        }

        if (widget.type == ViewableObjectListType.grid ||
            widget.type == ViewableObjectListType.grid3) {
          return GridView.builder(
            scrollCacheExtent: const ScrollCacheExtent.pixels(250),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: widget.type.columns,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            padding: const EdgeInsets.all(2),
            controller: _scrollController,
            itemBuilder: itemBuilder,
            itemCount: items.length + (items.length % 2) + 2,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          );
        } else {
          return ListView.builder(
            scrollCacheExtent: const ScrollCacheExtent.pixels(250),
            padding: const EdgeInsets.all(2),
            controller: _scrollController,
            itemBuilder: itemBuilder,
            itemCount: items.length + 2,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            prototypeItem: !widget.itemsExpandable
                // ignore: avoid-returning-widgets
                ? HeroMode(enabled: false, child: itemBuilder(context, 0))
                : null,
          );
        }
      },
    );
  }

  void _scrollListener() {
    final position = _scrollController!.position;

    if (!position.atEdge && !position.outOfRange) return;

    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        if (position.pixels >= position.maxScrollExtent &&
            objectsController.hasMore) {
          await objectsController.listenToNextPage();
        }
      },
    );
  }

  void Function(VisibilityInfo) _onVisibilityChanged(int i) => (info) {
    if (info.visibleFraction >= 0.8) {
      unawaited(objectsController.itemVisibleAt(i));
    }
  };

  @override
  Future<void> dispose() async {
    _scrollController?.removeListener(_scrollListener);

    _ownScrollController?.dispose();

    super.dispose();
  }
}

typedef ItemBuilder<T extends Viewable> =
    Widget Function(
      BuildContext context,
      T item,
      ViewableObjectWidgetConfig<T>? config,
    );

typedef OffsetFromIndexFunction =
    int Function(
      int limit,
      int itemIndex,
    );
