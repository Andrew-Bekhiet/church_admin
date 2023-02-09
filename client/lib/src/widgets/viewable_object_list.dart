// ViewableObjectList is a widget that displays a list of ViewableObjects from a PaginatableStream
import 'dart:async';
import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart'
    show
        MaxValueLength,
        PaginatableStreamBase,
        Viewable,
        defaultOffsetFromIndex;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ViewableObjectList<T extends Viewable> extends StatefulWidget {
  const ViewableObjectList({
    required this.objectsController,
    this.itemBuilder,
    this.viewableObjectWidgetConfig,
    this.scrollController,
    this.offsetFromIndex = defaultOffsetFromIndex,
    this.itemsExpandable = false,
    super.key,
  });

  final OffsetFromIndexFunction offsetFromIndex;
  final ScrollController? scrollController;
  final ViewableObjectListController<T> objectsController;
  final ItemBuilder<T>? itemBuilder;
  final ViewableObjectWidgetConfig<T>? viewableObjectWidgetConfig;
  final bool itemsExpandable;

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

        return ListView.builder(
          controller: scrollController,
          itemBuilder: (context, i) {
            if (i == items.length) {
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
              ),
            );
          },
          cacheExtent: 250,
          itemCount: items.length + 1,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          // ignore: avoid-returning-widgets
          prototypeItem: widget.itemsExpandable
              ? null
              : HeroMode(
                  enabled: false,
                  child: ViewableObjectListItem(
                    item: items.first,
                    selectionController: objectsController.selectionController,
                    itemBuilder: widget.itemBuilder,
                    viewableObjectWidgetConfig:
                        widget.viewableObjectWidgetConfig,
                  ),
                ),
        );
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

class ViewableObjectListItem<T extends Viewable> extends StatelessWidget {
  ViewableObjectListItem({
    required this.item,
    required this.selectionController,
    this.itemBuilder,
    this.viewableObjectWidgetConfig,
    CAViewableObjectService? viewableObjectService,
    super.key,
  }) : viewableObjectService =
            viewableObjectService ?? GetIt.I<CAViewableObjectService>();

  final T item;
  final SelectionController<T> selectionController;
  final ItemBuilder<T>? itemBuilder;
  final ViewableObjectWidgetConfig<T>? viewableObjectWidgetConfig;
  final CAViewableObjectService viewableObjectService;

  late final ViewableObjectWidgetConfig<T> effectiveConfig =
      (viewableObjectWidgetConfig ?? ViewableObjectWidgetConfig<T>()).copyWith(
    onLongPress: _onLongPress,
    onTap: _onTap,
  );

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool?>(
      initialData: selectionController.currentValue?.contains(item),
      stream:
          selectionController.stream.map((s) => s?.contains(item)).distinct(),
      builder: (context, selectionData) {
        final config = effectiveConfig.copyWith(
          selected: selectionData.data,
          trailing: selectionData.data != null
              ? Checkbox(
                  value: selectionData.data,
                  onChanged: (v) => _onSelect(!v!),
                )
              : null,
        );

        return itemBuilder?.call(
              context,
              item,
              config,
            ) ??
            ViewableObjectWidget(
              item,
              config: config,
            );
      },
    );
  }

  void _onSelect(bool isSelected) => isSelected
      ? selectionController.deselect(item)
      : selectionController.select(item);

  void _onTap(T item) {
    if (!selectionController.isSelecting) {
      final effectiveOnTap = viewableObjectWidgetConfig?.onTap ??
          ViewableObjectWidgetConfig<T>().onTap ??
          viewableObjectService.onTap;

      effectiveOnTap(item);
    } else {
      _onSelect(selectionController.isSelected(item));
    }
  }

  void _onLongPress(T item) {
    if (!selectionController.isSelecting) {
      selectionController.toggle(item);
    } else {
      selectionController.clear();
    }
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
