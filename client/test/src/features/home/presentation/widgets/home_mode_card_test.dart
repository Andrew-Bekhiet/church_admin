import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../support/home_widget_pump.dart';

void main() {
  const mode = HomeMode.churchData;

  Future<void> pumpCard(
    WidgetTester tester, {
    bool isSelected = false,
    void Function()? onTap,
  }) {
    return HomeWidgetPump.pump(
      tester,
      HomeModeCard(mode: mode, isSelected: isSelected, onTap: onTap ?? () {}),
    );
  }

  testWidgets('shows the mode label and what is inside it', (tester) async {
    await pumpCard(tester);

    expect(find.text(mode.label), findsOneWidget);
    expect(find.text(mode.contents), findsOneWidget);
  });

  testWidgets('shows the mode icon', (tester) async {
    await pumpCard(tester);

    expect(find.byIcon(mode.icon), findsOneWidget);
  });

  testWidgets('shows a check when selected', (tester) async {
    await pumpCard(tester, isSelected: true);

    expect(find.byIcon(Symbols.check_circle), findsOneWidget);
  });

  testWidgets('shows no check when not selected', (tester) async {
    await pumpCard(tester);

    expect(find.byIcon(Symbols.check_circle), findsNothing);
  });

  testWidgets('tapping it calls onTap', (tester) async {
    var taps = 0;
    await pumpCard(tester, onTap: () => taps++);

    await tester.tap(find.byType(HomeModeCard));

    expect(taps, 1);
  });
}
