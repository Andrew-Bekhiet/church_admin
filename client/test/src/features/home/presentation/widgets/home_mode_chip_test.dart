import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../support/home_widget_pump.dart';

void main() {
  const mode = HomeMode.sundaySchool;

  testWidgets('shows the label of the current mode', (tester) async {
    await HomeWidgetPump.pump(
      tester,
      HomeModeChip(mode: mode, onPressed: () {}),
    );

    expect(find.text(mode.label), findsOneWidget);
  });

  testWidgets('shows the icon of the current mode', (tester) async {
    await HomeWidgetPump.pump(
      tester,
      HomeModeChip(mode: mode, onPressed: () {}),
    );

    expect(find.byIcon(mode.icon), findsOneWidget);
  });

  testWidgets('has a tooltip naming the other mode', (tester) async {
    await HomeWidgetPump.pump(
      tester,
      HomeModeChip(mode: mode, onPressed: () {}),
    );

    expect(find.byTooltip('تبديل إلى ${mode.other.label}'), findsOneWidget);
  });

  testWidgets('is exposed to accessibility as a button naming the other mode', (
    tester,
  ) async {
    final handle = tester.ensureSemantics();
    await HomeWidgetPump.pump(
      tester,
      HomeModeChip(mode: mode, onPressed: () {}),
    );

    expect(
      tester.getSemantics(find.byType(ActionChip)),
      isSemantics(
        isButton: true,
        hasTapAction: true,
        label: mode.label,
        tooltip: 'تبديل إلى ${mode.other.label}',
      ),
    );
    handle.dispose();
  });
}
