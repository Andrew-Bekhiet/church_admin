import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../support/home_widget_pump.dart';

void main() {
  const type = HomeDailyDataType.saying;
  const text = 'a saying worth reading';

  testWidgets('shows the type title and the text', (tester) async {
    await HomeWidgetPump.pump(
      tester,
      HomeDailyTextCard(type: type, text: text, onTap: () {}),
    );

    expect(find.text(type.title), findsOneWidget);
    expect(find.text(text), findsOneWidget);
  });

  testWidgets('shows the type icon', (tester) async {
    await HomeWidgetPump.pump(
      tester,
      HomeDailyTextCard(type: type, text: text, onTap: () {}),
    );

    expect(find.byIcon(type.icon), findsOneWidget);
  });

  testWidgets('is exposed to accessibility as a tappable title and text', (
    tester,
  ) async {
    final handle = tester.ensureSemantics();
    await HomeWidgetPump.pump(
      tester,
      HomeDailyTextCard(type: type, text: text, onTap: () {}),
    );

    expect(
      tester.getSemantics(find.byType(InkWell)),
      isSemantics(
        label: '${type.title}\n$text\nاقرأ المزيد',
        hasTapAction: true,
      ),
    );
    handle.dispose();
  });
}
