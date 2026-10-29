import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/mock_viewable_object_service.dart';
import '../../../../utils.dart';

abstract final class ViewableObjectListSelectionTestKeys {
  static Key itemFor(String id) => ValueKey('list-selection-item-$id');
}

void main() {
  final persons = [
    Person(id: 'p1', name: 'مينا'),
    Person(id: 'p2', name: 'مارك'),
    Person(id: 'p3', name: 'بيتر'),
  ];
  final families = [
    const Family(id: 'f1', name: 'عائلة مينا'),
    const Family(id: 'f2', name: 'عائلة مارك'),
  ];

  late List<ViewableObjectListController> listControllers;

  setUp(() {
    listControllers = [];
    initGlobalProviderContainer([
      loggingServiceProvider.overrideWithValue(FakeLoggingService()),
      viewableObjectServiceProvider.overrideWithValue(
        MockViewableObjectService(),
      ),
    ]);
  });

  tearDown(defaultTearDown);

  ViewableObjectList<T> listOf<T extends ViewableWithID>(
    List<T> items, {
    ListSelectionCubit? selection,
  }) {
    final listController = ViewableObjectListController<T>(
      objectsPaginatableStream: PaginatableStream.simple(
        factory: (_) => Stream.value(PaginatableStreamResponse(data: items)),
      ),
    );
    listControllers.add(listController);

    return ViewableObjectList<T>(
      objectsController: listController,
      selection: selection,
      itemsExpandable: true,
      itemBuilder: (context, item, config) => ListTile(
        key: ViewableObjectListSelectionTestKeys.itemFor(item.id),
        title: Text(item.name),
        selected: config?.selected ?? false,
        onTap: () => config?.onTap?.call(item),
        onLongPress: () => config?.onLongPress?.call(item),
      ),
    );
  }

  Future<void> pumpLists(WidgetTester tester, List<Widget> lists) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [for (final list in lists) Expanded(child: list)],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  Finder itemOf(String id) =>
      find.byKey(ViewableObjectListSelectionTestKeys.itemFor(id));

  bool isShownSelected(WidgetTester tester, String id) =>
      tester.widget<ListTile>(itemOf(id)).selected;

  void testLists(
    String description,
    Future<void> Function(WidgetTester tester) body,
  ) => testWidgets(description, (tester) async {
    await body(tester);

    await tester.pumpWidget(const SizedBox.shrink());
    for (final listController in listControllers) {
      unawaited(listController.dispose());
    }
  });

  testLists('long-pressing an item starts selecting it', (tester) async {
    await pumpLists(tester, [listOf(persons)]);

    await tester.longPress(itemOf(persons[0].id));
    await tester.pumpAndSettle();

    expect(isShownSelected(tester, persons[0].id), isTrue);
    expect(isShownSelected(tester, persons[1].id), isFalse);
  });

  testLists('tapping items while selecting adds and removes them', (
    tester,
  ) async {
    final selection = ListSelectionCubit();
    addTearDown(selection.close);
    await pumpLists(tester, [listOf(persons, selection: selection)]);

    await tester.longPress(itemOf(persons[0].id));
    await tester.pumpAndSettle();
    await tester.tap(itemOf(persons[1].id));
    await tester.pumpAndSettle();
    await tester.tap(itemOf(persons[0].id));
    await tester.pumpAndSettle();

    expect(selection.state.selected, {persons[1]});
    expect(isShownSelected(tester, persons[0].id), isFalse);
    expect(isShownSelected(tester, persons[1].id), isTrue);
  });

  testLists('long-pressing while selecting ends the selection', (
    tester,
  ) async {
    final selection = ListSelectionCubit();
    addTearDown(selection.close);
    await pumpLists(tester, [listOf(persons, selection: selection)]);

    await tester.longPress(itemOf(persons[0].id));
    await tester.pumpAndSettle();
    await tester.longPress(itemOf(persons[1].id));
    await tester.pumpAndSettle();

    expect(selection.state, const ListSelectionInactive());
    expect(isShownSelected(tester, persons[0].id), isFalse);
  });

  testLists('each list keeps its own selection', (tester) async {
    await pumpLists(tester, [listOf(persons), listOf(families)]);

    await tester.longPress(itemOf(persons[0].id));
    await tester.pumpAndSettle();
    await tester.longPress(itemOf(families[0].id));
    await tester.pumpAndSettle();

    expect(isShownSelected(tester, persons[0].id), isTrue);
    expect(isShownSelected(tester, families[0].id), isTrue);
  });

  testLists('a list given a selection shows what it already holds', (
    tester,
  ) async {
    final selection = ListSelectionCubit.alwaysActive([persons[1]]);
    addTearDown(selection.close);
    await pumpLists(tester, [listOf(persons, selection: selection)]);

    expect(isShownSelected(tester, persons[0].id), isFalse);
    expect(isShownSelected(tester, persons[1].id), isTrue);
  });

  testLists('a long-press keeps an always-active selection and its items', (
    tester,
  ) async {
    final selection = ListSelectionCubit.alwaysActive([persons[1]]);
    addTearDown(selection.close);
    await pumpLists(tester, [listOf(persons, selection: selection)]);

    await tester.longPress(itemOf(persons[0].id));
    await tester.pumpAndSettle();

    expect(selection.state.selected, {persons[1]});
    expect(isShownSelected(tester, persons[1].id), isTrue);
  });

  testLists('a given selection survives its list leaving and coming back', (
    tester,
  ) async {
    final selection = ListSelectionCubit.alwaysActive();
    addTearDown(selection.close);
    final personsList = listOf(persons, selection: selection);
    final familiesList = listOf(families);
    await pumpLists(tester, [personsList]);

    await tester.tap(itemOf(persons[0].id));
    await tester.pumpAndSettle();
    await pumpLists(tester, [familiesList]);
    await pumpLists(tester, [personsList]);

    expect(selection.state.selected, {persons[0]});
    expect(isShownSelected(tester, persons[0].id), isTrue);
  });
}
