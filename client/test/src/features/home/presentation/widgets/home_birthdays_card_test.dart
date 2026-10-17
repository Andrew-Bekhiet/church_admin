import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../support/home_widget_pump.dart';

void main() {
  const birthdays = HomeBirthdays(names: ['ann', 'ben']);

  Future<void> pumpCard(WidgetTester tester, {void Function()? onTap}) {
    return HomeWidgetPump.pump(
      tester,
      HomeBirthdaysCard(birthdays: birthdays, onTap: onTap ?? () {}),
    );
  }

  testWidgets('shows the birthdays preview', (tester) async {
    await pumpCard(tester);

    expect(find.text(birthdays.preview), findsOneWidget);
  });

  testWidgets('tapping it calls onTap', (tester) async {
    var taps = 0;
    await pumpCard(tester, onTap: () => taps++);

    await tester.tap(find.byType(HomeBirthdaysCard));

    expect(taps, 1);
  });
}
