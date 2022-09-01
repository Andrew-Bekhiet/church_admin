import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

class GQLPaginatableStream<T extends ViewableWithID>
    extends DelegatingPaginatableStream<T> {
  GQLPaginatableStream({
    required Stream<QueryResult<Iterable<T>>> Function(
      GQLPaginatableStreamEvent<T>,
    )
        subscriptionStream,
    Stream<String?>? searchQuery,
    super.limit,
  }) : super(
          streamDelegate: (instance, offsetStream) {
            String? lastSearch;

            return Rx.combineLatest2<int, String?, Tuple2<int, String?>>(
              offsetStream,
              (searchQuery ?? Stream.value(null)).distinct(
                (p, n) =>
                    p == n || (n == '' && p == null) || (p == '' && n == null),
              ),
              Tuple2.new,
            ).switchMap(
              (event) {
                final offset = event.item1;
                final search = event.item2;

                if (search != null &&
                    search.isNotEmpty &&
                    lastSearch != search &&
                    offset != 0) {
                  instance.loadPage(0);
                  return Stream.value(DelegatingStreamResult<T>(result: []));
                }

                return subscriptionStream(
                  GQLPaginatableStreamEvent(
                    instance: instance as GQLPaginatableStream<T>,
                    offset: offset,
                    search: search,
                    lastSearch: lastSearch,
                  ),
                )
                    .map(exceptionsMiddleware)
                    .map(
                      (event) => clampResults(
                        lastSearch,
                        search,
                        offset,
                        instance,
                        event.parsedData!.toList(),
                      ),
                    )
                    .map((event) {
                  lastSearch = search;
                  return event;
                });
              },
            );
          },
        );
}

class GQLPaginatableStreamEvent<T extends ViewableWithID> {
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
