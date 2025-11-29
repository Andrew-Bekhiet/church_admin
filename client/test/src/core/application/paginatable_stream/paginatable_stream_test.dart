import 'dart:async';
import 'dart:math';

import 'package:church_admin/src/core/application/paginatable_stream/paginatable_stream.dart';
import 'package:church_admin/src/core/application/paginatable_stream/paginatable_stream_request.dart';
import 'package:church_admin/src/core/application/paginatable_stream/paginatable_stream_response.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  late List<String> testData;
  late PaginatableStreamBase<String> paginatableStream;
  late BehaviorSubject<String?> searchController;

  setUp(() {
    testData = List.generate(
        100, (index) => 'Item ${index.toString().padLeft(2, '0')}');
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
      paginatableStream = PaginatableStream<String, String?>.simple(
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
      paginatableStream = PaginatableStream<String, String?>.simple(
        pageSize: 10,
        factory: (request) {
          return Stream.value(_paginateData(request, testData));
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
      paginatableStream = PaginatableStream<String, String?>.simple(
        pageSize: 10,
        factory: (request) {
          return Stream.value(_paginateData(request, testData, hasNext: false));
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
      paginatableStream = PaginatableStream<String, String?>.simple(
        pageSize: 10,
        factory: (request) {
          return Stream.value(_paginateData(request, testData));
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
      await paginatableStream.listenToPage(2);
      await paginatableStream.listenToPage(3);

      await paginatableStream.listenToPage(4);
      await paginatableStream.listenToPage(5);
      await paginatableStream.listenToPage(6);
      await paginatableStream.listenToPage(7);
      await paginatableStream.listenToPage(8);
      await paginatableStream.listenToPage(9);
    });

    test("Doesn't load pages if already loading other pages", () async {
      paginatableStream = PaginatableStream<String, String?>.simple(
        pageSize: 10,
        factory: (request) {
          return Stream.value(_paginateData(request, testData));
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

          return Stream.value(
            _paginateData(request, filteredData),
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

  group(
    'Stays in sync with data source',
    () {
      test('Shows newly added items', () async {
        final rnd = Random();
        const pageSize = 20;

        final dataSubject = BehaviorSubject<List<String>>();
        addTearDown(dataSubject.close);

        paginatableStream = PaginatableStream<String, String?>.simple(
          pageSize: pageSize,
          factory: (request) =>
              dataSubject.stream.map((data) => _paginateData(request, data)),
        );

        final pageWithAddedItems = testData
            .sublist(0, pageSize)
            .expandIndexed(
              (i, element) =>
                  rnd.nextBool() ? [element, 'New Item $i'] : [element],
            )
            .toList();

        expect(
          paginatableStream,
          emitsInOrder([
            equals(testData.sublist(0, pageSize)),
            equals(pageWithAddedItems.sublist(0, pageSize)),
          ]),
        );

        dataSubject.add(testData);
        await paginatableStream.onLoadingChanged.firstWhere((e) => !e);
        dataSubject.add(pageWithAddedItems);
      });

      test('Updates items', () async {
        final rnd = Random();
        const pageSize = 20;

        final dataSubject = BehaviorSubject<List<String>>();
        addTearDown(dataSubject.close);

        paginatableStream = PaginatableStream<String, String?>.simple(
          pageSize: pageSize,
          factory: (request) =>
              dataSubject.stream.map((data) => _paginateData(request, data)),
        );

        final updatedData = testData
            .sublist(0, pageSize)
            .map((e) => rnd.nextBool() ? e.replaceAll('Item', 'Changed!') : e)
            .toList();

        expect(
          paginatableStream,
          emitsInOrder([
            equals(testData.sublist(0, pageSize)),
            equals(updatedData.sublist(0, pageSize)),
          ]),
        );

        dataSubject.add(testData);
        await paginatableStream.onLoadingChanged.firstWhere((e) => !e);
        dataSubject.add(updatedData);
      });

      test(
        'Removes items',
        () async {
          const int pageSize = 20;
          final testData = List.generate(
            pageSize ~/ 2,
            (index) => 'Item ${index.toString().padLeft(2, '0')}',
          );

          final dataSubject = BehaviorSubject<List<String>>();
          addTearDown(dataSubject.close);

          paginatableStream = PaginatableStream<String, String?>.simple(
            pageSize: pageSize,
            factory: (request) =>
                dataSubject.stream.map((data) => _paginateData(request, data)),
          );

          final removedItems = testData.sample(pageSize ~/ 2);
          final updatedData = testData.whereNot(removedItems.contains).toList();

          expect(
            paginatableStream,
            emitsInOrder([
              equals(testData),
              equals(updatedData),
            ]),
          );

          dataSubject.add(testData);
          await paginatableStream.onLoadingChanged.firstWhere((e) => !e);
          dataSubject.add(updatedData);
        },
      );
    },
  );
}

PaginatableStreamResponse<String> _paginateData(
  PaginatableStreamRequest<String, String?> request,
  List<String> testData, {
  bool hasNext = true,
}) {
  int countTaken = 0;
  final slicedData = testData.where((item) {
    if (countTaken > 0 && countTaken <= request.pageSize ||
        countTaken == 0 &&
            (request.cursor == null || item.compareTo(request.cursor!) > 0)) {
      countTaken++;
      return true;
    }

    return false;
  }).toList();

  return PaginatableStreamResponse(
    data: slicedData.sublist(0, min(slicedData.length, request.pageSize)),
    cursor: hasNext ? slicedData.lastOrNull : null,
    totalCount: testData.length,
  );
}
