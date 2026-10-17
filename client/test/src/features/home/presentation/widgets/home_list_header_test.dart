import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

import '../../support/home_widget_pump.dart';

void main() {
  const total = 7;
  const label = 'المناطق';

  Future<void> pumpHeader(
    WidgetTester tester, {
    int? total = total,
    ViewableObjectListType? listType,
    VoidCallback? onToggleListType,
  }) {
    return HomeWidgetPump.pump(
      tester,
      HomeListHeader(
        total: total,
        label: label,
        listType: listType,
        onToggleListType: onToggleListType,
      ),
    );
  }

  testWidgets('shows the total and the label', (tester) async {
    await pumpHeader(tester);

    expect(find.text('$total $label'), findsOneWidget);
  });

  testWidgets('without a total shows no count', (tester) async {
    await pumpHeader(
      tester,
      total: null,
      listType: ViewableObjectListType.list,
    );

    expect(find.textContaining(label), findsNothing);
  });

  testWidgets('without a total still shows the toggle', (tester) async {
    await pumpHeader(
      tester,
      total: null,
      listType: ViewableObjectListType.list,
    );

    expect(
      find.byType(SegmentedButton<ViewableObjectListType>),
      findsOneWidget,
    );
  });

  testWidgets('without a list type shows no toggle', (tester) async {
    await pumpHeader(tester);

    expect(find.byType(SegmentedButton<ViewableObjectListType>), findsNothing);
  });

  testWidgets('offers a list and a grid segment with tooltips', (
    tester,
  ) async {
    await pumpHeader(tester, listType: ViewableObjectListType.list);

    expect(find.byIcon(Symbols.view_list), findsOneWidget);
    expect(find.byIcon(Symbols.grid_view), findsOneWidget);
    expect(find.byTooltip('قائمة'), findsOneWidget);
    expect(find.byTooltip('شبكة'), findsOneWidget);
  });

  testWidgets('selects the segment of the current list type', (tester) async {
    await pumpHeader(tester, listType: ViewableObjectListType.list);

    final button = tester.widget<SegmentedButton<ViewableObjectListType>>(
      find.byType(SegmentedButton<ViewableObjectListType>),
    );
    expect(button.selected, {ViewableObjectListType.list});
  });

  testWidgets('shows the grid segment as selected for the three column grid', (
    tester,
  ) async {
    await pumpHeader(tester, listType: ViewableObjectListType.grid3);

    final button = tester.widget<SegmentedButton<ViewableObjectListType>>(
      find.byType(SegmentedButton<ViewableObjectListType>),
    );
    expect(button.selected, {ViewableObjectListType.grid});
  });

  testWidgets('selecting the other segment calls onToggleListType', (
    tester,
  ) async {
    var toggles = 0;
    await pumpHeader(
      tester,
      listType: ViewableObjectListType.list,
      onToggleListType: () => toggles++,
    );

    await tester.tap(find.byIcon(Symbols.grid_view));

    expect(toggles, 1);
  });

  testWidgets('selecting the segment already selected does nothing', (
    tester,
  ) async {
    var toggles = 0;
    await pumpHeader(
      tester,
      listType: ViewableObjectListType.list,
      onToggleListType: () => toggles++,
    );

    await tester.tap(find.byIcon(Symbols.view_list));

    expect(toggles, 0);
  });
}
