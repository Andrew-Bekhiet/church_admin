import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class ViewableObjectList<T extends Viewable> extends StatefulWidget {
  final ScrollController? scrollController;
  final SliverOverlapAbsorberHandle? nestedScrollOverlapHandle;
  final ViewableObjectListController<T> objectsController;
  final ListSelectionCubit? selection;
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
    this.selection,
    this.itemBuilder,
    this.viewableObjectWidgetConfig,
    this.scrollController,
    this.nestedScrollOverlapHandle,
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
      (context, i) => ViewableObjectListIndexedItem<T>(
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
    final list = NotificationListener<ScrollNotification>(
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

          return CustomScrollView(
            scrollCacheExtent: const ScrollCacheExtent.pixels(250),
            controller: widget.scrollController,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              if (widget.nestedScrollOverlapHandle case final handle?)
                SliverOverlapInjector(handle: handle),
              SliverPadding(
                padding: const EdgeInsets.all(2),
                sliver: switch (widget.type) {
                  ViewableObjectListType.grid ||
                  ViewableObjectListType.grid3 => SliverGrid.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: widget.type.columns,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                    ),
                    itemBuilder: itemBuilder,
                    itemCount: items.length + (items.length % 2) + 2,
                  ),

                  ViewableObjectListType.list when widget.itemsExpandable =>
                    SliverList.builder(
                      itemBuilder: itemBuilder,
                      itemCount: items.length + 2,
                    ),

                  ViewableObjectListType.list =>
                    SliverPrototypeExtentList.builder(
                      prototypeItem: HeroMode(
                        enabled: false,
                        child: itemBuilder(context, 0),
                      ),
                      itemBuilder: itemBuilder,
                      itemCount: items.length + 2,
                    ),
                },
              ),
            ],
          );
        },
      ),
    );

    return switch (widget.selection) {
      final selection? => BlocProvider.value(value: selection, child: list),
      null => BlocProvider(create: (_) => ListSelectionCubit(), child: list),
    };
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

typedef ItemBuilder<T extends Viewable> = Widget Function(
  BuildContext context,
  T item,
  ViewableObjectWidgetConfig<T>? config,
);
