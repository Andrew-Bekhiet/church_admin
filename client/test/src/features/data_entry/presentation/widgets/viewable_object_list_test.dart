import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

import 'viewable_object_list_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<PaginatableStreamBase>(),
  MockSpec<ViewableObjectService>(),
  MockSpec<ImageUrlCacheService>(),
])
void main() {
  setUp(_setUp);
  tearDown(resetGlobalProviderContainer);

  testWidgets(
    'Viewable Object List => Loading items',
    (tester) async {
      final isLoading = BehaviorSubject.seeded(true);

      final objectsStream = BehaviorSubject<List<Person>>.seeded([]);
      addTearDown(objectsStream.close);

      final controller = ViewableObjectListController(
        selectionController: SelectionController<Person>(),
        objectsPaginatableStream: _createMockPaginatableStream(
          isLoading,
          objectsStream,
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ViewableObjectList(objectsController: controller),
          ),
        ),
      );

      expect(find.widgetWithText(Center, 'لا يوجد بيانات'), findsNothing);
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.byType(ListView), findsNothing);
      expect(find.byType(ViewableObjectListItem<Person>), findsNothing);

      isLoading.add(false);

      await tester.pumpAndSettle();

      expect(find.widgetWithText(Center, 'لا يوجد بيانات'), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsNothing);
      expect(find.byType(ListView), findsNothing);
      expect(find.byType(ViewableObjectListItem<Person>), findsNothing);

      objectsStream.add([
        Person(id: 'id1', name: 'name1'),
        Person(id: 'id2', name: 'name2'),
      ]);

      await tester.pumpAndSettle();

      expect(find.byType(CircularProgressIndicator), findsNothing);
      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(ViewableObjectListItem<Person>), findsNWidgets(2));

      expect(
        find.widgetWithText(ViewableObjectListItem<Person>, 'name1'),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(ViewableObjectListItem<Person>, 'name2'),
        findsOneWidget,
      );

      objectsStream.add([
        Person(id: 'id1', name: 'name1'),
        Person(id: 'id2', name: 'name2'),
        Person(id: 'id3', name: 'name3'),
      ]);

      await tester.pumpAndSettle();

      expect(find.byType(CircularProgressIndicator), findsNothing);
      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(ViewableObjectListItem<Person>), findsNWidgets(3));

      expect(
        find.widgetWithText(ViewableObjectListItem<Person>, 'name1'),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(ViewableObjectListItem<Person>, 'name2'),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(ViewableObjectListItem<Person>, 'name3'),
        findsOneWidget,
      );

      unawaited(controller.dispose());
    },
  );

  testWidgets(
    'Viewable Object List => Selecting items',
    (tester) async {
      final objectsStream = BehaviorSubject<List<Person>>.seeded([
        Person(id: 'id1', name: 'name1'),
        Person(id: 'id2', name: 'name2'),
        Person(id: 'id3', name: 'name3'),
      ]);
      addTearDown(objectsStream.close);

      final selectionController = SelectionController<Person>(
        equality: EqualityBy((p) => p.id),
      );
      final controller = ViewableObjectListController(
        objectsPaginatableStream: _createMockPaginatableStream(
          BehaviorSubject.seeded(false),
          objectsStream,
        ),
        selectionController: selectionController,
      );

      await tester.pumpWidgetBuilder(
        ViewableObjectList(objectsController: controller),
        wrapper: materialAppWrapper(),
      );

      await tester.pumpAndSettle();

      expect(
        find.widgetWithText(ViewableObjectListItem<Person>, 'name1'),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(ViewableObjectListItem<Person>, 'name2'),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(ViewableObjectListItem<Person>, 'name3'),
        findsOneWidget,
      );

      selectionController.select(Person(id: 'id1', name: ''));
      await tester.pumpAndSettle();
      expectSelectedAndUnselectedItems(1, 2);

      selectionController.select(Person(id: 'id2', name: ''));
      await tester.pumpAndSettle();
      expectSelectedAndUnselectedItems(2, 1);

      selectionController.select(Person(id: 'id3', name: ''));
      await tester.pumpAndSettle();
      expectSelectedAndUnselectedItems(3, 0);

      selectionController.deselect(Person(id: 'id1', name: ''));
      await tester.pumpAndSettle();
      expectSelectedAndUnselectedItems(2, 1);

      selectionController.selectNone();
      await tester.pumpAndSettle();
      expectSelectedAndUnselectedItems(0, 3);

      selectionController.clear();
      await tester.pumpAndSettle();
      expect(find.byType(Checkbox), findsNothing);

      unawaited(controller.dispose());
    },
  );

  testWidgets(
    'Viewable Object List => Filtering items',
    (tester) async {
      final objectsStream = BehaviorSubject<List<Person>>.seeded([
        Person(id: 'id1', name: 'name1'),
        Person(id: 'id2', name: 'name2'),
        Person(id: 'id3', name: 'name3'),
      ]);

      final filterStream = BehaviorSubject.seeded('');

      final controller = ViewableObjectListController(
        objectsPaginatableStream: _createMockPaginatableStream(
          BehaviorSubject.seeded(false),
          objectsStream,
        ),
        filterStream: filterStream,
        selectionController: SelectionController<Person>(),
      );

      await tester.pumpWidgetBuilder(
        ViewableObjectList(objectsController: controller),
        wrapper: materialAppWrapper(),
      );

      await tester.pumpAndSettle();

      expect(
        find.widgetWithText(ViewableObjectListItem<Person>, 'name1'),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(ViewableObjectListItem<Person>, 'name2'),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(ViewableObjectListItem<Person>, 'name3'),
        findsOneWidget,
      );

      filterStream.add('name1');
      await tester.pumpAndSettle();
      expect(
        find.byType(ViewableObjectListItem<Person>),
        findsOneWidget,
      );

      filterStream.add('name2');
      await tester.pumpAndSettle();
      expect(
        find.byType(ViewableObjectListItem<Person>),
        findsOneWidget,
      );

      filterStream.add('name');
      await tester.pumpAndSettle();
      expect(
        find.byType(ViewableObjectListItem<Person>),
        findsNWidgets(3),
      );

      await filterStream.close();
      unawaited(controller.dispose());
    },
  );

  testWidgets(
    'Viewable Object List => Auto Pagination',
    (tester) async {
      const limit = 8;

      final paginatableStream = _createMockPaginatableStream(
        BehaviorSubject.seeded(false),
        BehaviorSubject.seeded([
          Person(id: 'id1', name: 'name1'),
          Person(id: 'id2', name: 'name2'),
          Person(id: 'id3', name: 'name3'),
          Person(id: 'id4', name: 'name4'),
          Person(id: 'id5', name: 'name5'),
          Person(id: 'id6', name: 'name6'),
          Person(id: 'id7', name: 'name7'),
          Person(id: 'id8', name: 'name8'),
        ]),
        limit: limit,
      );
      when(paginatableStream.hasMore).thenReturn(true);

      final controller = ViewableObjectListController(
        objectsPaginatableStream: paginatableStream,
      );

      await tester.pumpWidgetBuilder(
        ViewableObjectList(objectsController: controller),
        wrapper: materialAppWrapper(),
      );
      await tester.pumpAndSettle();

      expect(
        find.byType(ViewableObjectListItem<Person>, skipOffstage: false),
        findsNWidgets(limit + 1),
      );

      await tester.drag(
        find.byType(ViewableObjectList<Person>),
        const Offset(0, -20000),
      );
      await tester.pumpAndSettle();

      verify(paginatableStream.listenToNextPage()).called(1);

      unawaited(controller.dispose());
    },
  );
}

