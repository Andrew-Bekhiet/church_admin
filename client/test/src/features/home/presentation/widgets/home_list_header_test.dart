import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

import '../../support/home_widget_pump.dart';

void main() {
  const total = HomeListHeaderPump.total;
  const label = HomeListHeaderPump.label;

  testWidgets('shows the total and the label', (tester) async {
    await HomeListHeaderPump.pump(tester);

    expect(find.text('$total $label'), findsOneWidget);
  });

  testWidgets('without a total shows no count', (tester) async {
    await HomeListHeaderPump.pump(
      tester,
      total: null,
      listType: ViewableObjectListType.list,
    );

    expect(find.textContaining(label), findsNothing);
  });

  testWidgets('without a total still shows the toggle', (tester) async {
    await HomeListHeaderPump.pump(
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
    await HomeListHeaderPump.pump(tester);

    expect(find.byType(SegmentedButton<ViewableObjectListType>), findsNothing);
  });

  testWidgets('offers a list and a grid segment with tooltips', (
    tester,
  ) async {
    await HomeListHeaderPump.pump(
      tester,
      listType: ViewableObjectListType.list,
    );

    expect(find.byIcon(Symbols.view_list), findsOneWidget);
    expect(find.byIcon(Symbols.grid_view), findsOneWidget);
    expect(find.byTooltip('قائمة'), findsOneWidget);
    expect(find.byTooltip('شبكة'), findsOneWidget);
  });

  testWidgets('selects the segment of the current list type', (tester) async {
    await HomeListHeaderPump.pump(
      tester,
      listType: ViewableObjectListType.list,
    );

    final button = tester.widget<SegmentedButton<ViewableObjectListType>>(
      find.byType(SegmentedButton<ViewableObjectListType>),
    );
    expect(button.selected, {ViewableObjectListType.list});
  });

  testWidgets('shows the grid segment as selected for the three column grid', (
    tester,
  ) async {
    await HomeListHeaderPump.pump(
      tester,
      listType: ViewableObjectListType.grid3,
    );

    final button = tester.widget<SegmentedButton<ViewableObjectListType>>(
      find.byType(SegmentedButton<ViewableObjectListType>),
    );
    expect(button.selected, {ViewableObjectListType.grid});
  });

  testWidgets('without onToggleListType the toggle is disabled', (
    tester,
  ) async {
    final handle = tester.ensureSemantics();
    await HomeListHeaderPump.pump(
      tester,
      listType: ViewableObjectListType.list,
    );

    expect(
      tester.getSemantics(find.byIcon(Symbols.grid_view)),
      isSemantics(hasEnabledState: true, isEnabled: false),
    );
    handle.dispose();
  });
}

abstract final class HomeListHeaderPump {
  static const int total = 7;
  static const String label = 'المناطق';

  static Future<void> pump(
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
}
