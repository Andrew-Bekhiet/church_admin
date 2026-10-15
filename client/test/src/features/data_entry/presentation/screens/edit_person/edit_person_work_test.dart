import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  const family = Family(id: 'family-id', name: 'أسرة');
  final employed = Person(
    id: 'person-id',
    name: 'مينا',
    family: family,
    familyId: family.id,
  );

  late EditPersonScreenHarness harness;

  Future<void> chooseWorkStatus(WidgetTester tester, WorkStatus status) async {
    await harness.scrollTo(tester, find.text(WorkStatus.employed.label));
    await tester.tap(find.text(WorkStatus.employed.label));
    await tester.pumpAndSettle();
    await tester.tap(find.text(status.label).last);
    await tester.pumpAndSettle();
  }

  setUp(() {
    harness = EditPersonScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('an employed person is asked for the job and its description', (
    tester,
  ) async {
    await harness.open(tester, UpdatePerson(person: employed));

    expect(find.text('الوظيفة'), findsOneWidget);
    expect(find.text('تفاصيل الوظيفة'), findsOneWidget);
    expect(find.text('المؤهل'), findsOneWidget);
  });

  testWidgets('choosing the student status asks for the study year instead '
      'of the qualification', (tester) async {
    await harness.open(tester, UpdatePerson(person: employed));

    await chooseWorkStatus(tester, WorkStatus.student);

    expect(find.text('السنة الدراسية'), findsOneWidget);
    expect(find.text('المدرسة'), findsOneWidget);
    expect(find.text('المؤهل'), findsNothing);
  });

  testWidgets('choosing the student status stops asking for the job', (
    tester,
  ) async {
    await harness.open(tester, UpdatePerson(person: employed));

    await chooseWorkStatus(tester, WorkStatus.student);

    expect(find.text('الوظيفة'), findsNothing);
    expect(find.text('تفاصيل الوظيفة'), findsNothing);
  });

  testWidgets('a student in a university year is asked for the college', (
    tester,
  ) async {
    final student = employed.copyWith(
      workStatus: WorkStatus.student,
      studyYear: StudyYear(order: 13, name: 'الأولى بالجامعة'),
    );
    await harness.open(tester, UpdatePerson(person: student));

    expect(find.text('الكلية'), findsOneWidget);
    expect(find.text('المدرسة'), findsNothing);
  });

  testWidgets('the chosen work status is saved', (tester) async {
    await harness.open(tester, UpdatePerson(person: employed));

    await chooseWorkStatus(tester, WorkStatus.retired);
    await harness.tapSave(tester);

    expect(
      harness.persons.updatedPeople.single.workStatus,
      WorkStatus.retired,
    );
  });
}
