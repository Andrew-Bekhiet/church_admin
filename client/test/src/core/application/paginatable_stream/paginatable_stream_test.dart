import 'dart:async';

import 'package:church_admin/src/core/application/paginatable_stream/paginatable_stream.dart';
import 'package:church_admin/src/core/application/paginatable_stream/paginatable_stream_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  late List<String> testData;
  late PaginatableStreamBase<String> paginatableStream;
  late BehaviorSubject<String?> searchController;

  setUp(() {
    testData = List.generate(100, (index) => 'Item $index');
    searchController = BehaviorSubject<String?>.seeded(null);
  });

  tearDown(() {
    paginatableStream.dispose();
    if (!searchController.isClosed) {
      searchController.close();
    }
  });

  group('PaginatableStream basic functionality', () {
    test('should load first page with correct page size', () async {
      paginatableStream = PaginatableStream.simple(
        pageSize: 10,
        factory: (request) {
          final start = request.pageIndex * request.pageSize;
          final end = start + request.pageSize;
          final slicedData = testData.sublist(
            start,
            end > testData.length ? testData.length : end,
          );

          return Stream.value(
            PaginatableStreamResponse(
              data: slicedData,
              cursor: testData.elementAtOrNull(end),
              totalCount: testData.length,
            ),
          );
        },
      );

      await expectLater(
        paginatableStream,
        emits(equals(testData.sublist(0, 10))),
      );

      expect(paginatableStream.hasMore, isTrue);
      expect(paginatableStream.currentPageIndex, equals(0));
      expect(paginatableStream.currentTotalCount, equals(testData.length));
    });

    test('should load next page when requested', () async {
      paginatableStream = PaginatableStream.simple(
        pageSize: 10,
        factory: (request) {
          final start = request.pageIndex * request.pageSize;
          final end = start + request.pageSize;
          final slicedData = testData.sublist(
            start,
            end > testData.length ? testData.length : end,
          );

          return Stream.value(
            PaginatableStreamResponse(
              data: slicedData,
              cursor: testData.elementAtOrNull(end),
              totalCount: testData.length,
            ),
          );
        },
      );

      expect(
        paginatableStream,
        emitsInOrder([
          equals(testData.sublist(0, 10)),
          equals(testData.sublist(0, 20)),
        ]),
      );

      await paginatableStream.take(1).first;
      await paginatableStream.listenToNextPage();

      expect(paginatableStream.currentPageIndex, equals(1));
    });

    test('should track loading state correctly', () async {
      paginatableStream = PaginatableStream.simple(
        pageSize: 10,
        factory: (request) {
          return Stream.value(
            PaginatableStreamResponse(
              data: testData.sublist(
                request.pageIndex * request.pageSize,
                (request.pageIndex + 1) * request.pageSize,
              ),
              totalCount: testData.length,
            ),
          ).delay(const Duration(milliseconds: 100));
        },
      );

      expect(paginatableStream.isLoading, isTrue);

      expect(
        paginatableStream.onLoadingChanged,
        emitsInOrder([true, false, true, false, true, false]),
      );

      await paginatableStream.onLoadingChanged.firstWhere((e) => !e);
      await paginatableStream.listenToNextPage();
      await paginatableStream.listenToNextPage();
      await paginatableStream.listenToNextPage();
    });
  });

  group('PaginatableStream navigation between pages', () {
    test('should return to previously loaded page', () async {
      paginatableStream = PaginatableStream.simple(
        pageSize: 10,
        factory: (request) {
          final start = request.pageIndex * request.pageSize;
          final end = start + request.pageSize;
          final slicedData = testData.sublist(
            start,
            end > testData.length ? testData.length : end,
          );

          return Stream.value(
            PaginatableStreamResponse(
              data: slicedData,
              cursor: testData.elementAtOrNull(end),
              totalCount: testData.length,
            ),
          );
        },
      );

      expect(
        paginatableStream,
        emitsInOrder([
          equals(testData.sublist(0, 10)),
          equals(testData.sublist(0, 20)),
          equals(testData.sublist(0, 30)),
          equals(testData.sublist(0, 40)),
          equals(testData.sublist(0, 40)),
          equals(testData.sublist(0, 50)),
          equals(testData.sublist(0, 60)),
          equals(testData.sublist(0, 70)),
          equals(testData.sublist(0, 80)),
          equals(testData.sublist(0, 90)),
          equals(testData.sublist(0, 100)),
        ]),
      );

      await paginatableStream.onLoadingChanged.firstWhere((e) => !e);

      await paginatableStream.listenToPage(1);
      await paginatableStream.listenToPage(2);
      await paginatableStream.listenToPage(3);

      await paginatableStream.listenToPage(1);

      await paginatableStream.listenToPage(4);
      await paginatableStream.listenToPage(5);
      await paginatableStream.listenToPage(6);
      await paginatableStream.listenToPage(7);
      await paginatableStream.listenToPage(8);
      await paginatableStream.listenToPage(9);
    });

    test("Doesn't load pages if already loading other pages", () async {
      paginatableStream = PaginatableStream.simple(
        pageSize: 10,
        factory: (request) {
          final start = request.pageIndex * request.pageSize;
          final end = start + request.pageSize;
          final slicedData = testData.sublist(
            start,
            end > testData.length ? testData.length : end,
          );

          return Stream.value(
            PaginatableStreamResponse(
              data: slicedData,
              cursor: testData.elementAtOrNull(end),
              totalCount: testData.length,
            ),
          );
        },
      );

      expect(
        paginatableStream,
        emitsInOrder([
          equals(testData.sublist(0, 10)),
          equals(testData.sublist(0, 20)),
          emitsDone,
        ]),
      );

      await paginatableStream.onLoadingChanged.firstWhere((e) => !e);

      unawaited(paginatableStream.listenToPage(1));
      unawaited(paginatableStream.listenToPage(2));
      unawaited(paginatableStream.listenToPage(3));

      await paginatableStream.dispose();
    });
  });

  group('PaginatableStream with search', () {
    test('should load first page when searching', () async {
      searchController = BehaviorSubject<String?>.seeded(null);
      addTearDown(searchController.close);

      paginatableStream = PaginatableStream.withSearch(
        pageSize: 10,
        searchStream: searchController.stream,
        factory: (request) {
          final searchTerm = request.param;
          final filteredData = searchTerm != null && searchTerm.isNotEmpty
              ? testData.where((item) => item.contains(searchTerm)).toList()
              : testData;

          final start = request.pageIndex * request.pageSize;
          final end = start + request.pageSize;
          final slicedData = filteredData.sublist(
            start,
            end > filteredData.length ? filteredData.length : end,
          );

          return Stream.value(
            PaginatableStreamResponse(
              data: slicedData,
              cursor: testData.elementAtOrNull(end),
              totalCount: filteredData.length,
            ),
          );
        },
      );

      expect(
        paginatableStream,
        emitsInOrder([
          equals(testData.sublist(0, 10)),
          equals(testData.sublist(0, 20)),
          equals(testData.sublist(0, 30)),
          equals(
            testData
                .where((item) => item.contains('Item 1'))
                .toList()
                .sublist(0, 10)
                .toList(),
          ),
        ]),
      );

      await paginatableStream.onLoadingChanged.firstWhere((e) => !e);
      await paginatableStream.listenToNextPage();
      await paginatableStream.listenToNextPage();

      searchController.add('Item 1');

      await paginatableStream.onLoadingChanged.firstWhere((e) => !e);

      expect(paginatableStream.currentPageIndex, equals(0));
    });
  });
}
