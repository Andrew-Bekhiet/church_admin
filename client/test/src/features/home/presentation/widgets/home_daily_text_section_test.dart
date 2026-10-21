import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../support/home_widget_pump.dart';

void main() {
  const quote = 'a saying worth reading';
  const reference = '(a father)';
  const rawSaying = '$quote\n$reference';
  const sneksarDate = 'a date';
  const sneksarFirst = 'first commemoration';
  const sneksarSecond = 'second commemoration';
  const rawSneksar = '$sneksarDate\n\n1-$sneksarFirst\n2- $sneksarSecond';

  testWidgets('shows the type title and icon in the header', (tester) async {
    const type = HomeDailyDataType.saying;
    await HomeWidgetPump.pump(
      tester,
      HomeDailyTextSection(type: type, text: rawSaying, onTap: () {}),
    );

    expect(find.text(type.title), findsOneWidget);
    expect(find.byIcon(type.icon), findsOneWidget);
  });

  testWidgets('shows a saying and its reference as separate texts', (
    tester,
  ) async {
    await HomeWidgetPump.pump(
      tester,
      HomeDailyTextSection(
        type: HomeDailyDataType.saying,
        text: rawSaying,
        onTap: () {},
      ),
    );

    expect(find.text(quote), findsOneWidget);
    expect(find.text(reference), findsOneWidget);
  });

  testWidgets('shows the sneksar date and each commemoration', (tester) async {
    await HomeWidgetPump.pump(
      tester,
      HomeDailyTextSection(
        type: HomeDailyDataType.sneksar,
        text: rawSneksar,
        onTap: () {},
      ),
    );

    expect(find.text(sneksarDate), findsOneWidget);
    expect(find.text(sneksarFirst), findsOneWidget);
    expect(find.text(sneksarSecond), findsOneWidget);
  });

  testWidgets('numbers the commemorations with Arabic-Indic digits', (
    tester,
  ) async {
    await HomeWidgetPump.pump(
      tester,
      HomeDailyTextSection(
        type: HomeDailyDataType.sneksar,
        text: rawSneksar,
        onTap: () {},
      ),
    );

    expect(find.text('١'), findsOneWidget);
    expect(find.text('٢'), findsOneWidget);
  });

  testWidgets('is exposed to accessibility as a tappable section', (
    tester,
  ) async {
    const type = HomeDailyDataType.saying;
    final handle = tester.ensureSemantics();
    await HomeWidgetPump.pump(
      tester,
      HomeDailyTextSection(type: type, text: rawSaying, onTap: () {}),
    );

    expect(
      tester.getSemantics(find.byType(InkWell)),
      isSemantics(
        label: '${type.title}\n$quote\n$reference\nاقرأ المزيد',
        hasTapAction: true,
      ),
    );
    handle.dispose();
  });
}
