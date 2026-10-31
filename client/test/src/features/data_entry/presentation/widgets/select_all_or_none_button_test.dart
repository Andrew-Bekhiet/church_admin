import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

abstract final class SelectAllOrNoneButtonTestKeys {
  static const Key button = ValueKey('Select All Or None Button Test Key');
}

void main() {
  late List<String> invokedCallbacks;

  setUp(() => invokedCallbacks = []);

  Future<void> pumpButton(
    WidgetTester tester, {
    required bool areAllShownItemsSelected,
  }) => tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: SelectAllOrNoneButton(
          key: SelectAllOrNoneButtonTestKeys.button,
          areAllShownItemsSelected: areAllShownItemsSelected,
          onSelectAll: () => invokedCallbacks.add('select all'),
          onSelectNone: () => invokedCallbacks.add('select none'),
        ),
      ),
    ),
  );

  IconData? shownIcon(WidgetTester tester) => tester
      .widget<Icon>(
        find.descendant(
          of: find.byKey(SelectAllOrNoneButtonTestKeys.button),
          matching: find.byType(Icon),
        ),
      )
      .icon;

  testWidgets('offers to select all while some shown items are unselected', (
    tester,
  ) async {
    await pumpButton(tester, areAllShownItemsSelected: false);
    expect(shownIcon(tester), Symbols.select_all);

    await tester.tap(find.byKey(SelectAllOrNoneButtonTestKeys.button));

    expect(invokedCallbacks, ['select all']);
  });

  testWidgets('offers to select none once every shown item is selected', (
    tester,
  ) async {
    await pumpButton(tester, areAllShownItemsSelected: true);
    expect(shownIcon(tester), Symbols.deselect);

    await tester.tap(find.byKey(SelectAllOrNoneButtonTestKeys.button));

    expect(invokedCallbacks, ['select none']);
  });
}
