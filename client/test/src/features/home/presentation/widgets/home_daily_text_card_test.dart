import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../support/home_widget_pump.dart';

void main() {
  const type = HomeDailyDataType.saying;
  const text = 'a saying worth reading';

  Future<void> pumpCard(WidgetTester tester, {void Function()? onTap}) {
    return HomeWidgetPump.pump(
      tester,
      HomeDailyTextCard(type: type, text: text, onTap: onTap ?? () {}),
    );
  }

  testWidgets('shows the type title and the text', (tester) async {
    await pumpCard(tester);

    expect(find.text(type.title), findsOneWidget);
    expect(find.text(text), findsOneWidget);
  });

  testWidgets('shows the type icon', (tester) async {
    await pumpCard(tester);

    expect(find.byIcon(type.icon), findsOneWidget);
  });

  testWidgets('tapping it calls onTap', (tester) async {
    var taps = 0;
    await pumpCard(tester, onTap: () => taps++);

    await tester.tap(find.byType(HomeDailyTextCard));

    expect(taps, 1);
  });
}
