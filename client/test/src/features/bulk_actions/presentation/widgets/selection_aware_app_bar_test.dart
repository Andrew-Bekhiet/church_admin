import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/mock_viewable_object_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';
import '../../../../utils.dart';

class ShowNamesBulkAction extends BulkAction<Person> {
  @override
  String get key => 'show_names';

  @override
  String get label => 'عرض الأسماء';

  @override
  Widget get icon => const Icon(Symbols.list);

  const ShowNamesBulkAction();

  @override
  Future<void> run(BuildContext context, Set<Person> selected) =>
      showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
          content: Text(
            selected.map((p) => p.name).join('، '),
            key: SelectionAwareAppBarTestKeys.shownNames,
          ),
        ),
      );
}

class RejectingBulkAction extends BulkAction<Group> {
  @override
  String get key => 'reject';

  @override
  String get label => 'رفض';

  @override
  Widget get icon => const Icon(Symbols.block);

  const RejectingBulkAction();

  @override
  Future<void> run(BuildContext context, Set<Group> selected) =>
      throw StateError('rejected before starting');
}

class TabsHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => kToolbarHeight - 6;

  @override
  double get maxExtent => kToolbarHeight * 1.2;

  const TabsHeaderDelegate();

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) => const Text(
    'التبويبات',
    key: SelectionAwareAppBarTestKeys.tabsHeader,
  );

  @override
  bool shouldRebuild(TabsHeaderDelegate oldDelegate) => false;
}

abstract final class SelectionAwareAppBarTestKeys {
  static const Key tabsHeader = ValueKey('selection-aware-tabs-header');
  static const Key screenTitle = ValueKey('selection-aware-screen-title');
  static const Key shownNames = ValueKey('selection-aware-shown-names');

  static Key itemFor(String id) => ValueKey('selection-aware-item-$id');
}

