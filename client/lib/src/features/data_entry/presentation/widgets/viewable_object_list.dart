// ViewableObjectList is a widget that displays a list of ViewableObjects from a PaginatableStream
import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:visibility_detector/visibility_detector.dart';

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
  ScrollController? _ownScrollController;
  ScrollController? _scrollController;

  void Function(VisibilityInfo) _onVisibilityChanged(int i) => (info) {
    if (info.visibleFraction < 0.8) return;

    unawaited(objectsController.itemVisibleAt(i));
  };

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
        onVisibilityChanged: _onVisibilityChanged(i),
      );

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
                ? HeroMode(enabled: false, child: itemBuilder(context, 0))
                : null,
          );
        }
      },
    );
  }

  @override
  Future<void> dispose() async {
    _scrollController?.removeListener(_scrollListener);

    _ownScrollController?.dispose();

    super.dispose();
  }

  void _listenToScrollController() {
    _scrollController =
        widget.scrollController ?? (_ownScrollController = ScrollController());

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      _scrollController?.addListener(_scrollListener);
    });
  }

  void _scrollListener() {
    final position = _scrollController!.position;

    if (!position.atEdge && !position.outOfRange) return;

    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        if (position.pixels < position.maxScrollExtent ||
            !objectsController.hasMore) {
          return;
        }

        await objectsController.listenToNextPage();
      },
    );
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
  final void Function(VisibilityInfo) onVisibilityChanged;

  const _ListItem({
    required this.index,
    required this.items,
    required this.objectsController,
    required this.type,
    required this.addSeparator,
    required this.onVisibilityChanged,
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

    return VisibilityDetector(
      key: ValueKey(items[index]),
      onVisibilityChanged: onVisibilityChanged,
      child: ViewableObjectListItem(
        item: items[index],
        selectionController: objectsController.selectionController,
        itemBuilder: itemBuilder,
        viewableObjectWidgetConfig: viewableObjectWidgetConfig,
        addSeparator:
            addSeparator &&
            index < items.length - 1 &&
            type == ViewableObjectListType.list,
      ),
    );
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
