import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:posthog_flutter/posthog_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() {
  Future<void> pumpUnmaskedLabel(WidgetTester tester) => tester.pumpWidget(
    const Directionality(
      textDirection: TextDirection.rtl,
      child: SessionReplayUnmask(child: Text('الإعدادات')),
    ),
  );

  Finder ancestorOfLabel(Type type) => find.ancestor(
    of: find.text('الإعدادات'),
    matching: find.byType(type),
  );

  testWidgets('the label is revealed in PostHog replays', (tester) async {
    await pumpUnmaskedLabel(tester);

    expect(ancestorOfLabel(PostHogUnmaskWidget), findsOneWidget);
  });

  testWidgets('the label is revealed in Sentry replays', (tester) async {
    await pumpUnmaskedLabel(tester);

    // Sentry has no stable unmask API to assert against instead.
    // ignore: experimental_member_use
    expect(ancestorOfLabel(SentryUnmask), findsOneWidget);
  });
}
