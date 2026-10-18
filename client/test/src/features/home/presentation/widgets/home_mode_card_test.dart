import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

import '../../support/home_widget_pump.dart';

void main() {
  const mode = HomeMode.churchData;

  testWidgets('shows the mode label and what is inside it', (tester) async {
    await HomeWidgetPump.pump(
      tester,
      HomeModeCard(mode: mode, isSelected: false, onTap: () {}),
    );

    expect(find.text(mode.label), findsOneWidget);
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

  for (final isSelected in [true, false]) {
    testWidgets(
      'is exposed to accessibility as a tappable button that is '
      '${isSelected ? '' : 'not '}selected',
      (tester) async {
        final handle = tester.ensureSemantics();
        await HomeWidgetPump.pump(
          tester,
          HomeModeCard(mode: mode, isSelected: isSelected, onTap: () {}),
        );

        expect(
          tester.getSemantics(
            find
                .descendant(
                  of: find.byType(HomeModeCard),
                  matching: find.byType(Semantics),
                )
                .first,
          ),
          isSemantics(
            isButton: true,
            isSelected: isSelected,
            hasSelectedState: true,
            hasTapAction: true,
          ),
        );
        handle.dispose();
      },
    );
  }
}
