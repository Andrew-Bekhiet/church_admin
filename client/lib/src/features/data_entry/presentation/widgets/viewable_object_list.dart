// ViewableObjectList is a widget that displays a list of ViewableObjects from a PaginatableStream
import 'dart:async';
import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
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
    this.offsetFromIndex = defaultOffsetFromIndex,
    this.itemsExpandable = false,
    this.addSeparator = true,
    super.key,
  });

  final OffsetFromIndexFunction offsetFromIndex;
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
  late ScrollController scrollController;

  ViewableObjectListController<T> get objectsController =>
      widget.objectsController;

  PaginatableStreamBase<T> get objectsPaginatableStream =>
      widget.objectsController.objectsPaginatableStream;

  final BehaviorSubject<int> _pageLoaderThrottler = BehaviorSubject();
  late final StreamSubscription<int> _pageLoaderThrottlerListener;

  @override
  void initState() {
    super.initState();

    scrollController = widget.scrollController ?? ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.addListener(_scrollListener);
    });

    _pageLoaderThrottlerListener = _pageLoaderThrottler
        .bufferTime(const Duration(seconds: 1, milliseconds: 450))
        .map(
          (b) => b
              .sublist(b.length - min(b.length, 51), b.length)
              .groupListsBy((element) => element)
              .maxOrNull,
        )
        .whereType<int>()
        .where(
          (o) =>
              objectsPaginatableStream.currentOffset != o &&
              !objectsPaginatableStream.isLoading,
        )
        .listen(objectsPaginatableStream.loadPage);
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

        if (items.isEmpty && !objectsPaginatableStream.isLoading) {
          return const Center(child: Text('لا يوجد بيانات'));
        } else if (items.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        //ignore: avoid-unused-parameters
        Widget itemBuilder(BuildContext context, int i) {
          if (i >= items.length) {
            return StreamBuilder(
              stream: objectsPaginatableStream.onLoadingChanged,
              builder: (context, state) => state.hasData && state.requireData
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
              addSeparator: widget.addSeparator &&
                  i < items.length - 1 &&
                  widget.type == ViewableObjectListType.list,
            ),
          );
        }

        if (widget.type == ViewableObjectListType.grid ||
            widget.type == ViewableObjectListType.grid3) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: widget.type.columns,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            padding: const EdgeInsets.all(2),
            controller: scrollController,
            itemBuilder: itemBuilder,
            cacheExtent: 250,
            itemCount: items.length + (items.length % 2) + 2,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          );
        } else {
          return ListView.builder(
            padding: const EdgeInsets.all(2),
            controller: scrollController,
            itemBuilder: itemBuilder,
            cacheExtent: 250,
            itemCount: items.length + 1,
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
    final position = scrollController.position;

    if (!position.atEdge && !position.outOfRange) return;

    final paginatableStream = objectsPaginatableStream;

    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        if (position.pixels >= position.maxScrollExtent &&
            paginatableStream.canPaginateForward) {
          await objectsPaginatableStream.loadNextPage();
        } else if (position.pixels <= position.minScrollExtent &&
            paginatableStream.canPaginateBackward) {
          await objectsPaginatableStream.loadPreviousPage();
        }
      },
    );
  }

  void Function(VisibilityInfo) _onVisibilityChanged(int i) => (info) {
        if (info.visibleFraction >= 0.8) {
          _pageLoaderThrottler.add(
            widget.offsetFromIndex(objectsPaginatableStream.limit, i),
          );
        }
      };

  @override
  Future<void> dispose() async {
    scrollController.removeListener(_scrollListener);

    if (widget.scrollController == null) scrollController.dispose();

    super.dispose();

    await _pageLoaderThrottlerListener.cancel();
    await _pageLoaderThrottler.close();
  }
}

typedef ItemBuilder<T extends Viewable> = Widget Function(
  BuildContext context,
  T item,
  ViewableObjectWidgetConfig<T>? config,
);

typedef OffsetFromIndexFunction = int Function(
  int limit,
  int itemIndex,
);
