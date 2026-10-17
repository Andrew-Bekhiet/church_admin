import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../support/home_widget_pump.dart';

void main() {
  const mode = HomeMode.churchData;

  testWidgets('shows the mode label and what is inside it', (tester) async {
    await HomeWidgetPump.pump(
      tester,
      HomeModeCard(mode: mode, isSelected: false, onTap: () {}),
    );

    expect(find.text(mode.label), findsOneWidget);
    expect(find.text(mode.contents), findsOneWidget);
  });

  testWidgets('shows the mode icon', (tester) async {
    await HomeWidgetPump.pump(
      tester,
      HomeModeCard(mode: mode, isSelected: false, onTap: () {}),
    );

    expect(find.byIcon(mode.icon), findsOneWidget);
  });

  testWidgets('shows a check when selected', (tester) async {
    await HomeWidgetPump.pump(
      tester,
      HomeModeCard(mode: mode, isSelected: true, onTap: () {}),
    );

    expect(find.byIcon(Symbols.check_circle), findsOneWidget);
  });

  testWidgets('shows no check when not selected', (tester) async {
    await HomeWidgetPump.pump(
      tester,
      HomeModeCard(mode: mode, isSelected: false, onTap: () {}),
    );

    expect(find.byIcon(Symbols.check_circle), findsNothing);
  });
}
