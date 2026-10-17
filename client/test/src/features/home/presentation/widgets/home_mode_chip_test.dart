import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../support/home_widget_pump.dart';

void main() {
  const mode = HomeMode.sundaySchool;

  Future<void> pumpChip(WidgetTester tester, {void Function()? onPressed}) {
    return HomeWidgetPump.pump(
      tester,
      HomeModeChip(mode: mode, onPressed: onPressed ?? () {}),
    );
  }

  testWidgets('shows the label of the current mode', (tester) async {
    await pumpChip(tester);

    expect(find.text(mode.label), findsOneWidget);
  });

  testWidgets('shows the icon of the current mode', (tester) async {
    await pumpChip(tester);

    expect(find.byIcon(mode.icon), findsOneWidget);
  });

  testWidgets('has a tooltip naming the other mode', (tester) async {
    await pumpChip(tester);

    expect(find.byTooltip('تبديل إلى ${mode.other.label}'), findsOneWidget);
  });

  testWidgets('pressing it calls onPressed', (tester) async {
    var presses = 0;
    await pumpChip(tester, onPressed: () => presses++);

    await tester.tap(find.byType(HomeModeChip));

    expect(presses, 1);
  });
}
