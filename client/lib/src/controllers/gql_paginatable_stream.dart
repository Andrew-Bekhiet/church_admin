import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';
import 'package:rxdart_ext/rxdart_ext.dart';
import 'package:tuple/tuple.dart';

class GQLPaginatableStream<T> extends DelegatingPaginatableStream<T> {
  @visibleForTesting
  static DelegatingStreamResult<T> clampResults<T>(
    String? lastSearch,
    String? search,
    DelegatingPaginatableStream<T> instance,
    List<T> result,
  ) {
    final List<T> sublist =
        result.sublist(0, min(instance.limit, result.length));
    final current = instance.currentValueOrNull ?? <T>[];
    final start = instance.currentOffset * instance.limit;
    final int end = start + min(instance.limit, current.length);

    return lastSearch == search
        ? DelegatingStreamResult(
            result: start < current.length
                ? (current
                  ..replaceRange(start, min(end, current.length), sublist))
                : (current..addAll(sublist)),
            canPaginateForward: result.length >= instance.limit,
          )
        : DelegatingStreamResult(
            result: sublist,
            canPaginateForward: result.length >= instance.limit,
          );
  }

  GQLPaginatableStream({
    required this.subscriptionStreamCallback,
    this.searchQuery,
    super.isLogging,
    super.limit,
  }) : super(
          streamDelegate: (_, __) => const Stream.empty(),
        );

  final Stream<String?>? searchQuery;

  @protected
  final Stream<QueryResult<Iterable<T>>> Function(
    GQLPaginatableStreamEvent<T>,
  ) subscriptionStreamCallback;

  String? lastSearch;

  @override
  OnQuery<T> get streamDelegate => (instance, offsetStream) {
        return Rx.combineLatest2<int, String?, Tuple2<int, String?>>(
          offsetStream,
          _transformSearchQuery(),
          Tuple2.new,
        ).switchMap(_mapEvents(instance as GQLPaginatableStream<T>));
      };

  Stream<DelegatingStreamResult<T>> Function(Tuple2<int, String?> event)
      _mapEvents(
    GQLPaginatableStream<T> instance,
  ) =>
          (event) {
            final offset = event.item1;
            final search = event.item2;

            if (search != null &&
                search.isNotEmpty &&
                lastSearch != search &&
                offset != 0) {
              return _loadFirstPage();
            }

            final resultEvent = GQLPaginatableStreamEvent(
              instance: instance,
              offset: offset,
              search: search,
              lastSearch: lastSearch,
            );

            return subscriptionStreamCallback(resultEvent)
                .map(exceptionsMiddleware)
                .map(
                  (event) => clampResults(
                    lastSearch,
                    search,
                    instance,
                    event.parsedData!.toList(),
                  ),
                )
                .map(_setLastSearch(search));
          };

  Stream<String?> _transformSearchQuery() {
    return (searchQuery ?? Stream.value(null)).startWith(null).distinct(
          (p, n) => p == n || (n == '' && p == null) || (p == '' && n == null),
        );
  }

  DelegatingStreamResult<T> Function(DelegatingStreamResult<T> event)
      _setLastSearch(String? search) {
    return (event) {
      lastSearch = search;
      return event;
    };
  }

  Stream<DelegatingStreamResult<T>> _loadFirstPage() async* {
    await loadPage(0);
  }
}

class GQLPaginatableStreamEvent<T> {
  final String? search;
  final String? lastSearch;
  final int offset;
  final GQLPaginatableStream<T> instance;

  GQLPaginatableStreamEvent({
    required this.instance,
    required this.offset,
    this.search,
    this.lastSearch,
  });
}
