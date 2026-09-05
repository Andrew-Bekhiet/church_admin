import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ViewableObjectList<T extends Viewable> extends StatefulWidget {
  final ScrollController? scrollController;
  final ViewableObjectListController<T> objectsController;
  final ItemBuilder<T>? itemBuilder;
  final ViewableObjectWidgetConfig<T>? viewableObjectWidgetConfig;
  final bool itemsExpandable;
  final bool addSeparator;
  final ViewableObjectListType type;

  const ViewableObjectList({
    required this.objectsController,
    this.type = ViewableObjectListType.list,
    this.itemsExpandable = false,
    this.addSeparator = true,
    this.itemBuilder,
    this.viewableObjectWidgetConfig,
    this.scrollController,
    super.key,
  });

  @override
  State<ViewableObjectList> createState() => _ViewableObjectListState<T>();
}

enum ViewableObjectListType {
  list(columns: 0),
  grid(columns: 2),
  grid3(columns: 3);

  final int columns;

  const ViewableObjectListType({
    required this.columns,
  });
}

class _ViewableObjectListState<T extends Viewable>
    extends State<ViewableObjectList<T>> {
  static const _loadNextPageThreshold = 0.9;

  ViewableObjectListController<T> get objectsController =>
      widget.objectsController;

  Widget Function(BuildContext, int) _itemBuilderFor(List<T> items) =>
      (context, i) => _ListItem<T>(
        index: i,
        items: items,
        objectsController: objectsController,
        type: widget.type,
        addSeparator: widget.addSeparator,
        itemBuilder: widget.itemBuilder,
        viewableObjectWidgetConfig: widget.viewableObjectWidgetConfig,
      );

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: _maybePaginateForward,
      child: StreamBuilder<List<T>>(
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

          final itemBuilder = _itemBuilderFor(items);

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
              controller: widget.scrollController,
              itemBuilder: itemBuilder,
              itemCount: items.length + (items.length % 2) + 2,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            );
          } else {
            return ListView.builder(
              scrollCacheExtent: const ScrollCacheExtent.pixels(250),
              padding: const EdgeInsets.all(2),
              controller: widget.scrollController,
              itemBuilder: itemBuilder,
              itemCount: items.length + 2,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              prototypeItem: !widget.itemsExpandable
                  ? HeroMode(enabled: false, child: itemBuilder(context, 0))
                  : null,
            );
          }
        },
      ),
    );
  }

  bool _maybePaginateForward(ScrollNotification notification) {
    final metrics = notification.metrics;

    final middleItemScrollExtent =
        metrics.pixels + metrics.viewportDimension / 2;
    final middleItemScrollFraction =
        (middleItemScrollExtent / metrics.extentTotal).clamp(
          0.0,
          1.0,
        );

    final isNearOrAtBottomEdge =
        metrics.pixels > metrics.minScrollExtent &&
        (metrics.atEdge ||
            metrics.outOfRange ||
            middleItemScrollFraction >= _loadNextPageThreshold);

    final shouldLoadNextPage =
        notification is ScrollEndNotification &&
        isNearOrAtBottomEdge &&
        objectsController.hasMore;

    if (shouldLoadNextPage) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => unawaited(objectsController.listenToNextPage()),
      );

      return false;
    }

    final totalItemsCount =
        objectsController.currentFilteredObjectsOrNull?.length;
    if (totalItemsCount == null || totalItemsCount == 0) return false;

    final middleVisibleItemIndex =
        (middleItemScrollFraction * totalItemsCount).floor() - 1;
    unawaited(
      objectsController.itemVisibleAt(
        middleVisibleItemIndex.clamp(0, totalItemsCount - 1),
      ),
    );

    return false;
  }
}

class _ListItem<T extends Viewable> extends StatelessWidget {
  final int index;
  final List<T> items;
  final ViewableObjectListController<T> objectsController;
  final ViewableObjectListType type;
  final bool addSeparator;
  final ItemBuilder<T>? itemBuilder;
  final ViewableObjectWidgetConfig<T>? viewableObjectWidgetConfig;

  const _ListItem({
    required this.index,
    required this.items,
    required this.objectsController,
    required this.type,
    required this.addSeparator,
    this.itemBuilder,
    this.viewableObjectWidgetConfig,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (index >= items.length) {
      return StreamBuilder(
        stream: objectsController.onLoadingChanged,
        builder: (context, state) =>
            state.hasData &&
                state.requireData &&
                (type != ViewableObjectListType.list || index == items.length)
            ? const Center(child: CircularProgressIndicator())
            : const SizedBox(height: 120),
      );
    }

    return ViewableObjectListItem(
      key: ValueKey(items[index]),
      item: items[index],
      selectionController: objectsController.selectionController,
      itemBuilder: itemBuilder,
      viewableObjectWidgetConfig: viewableObjectWidgetConfig,
      addSeparator:
          addSeparator &&
          index < items.length - 1 &&
          type == ViewableObjectListType.list,
    );
  }
}

typedef ItemBuilder<T extends Viewable> =
    Widget Function(
      BuildContext context,
      T item,
      ViewableObjectWidgetConfig<T>? config,
    );