void expectSelectedAndUnselectedItems(int nSelected, int nUnselected) {
  expect(
    find.descendant(
      of: find.byType(ViewableObjectListItem<Person>),
      matching: find.byWidgetPredicate(
        (widget) => widget is Checkbox && (widget.value ?? false),
      ),
    ),
    findsNWidgets(nSelected),
  );
  expect(
    find.descendant(
      of: find.byType(ViewableObjectListItem<Person>),
      matching: find.byWidgetPredicate(
        (widget) => widget is Checkbox && !(widget.value ?? false),
      ),
    ),
    findsNWidgets(nUnselected),
  );
}

MockPaginatableStreamBase<Person> _createMockPaginatableStream(
  BehaviorSubject<bool> isLoadingStream,
  BehaviorSubject<List<Person>> objectsStream, {
  int limit = 3,
}) {
  final paginatableStream = MockPaginatableStreamBase<Person>();
  when(paginatableStream.pageSize).thenReturn(limit);
  when(paginatableStream.isLoading).thenAnswer((_) => isLoadingStream.value);
  when(paginatableStream.onLoadingChanged).thenAnswer((_) => isLoadingStream);
  when(
    paginatableStream.listen(
      captureAny,
      onDone: captureAnyNamed('onDone'),
      onError: captureAnyNamed('onError'),
      cancelOnError: captureAnyNamed('cancelOnError'),
    ),
  ).thenAnswer(
    (i) => objectsStream.stream.listen(
      i.positionalArguments.first,
      onDone: i.namedArguments[#onDone],
      onError: i.namedArguments[#onError],
      cancelOnError: i.namedArguments[#cancelOnError],
    ),
  );
  when(paginatableStream.currentItems).thenAnswer((_) => objectsStream.value);

  return paginatableStream;
}

void _setUp() {
  final overrides = [
    _setUpViewableObjectService(),
    _setUpImageUrlCacheService(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpViewableObjectService() {
  provideDummy<IconData>(Symbols.person);

  final viewableObjectService = MockViewableObjectService();

  when(
    viewableObjectService.getDefaultIconFor<Person>(any),
  ).thenReturn(Symbols.person);

  return viewableObjectServiceProvider.overrideWithValue(viewableObjectService);
}

Override _setUpImageUrlCacheService() {
  return imageUrlCacheServiceProvider.overrideWithValue(
    MockImageUrlCacheService(),
  );
}
