import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Delegating Paginatable Stream: streamDelegate',
    () async {
      final controller = StreamController<DelegatingStreamResult<Object>>();
      addTearDown(controller.close);

      DelegatingPaginatableStream<Object>? emittedInstance;
      Stream<int>? emittedOffset;

      final unit = DelegatingPaginatableStream<Object>(
        streamDelegate: (instance, offset) {
          emittedInstance = instance;
          emittedOffset = offset;

          return controller.stream;
        },
      );
      addTearDown(unit.dispose);

      final expected = DelegatingStreamResult(
        result: [Object()],
        canPaginateBackward: true,
        canPaginateForward: true,
      );

      expect(emittedInstance, unit);
      expect(emittedOffset, emits(unit.currentOffset));
      expect(unit.stream, emits(expected.result));

      expect(unit.canPaginateBackward, isFalse);
      expect(unit.canPaginateForward, isFalse);
      expect(unit.isLoading, isTrue);

      controller.add(expected);

      await unit.stream.next();

      expect(unit.canPaginateBackward, expected.canPaginateBackward);
      expect(unit.canPaginateForward, expected.canPaginateForward);
      expect(unit.isLoading, isFalse);
    },
  );

  test(
    'Delegating Paginatable Stream: throws when cant paginate',
    () async {
      final result = ['Items...'];

      final unit = DelegatingPaginatableStream<Object>(
        streamDelegate: (instance, offset) {
          return Stream.value(
            DelegatingStreamResult<Object>(
              result: result,
              canPaginateForward: false,
              canPaginateBackward: false,
            ),
          );
        },
      );
      addTearDown(unit.dispose);

      expect(
        unit.stream,
        emitsInOrder([result]),
      );

      await unit.stream.next();

      expect(unit.loadNextPage(), throwsStateError);
      expect(unit.loadPreviousPage(), throwsStateError);
    },
  );

  test(
    'Delegating Paginatable Stream: basic pagination',
    () async {
      // Results here are arbitrary and can be anything
      // We only check that offset delegation works correctly
      final expected = [
        DelegatingStreamResult<Object>(
          result: [0],
          canPaginateForward: true,
          canPaginateBackward: false,
        ),
        DelegatingStreamResult<Object>(
          result: [
            'something',
            {2},
          ],
          canPaginateForward: true,
          canPaginateBackward: true,
        ),
        DelegatingStreamResult<Object>(
          result: [3.5, {}, []],
          canPaginateForward: false,
          canPaginateBackward: true,
        ),
      ];

      final unit = DelegatingPaginatableStream<Object>(
        streamDelegate: (instance, offset) {
          return offset.map((o) => expected[o]);
        },
      );
      addTearDown(unit.dispose);

      final mappedResults = expected.map((e) => e.result).toList();
      expect(
        unit.stream,
        emitsInOrder(
          mappedResults.followedBy(
            mappedResults.reversed.toList().sublist(1),
          ),
        ),
      );

      await unit.stream.next();
      await unit.loadNextPage();
      await unit.loadNextPage();
      await unit.loadPreviousPage();
      await unit.loadPreviousPage();
    },
  );

  test(
    'Delegating Paginatable Stream: paginating by offset',
    () async {
      // Results here are arbitrary and can be anything
      // We only check that offset delegation works correctly
      final expected = [
        DelegatingStreamResult<Object>(
          result: [0],
          canPaginateForward: true,
          canPaginateBackward: false,
        ),
        DelegatingStreamResult<Object>(
          result: [
            'something',
            {2},
          ],
          canPaginateForward: true,
          canPaginateBackward: true,
        ),
        DelegatingStreamResult<Object>(
          result: [3.5, {}, []],
          canPaginateForward: false,
          canPaginateBackward: true,
        ),
        DelegatingStreamResult<Object>(
          result: [
            'AAA0.5',
            {'': 'ss'},
            [],
          ],
          canPaginateForward: false,
          canPaginateBackward: true,
        ),
      ];

      final unit = DelegatingPaginatableStream<Object>(
        streamDelegate: (instance, offset) {
          return offset.map((o) => expected[o]);
        },
      );
      addTearDown(unit.dispose);

      final arbitraryNavigation = [0, 1, 2, 3, 0, 3]..shuffle();

      final mappedResults = expected.map((e) => e.result).toList();
      expect(
        unit.stream,
        emitsInOrder([
          mappedResults[0],
          ...arbitraryNavigation.map((o) => mappedResults[o]),
        ]),
      );

      await unit.stream.next();
      for (final offset in arbitraryNavigation) {
        final loadPageFuture = unit.loadPage(offset);

        expect(unit.isLoading, isTrue);
        expect(unit.canPaginateBackward, isFalse);
        expect(unit.canPaginateForward, isFalse);

        await loadPageFuture;

        expect(unit.isLoading, isFalse);
        expect(unit.canPaginateBackward, expected[offset].canPaginateBackward);
        expect(unit.canPaginateForward, expected[offset].canPaginateForward);
      }
    },
  );
}
