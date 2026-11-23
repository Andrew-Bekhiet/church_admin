import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../material_ui_test_app.dart';

class _MockFingerprintIdsDAO extends Mock implements FingerprintIdsDAO {}

void main() {
  testWidgets('the add button can be scrolled into reach when the numbers and '
      'the form are taller than the screen', (tester) async {
    const shortPhoneWithKeyboardOpen = Size(320, 200);
    final person = Person(id: 'person-id', name: 'اسم المخدوم');
    final fingerprintIds = [
      for (final code in ['1042', '2077', '3051'])
        PersonFingerprintId(
          id: 'id-of-$code',
          employeeCode: code,
          addedAt: DateTime(2026, 1, 9, 12),
          addedBy: const User(uid: 'added-by-id', name: 'مضيف الأرقام'),
        ),
    ];
    final dao = _MockFingerprintIdsDAO();
    when(
      () => dao.streamOfPerson(person.id),
    ).thenAnswer((_) => Stream.value(fingerprintIds));
    final cubit = PersonFingerprintIdsCubit(
      personId: person.id,
      fingerprintIdsDao: dao,
    );
    addTearDown(cubit.close);
    tester.view
      ..physicalSize = shortPhoneWithKeyboardOpen
      ..devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      MaterialUiTestApp.withThemeAndLocale(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: BlocProvider.value(
            value: cubit,
            child: PersonFingerprintIdsSheet(personName: person.name),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.ensureVisible(
      find.byKey(PersonFingerprintIdsSheetKeys.addButton),
    );
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    expect(
      find.byKey(PersonFingerprintIdsSheetKeys.addButton).hitTestable(),
      findsOneWidget,
    );
  });
}