void main() {
  const screenTitle = 'عنوان الشاشة';
  final persons = [
    Person(id: 'p1', name: 'مينا'),
    Person(id: 'p2', name: 'مارك'),
    Person(id: 'p3', name: 'بيتر'),
  ];

  late RecordingAnalyticsProvider analytics;
  late FakeLoggingService logging;
  late ListSelectionCubit selection;
  late ViewableObjectListController listController;

  setUp(() {
    analytics = RecordingAnalyticsProvider();
    logging = FakeLoggingService();
    initGlobalProviderContainer([
      loggingServiceProvider.overrideWithValue(logging),
      viewableObjectServiceProvider.overrideWithValue(
        MockViewableObjectService(),
      ),
      analyticsServiceProvider.overrideWithValue(
        AnalyticsService([analytics], FakeLoggingService()),
      ),
      bulkActionsRegistryProvider.overrideWithValue(
        const BulkActionsRegistry([
          ShowNamesBulkAction(),
          RejectingBulkAction(),
        ]),
      ),
    ]);
  });

  tearDown(defaultTearDown);

  Future<void> pumpScreenListing<T extends ViewableWithID>(
    WidgetTester tester,
    List<T> items, {
    bool hasPinnedTabsHeader = false,
    Stream<String?>? search,
  }) async {
    selection = ListSelectionCubit();
    final typedListController = ViewableObjectListController<T>(
      objectsPaginatableStream: PaginatableStream.simple(
        factory: (_) => Stream.value(PaginatableStreamResponse(data: items)),
      ),
      filterStream: search,
    );
    listController = typedListController;

    final list = ViewableObjectList<T>(
      objectsController: typedListController,
      selection: selection,
      itemsExpandable: true,
      itemBuilder: (context, item, config) => ListTile(
        key: SelectionAwareAppBarTestKeys.itemFor(item.id),
        title: Text(item.name),
        selected: config?.selected ?? false,
        onTap: () => config?.onTap?.call(item),
        onLongPress: () => config?.onLongPress?.call(item),
      ),
    );
    final screenAppBar = AppBar(
      title: const Text(
        screenTitle,
        key: SelectionAwareAppBarTestKeys.screenTitle,
      ),
    );

    await tester.pumpWidget(
      MaterialApp(
        home: ListSelectionHost(
          child: hasPinnedTabsHeader
              ? Scaffold(
                  body: CustomScrollView(
                    slivers: [
                      const SliverAppBar(
                        pinned: true,
                        title: Text(
                          screenTitle,
                          key: SelectionAwareAppBarTestKeys.screenTitle,
                        ),
                      ),
                      const SliverPersistentHeader(
                        pinned: true,
                        delegate: SelectionAwarePersistentHeaderDelegate(
                          TabsHeaderDelegate(),
                        ),
                      ),
                      SliverFillRemaining(child: list),
                    ],
                  ),
                )
              : Scaffold(
                  appBar: SelectionAwareAppBar(child: screenAppBar),
                  body: list,
                ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  String? selectedCount(WidgetTester tester) =>
      tester.widget<Text>(find.byKey(ListSelectionBarKeys.selectedCount)).data;

  String? shownNames(WidgetTester tester) => tester
      .widget<Text>(find.byKey(SelectionAwareAppBarTestKeys.shownNames))
      .data;

  void testScreen(
    String description,
    Future<void> Function(WidgetTester tester) body,
  ) => testWidgets(description, (tester) async {
    await body(tester);

    await tester.pumpWidget(const SizedBox.shrink());
    unawaited(listController.dispose());
    unawaited(selection.close());
  });

  testScreen('a screen shows its own app bar while nothing is selected', (
    tester,
  ) async {
    await pumpScreenListing(tester, persons);

    expect(
      find.byKey(SelectionAwareAppBarTestKeys.screenTitle),
      findsOneWidget,
    );
    expect(find.byKey(ListSelectionBarKeys.bar), findsNothing);
  });

  testScreen(
    'long-pressing an item replaces the app bar with the selected count',
    (tester) async {
      await pumpScreenListing(tester, persons);

      await tester.longPress(
        find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
      );
      await tester.pumpAndSettle();
      await tester.tap(
        find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[1].id)),
      );
      await tester.pumpAndSettle();

      expect(
        find.byKey(SelectionAwareAppBarTestKeys.screenTitle),
        findsNothing,
      );
      expect(selectedCount(tester), '2 محدد');
    },
  );

  testScreen(
    'long-pressing an item replaces a pinned tabs header with the count',
    (
      tester,
    ) async {
      await pumpScreenListing(tester, persons, hasPinnedTabsHeader: true);
      expect(
        find.byKey(SelectionAwareAppBarTestKeys.tabsHeader),
        findsOneWidget,
      );

      await tester.longPress(
        find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
      );
      await tester.pumpAndSettle();

      expect(find.byKey(SelectionAwareAppBarTestKeys.tabsHeader), findsNothing);
      expect(selectedCount(tester), '1 محدد');
      expect(
        find.byKey(SelectionAwareAppBarTestKeys.screenTitle),
        findsOneWidget,
      );
    },
  );

  testScreen('ending the selection brings back the pinned tabs header', (
    tester,
  ) async {
    await pumpScreenListing(tester, persons, hasPinnedTabsHeader: true);

    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ListSelectionBarKeys.closeButton));
    await tester.pumpAndSettle();

    expect(find.byKey(SelectionAwareAppBarTestKeys.tabsHeader), findsOneWidget);
    expect(find.byKey(ListSelectionBarKeys.bar), findsNothing);
  });

  testScreen('closing the selection bar ends the selection', (tester) async {
    await pumpScreenListing(tester, persons);

    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ListSelectionBarKeys.closeButton));
    await tester.pumpAndSettle();

    expect(
      find.byKey(SelectionAwareAppBarTestKeys.screenTitle),
      findsOneWidget,
    );
    expect(find.byKey(ListSelectionBarKeys.bar), findsNothing);
    expect(
      tester.widget<ListTile>(
        find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
      ),
      isA<ListTile>().having((t) => t.selected, 'selected', isFalse),
    );
  });

  testScreen('select all selects every loaded item', (tester) async {
    await pumpScreenListing(tester, persons);

    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ListSelectionBarKeys.selectAllButton));
    await tester.pumpAndSettle();

    expect(selection.state.selected, unorderedEquals(persons));
  });

  testScreen('select all clears the selection when all are selected', (
    tester,
  ) async {
    await pumpScreenListing(tester, persons);

    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ListSelectionBarKeys.selectAllButton));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ListSelectionBarKeys.selectAllButton));
    await tester.pumpAndSettle();

    expect(selection.state, isA<ListSelectionActive>());
    expect(selection.state.selected, isEmpty);
  });

  testScreen('select none keeps the selected items a search hides', (
    tester,
  ) async {
    final search = BehaviorSubject<String?>.seeded(null);
    addTearDown(search.close);
    await pumpScreenListing(tester, persons, search: search);

    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ListSelectionBarKeys.selectAllButton));
    await tester.pumpAndSettle();
    search.add(persons[0].name);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ListSelectionBarKeys.selectAllButton));
    await tester.pumpAndSettle();

    expect(selection.state.selected, unorderedEquals(persons.skip(1)));
  });

  testScreen('select all selects the items a search newly shows', (
    tester,
  ) async {
    final search = BehaviorSubject<String?>.seeded(persons[0].name);
    addTearDown(search.close);
    await pumpScreenListing(tester, persons, search: search);

    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
    );
    await tester.pumpAndSettle();
    search.add(null);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ListSelectionBarKeys.selectAllButton));
    await tester.pumpAndSettle();

    expect(selection.state.selected, unorderedEquals(persons));
  });

  testScreen('a bulk action runs on the selected items', (tester) async {
    await pumpScreenListing(tester, persons);

    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
    );
    await tester.pumpAndSettle();
    await tester.tap(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[2].id)),
    );
    await tester.pumpAndSettle();
    await tester.tap(
      find.byKey(
        ListSelectionBarKeys.actionButtonFor(const ShowNamesBulkAction()),
      ),
    );
    await tester.pumpAndSettle();

    expect(shownNames(tester), 'مينا، بيتر');
  });

  testScreen('a bulk action gets the selected items in list order', (
    tester,
  ) async {
    await pumpScreenListing(tester, persons);

    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[2].id)),
    );
    await tester.pumpAndSettle();
    await tester.tap(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
    );
    await tester.pumpAndSettle();
    await tester.tap(
      find.byKey(
        ListSelectionBarKeys.actionButtonFor(const ShowNamesBulkAction()),
      ),
    );
    await tester.pumpAndSettle();

    expect(shownNames(tester), 'مينا، بيتر');
  });

  testScreen(
    'a bulk action gets a refreshed item once, not also its stale copy',
    (tester) async {
      await pumpScreenListing(tester, persons);

      selection.startSelectingWith(
        Person(id: persons[0].id, name: 'اسم قديم'),
      );
      await tester.pumpAndSettle();
      await tester.tap(
        find.byKey(
          ListSelectionBarKeys.actionButtonFor(const ShowNamesBulkAction()),
        ),
      );
      await tester.pumpAndSettle();

      expect(shownNames(tester), persons[0].name);
    },
  );

  testScreen('starting a selection with a long-press tracks it', (
    tester,
  ) async {
    await pumpScreenListing(tester, persons);

    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
    );
    await tester.pumpAndSettle();

    expect(
      analytics.trackedEventsOf<ListMultiSelectOpen>().map((e) => e.name),
      ['list:multi_select_open'],
    );
  });

  testScreen('running a bulk action tracks which action ran on how many', (
    tester,
  ) async {
    await pumpScreenListing(tester, persons);

    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
    );
    await tester.pumpAndSettle();
    await tester.tap(
      find.byKey(
        ListSelectionBarKeys.actionButtonFor(const ShowNamesBulkAction()),
      ),
    );
    await tester.pumpAndSettle();

    expect(
      analytics.trackedEventsOf<BulkActionInvoke>().map((e) => e.properties),
      [
        {'action': 'show_names', 'entity_type': 'person', 'selected_count': 1},
      ],
    );
    expect(
      analytics.trackedEventsOf<BulkActionInvoke>().map((e) => e.name),
      ['bulk_action:invoke'],
    );
  });

  testScreen(
    'a list typed by a supertype offers the actions of the selected items',
    (tester) async {
      await pumpScreenListing<ViewableWithID>(tester, persons);

      await tester.longPress(
        find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
      );
      await tester.pumpAndSettle();

      expect(
        find.byKey(
          ListSelectionBarKeys.actionButtonFor(const ShowNamesBulkAction()),
        ),
        findsOneWidget,
      );
    },
  );

  testScreen('a bulk action runs only on the selected items of its type', (
    tester,
  ) async {
    const family = Family(id: 'f1', name: 'عائلة');
    await pumpScreenListing<ViewableWithID>(tester, [family, ...persons]);

    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(family.id)),
    );
    await tester.pumpAndSettle();
    await tester.tap(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[1].id)),
    );
    await tester.pumpAndSettle();
    await tester.tap(
      find.byKey(
        ListSelectionBarKeys.actionButtonFor(const ShowNamesBulkAction()),
      ),
    );
    await tester.pumpAndSettle();

    expect(shownNames(tester), persons[1].name);
    expect(
      analytics.trackedEventsOf<BulkActionInvoke>().single.properties,
      containsPair('selected_count', 1),
    );
  });

  testScreen('a bulk action that throws before starting is logged', (
    tester,
  ) async {
    await pumpScreenListing(tester, [const Group(id: 'g1', name: 'مجموعة')]);

    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor('g1')),
    );
    await tester.pumpAndSettle();
    await tester.tap(
      find.byKey(
        ListSelectionBarKeys.actionButtonFor(const RejectingBulkAction()),
      ),
    );
    await tester.pumpAndSettle();

    expect(logging.reportedErrors.map((record) => record.message), [
      'Bulk action reject failed',
    ]);
  });

  testScreen('a selection without items of an action type offers none', (
    tester,
  ) async {
    await pumpScreenListing(tester, [
      const Family(id: 'f1', name: 'عائلة'),
    ]);

    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor('f1')),
    );
    await tester.pumpAndSettle();

    expect(find.byKey(ListSelectionBarKeys.bar), findsOneWidget);
    expect(
      find.byKey(
        ListSelectionBarKeys.actionButtonFor(const ShowNamesBulkAction()),
      ),
      findsNothing,
    );
  });

  testWidgets('starting a selection in a second list ends the first', (
    tester,
  ) async {
    final firstSelection = ListSelectionCubit();
    final secondSelection = ListSelectionCubit();
    final firstList = ViewableObjectListController<Person>(
      objectsPaginatableStream: PaginatableStream.simple(
        factory: (_) => Stream.value(PaginatableStreamResponse(data: persons)),
      ),
    );
    final secondList = ViewableObjectListController<Family>(
      objectsPaginatableStream: PaginatableStream.simple(
        factory: (_) => Stream.value(
          const PaginatableStreamResponse(
            data: [Family(id: 'f1', name: 'عائلة')],
          ),
        ),
      ),
    );
    Widget tileOf(ViewableWithID item, ViewableObjectWidgetConfig? config) =>
        ListTile(
          key: SelectionAwareAppBarTestKeys.itemFor(item.id),
          title: Text(item.name),
          onLongPress: () => config?.onLongPress?.call(item),
        );

    await tester.pumpWidget(
      MaterialApp(
        home: ListSelectionHost(
          child: Scaffold(
            appBar: SelectionAwareAppBar(
              child: AppBar(
                title: const Text(
                  screenTitle,
                  key: SelectionAwareAppBarTestKeys.screenTitle,
                ),
              ),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ViewableObjectList<Person>(
                    objectsController: firstList,
                    selection: firstSelection,
                    itemsExpandable: true,
                    itemBuilder: (context, item, config) =>
                        tileOf(item, config),
                  ),
                ),
                Expanded(
                  child: ViewableObjectList<Family>(
                    objectsController: secondList,
                    selection: secondSelection,
                    itemsExpandable: true,
                    itemBuilder: (context, item, config) =>
                        tileOf(item, config),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
    );
    await tester.pumpAndSettle();
    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor('f1')),
    );
    await tester.pumpAndSettle();

    expect(firstSelection.state, const ListSelectionInactive());
    expect(secondSelection.state, isA<ListSelectionActive>());
    expect(selectedCount(tester), '1 محدد');

    await tester.pumpWidget(const SizedBox.shrink());
    for (final selection in [firstSelection, secondSelection]) {
      unawaited(selection.close());
    }
    unawaited(firstList.dispose());
    unawaited(secondList.dispose());
  });

  testWidgets('the selection bar leaves with the list that was selecting', (
    tester,
  ) async {
    final list = ViewableObjectListController<Person>(
      objectsPaginatableStream: PaginatableStream.simple(
        factory: (_) => Stream.value(PaginatableStreamResponse(data: persons)),
      ),
    );
    Widget screenWith(Widget body) => MaterialApp(
      home: ListSelectionHost(
        child: Scaffold(
          appBar: SelectionAwareAppBar(
            child: AppBar(
              title: const Text(
                screenTitle,
                key: SelectionAwareAppBarTestKeys.screenTitle,
              ),
            ),
          ),
          body: body,
        ),
      ),
    );

    await tester.pumpWidget(
      screenWith(
        ViewableObjectList<Person>(
          objectsController: list,
          itemsExpandable: true,
          itemBuilder: (context, item, config) => ListTile(
            key: SelectionAwareAppBarTestKeys.itemFor(item.id),
            title: Text(item.name),
            onLongPress: () => config?.onLongPress?.call(item),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.longPress(
      find.byKey(SelectionAwareAppBarTestKeys.itemFor(persons[0].id)),
    );
    await tester.pumpAndSettle();
    await tester.pumpWidget(screenWith(const SizedBox.shrink()));
    await tester.pumpAndSettle();

    expect(find.byKey(ListSelectionBarKeys.bar), findsNothing);
    expect(
      find.byKey(SelectionAwareAppBarTestKeys.screenTitle),
      findsOneWidget,
    );

    await tester.pumpWidget(const SizedBox.shrink());
    unawaited(list.dispose());
  });
}
