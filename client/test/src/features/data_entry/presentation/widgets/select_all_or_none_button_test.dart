import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/mock_viewable_object_service.dart';
import '../../../../utils.dart';

abstract final class SelectAllOrNoneButtonTestKeys {
  static const Key button = ValueKey('Select All Or None Button Test Key');
}

void main() {
  final persons = [
    Person(id: 'p1', name: 'مينا'),
    Person(id: 'p2', name: 'مارك'),
  ];

  late ViewableObjectListController<Person> list;
  late ListSelectionCubit selection;
  late BehaviorSubject<String?> search;

  setUp(() {
    initGlobalProviderContainer([
      loggingServiceProvider.overrideWithValue(FakeLoggingService()),
      viewableObjectServiceProvider.overrideWithValue(
        MockViewableObjectService(),
      ),
    ]);
    selection = ListSelectionCubit.alwaysActive();
    search = BehaviorSubject.seeded(null);
  });

  tearDown(() async {
    await selection.close();
    await search.close();
    defaultTearDown();
  });

  Future<void> pumpButton(WidgetTester tester) async {
    list = ViewableObjectListController<Person>(
      objectsPaginatableStream: PaginatableStream.simple(
        factory: (_) => Stream.value(PaginatableStreamResponse(data: persons)),
      ),
      filterStream: search,
    );
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              SelectAllOrNoneButton(
                key: SelectAllOrNoneButtonTestKeys.button,
                selection: selection,
                list: list,
              ),
              Expanded(
                child: ViewableObjectList<Person>(
                  objectsController: list,
                  selection: selection,
                  itemsExpandable: true,
                  itemBuilder: (context, item, config) => Text(item.name),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  void testButton(
    String description,
    Future<void> Function(WidgetTester tester) body,
  ) => testWidgets(description, (tester) async {
    await body(tester);

    await tester.pumpWidget(const SizedBox.shrink());
    unawaited(list.dispose());
  });

  IconData? shownIcon(WidgetTester tester) => tester
      .widget<Icon>(
        find.descendant(
          of: find.byKey(SelectAllOrNoneButtonTestKeys.button),
          matching: find.byType(Icon),
        ),
      )
      .icon;

  Future<void> tapButton(WidgetTester tester) async {
    await tester.tap(find.byKey(SelectAllOrNoneButtonTestKeys.button));
    await tester.pumpAndSettle();
  }

  testButton('selects every loaded item when none are selected', (
    tester,
  ) async {
    await pumpButton(tester);
    expect(shownIcon(tester), Symbols.select_all);

    await tapButton(tester);

    expect(selection.state.selected, persons.toSet());
    expect(shownIcon(tester), Symbols.deselect);
  });

  testButton('selects every loaded item when only some are selected', (
    tester,
  ) async {
    selection.select(persons[0]);
    await pumpButton(tester);

    await tapButton(tester);

    expect(selection.state.selected, persons.toSet());
  });

  testButton('selects none when every loaded item is selected', (
    tester,
  ) async {
    selection.selectAll(persons);
    await pumpButton(tester);
    expect(shownIcon(tester), Symbols.deselect);

    await tapButton(tester);

    expect(selection.state.selected, isEmpty);
    expect(shownIcon(tester), Symbols.select_all);
  });

  testButton(
    'selects the newly shown items once a search shows unselected ones',
    (
      tester,
    ) async {
      selection.select(persons[0]);
      search.add(persons[0].name);
      await pumpButton(tester);
      expect(shownIcon(tester), Symbols.deselect);

      search.add(null);
      await tester.pumpAndSettle();
      expect(shownIcon(tester), Symbols.select_all);

      await tapButton(tester);

      expect(selection.state.selected, persons.toSet());
    },
  );
}
