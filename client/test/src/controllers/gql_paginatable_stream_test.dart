import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mock_data/mock_data.dart';

void main() {
  test(
    'GQL Paginatable Stream: pagination',
    () async {
      const int pageLimit = 5;

      final expected = List.generate(
        4,
        (i) => List.generate(pageLimit, (_) => mockName()),
      );

      final unit = GQLPaginatableStream<String>(
        subscriptionStreamCallback: (event) {
          return Stream.value([
            if (expected.length != event.offset) ...expected[event.offset],
            'Yes there is more',
          ]);
        },
        limit: pageLimit,
      );

      final foldedExpected = _foldAsPaginated(expected);
      expect(unit.stream, emitsInOrder(foldedExpected));

      await unit.stream.next();

      for (int i = 0; i < expected.length; i++) {
        await unit.loadNextPage();
        await unit.stream.next();
      }

      expect(unit.loadNextPage(), throwsStateError);
    },
  );

  test(
    'GQL Paginatable Stream: search',
    () async {
      final searchController = StreamController<String?>()..add(null);
      addTearDown(searchController.close);

      const int pageLimit = 5;

      final expected = List.generate(
        2,
        (i) => List.generate(pageLimit, (_) => mockName()),
      );

      final unit = GQLPaginatableStream<String>(
        subscriptionStreamCallback: (event) =>
            Stream.value(_mockSearchResults(event, expected)),
        searchQuery: searchController.stream,
        limit: pageLimit,
      );

      final searchString = expected.first.first.substring(0, 2);

      final foldedExpected = _foldAsPaginated(expected);
      expect(
        unit.stream,
        emitsInOrder(
          [
            ...foldedExpected,
            expected.first.where((e) => e.contains(searchString)).toList()
          ],
        ),
      );

      await unit.stream.next();

      for (int i = 0; i < expected.length - 1; i++) {
        await unit.loadNextPage();
        await unit.stream.next();
      }

      searchController.sink.add(searchString);
      await unit.stream.next();
    },
  );
}

List<String> _mockSearchResults(
  GQLPaginatableStreamEvent<String> event,
  List<List<String>> expected,
) {
  if (event.search?.isNotEmpty ?? false) {
    return [
      if (expected.length != event.offset)
        ...expected[event.offset].where((e) => e.contains(event.search!)),
    ];
  } else {
    return [
      if (expected.length != event.offset) ...expected[event.offset],
      'Yes there is more',
    ];
  }
}

List<List<String>> _foldAsPaginated(Iterable<List<String>> expected) {
  return expected.foldIndexed(
    <List<String>>[],
    (index, previous, current) => [
      ...previous,
      if (index > 0)
        previous[index - 1].followedBy(current).toList()
      else
        current,
    ],
  );
}
