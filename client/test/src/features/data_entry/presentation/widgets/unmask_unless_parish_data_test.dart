import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Future<Finder> pumpNameAndFindItsUnmask(
    WidgetTester tester,
    Viewable object,
  ) async {
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.rtl,
        child: UnmaskUnlessParishData(
          object: object,
          child: Text(object.name),
        ),
      ),
    );

    return find.ancestor(
      of: find.text(object.name),
      matching: find.byType(SessionReplayUnmask),
    );
  }

  testWidgets("a study year's name is revealed in session replay", (
    tester,
  ) async {
    expect(
      await pumpNameAndFindItsUnmask(
        tester,
        StudyYear(order: 1, name: 'أولى ابتدائي'),
      ),
      findsOneWidget,
    );
  });

  testWidgets("a confession father's name stays masked in session replay", (
    tester,
  ) async {
    expect(
      await pumpNameAndFindItsUnmask(
        tester,
        const Father(id: '1', name: 'أبونا يوحنا'),
      ),
      findsNothing,
    );
  });
}
