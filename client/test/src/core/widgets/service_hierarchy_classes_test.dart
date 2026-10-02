import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../utils.dart';

void main() {
  final third = StudyYear(order: 3, name: 'ثالثة');
  final fourth = StudyYear(order: 4, name: 'رابعة');

  Class class$(String name, {required StudyYear from, StudyYear? to}) => Class(
    id: name,
    name: name,
    studyYear: from,
    studyYearTo: to ?? from,
  );

  Future<void> showClassesOf(WidgetTester tester, List<Class> classes) =>
      tester.pumpWidget(
        materialAppWithThemeAndLocale()(
          Scaffold(
            body: ServiceHierarchyClasses(
              animationValue: 1,
              service: Service(
                id: 'service-id',
                name: 'ابتدائي',
                classes: classes,
              ),
              classBuilder:
                  (
                    context, {
                    required $class,
                    required service,
                    required studyYear,
                  }) => Text($class.name),
            ),
          ),
        ),
      );

  testWidgets(
    'classes spanning the same study years are grouped apart from single-year classes',
    (tester) async {
      await showClassesOf(tester, [
        class$('كشافة', from: third, to: fourth),
        class$('ثالثة أ', from: third),
        class$('كورال', from: third, to: fourth),
        class$('ثالثة ب', from: third),
      ]);

      expect(find.text('ثالثة - رابعة'), findsOneWidget);
      expect(find.text('ثالثة'), findsOneWidget);
    },
  );
}
