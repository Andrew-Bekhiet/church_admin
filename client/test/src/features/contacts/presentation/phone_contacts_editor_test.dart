import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../utils.dart';

void main() {
  const father = PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true);

  const ownMain = PhoneContact(
    id: 'own-main',
    phone: '+201001111111',
    isMainPhone: true,
    owner: PersonPhoneOwner('child'),
  );
  const ownWork = PhoneContact(
    id: 'own-work',
    phone: '+201002222222',
    label: 'عمل',
    owner: PersonPhoneOwner('child'),
  );

  late PhoneContactsEditorCubit cubit;
  final formKey = GlobalKey<FormState>();

  setUp(() async {
    cubit = PhoneContactsEditorCubit(
      dao: _FakeContactsDAO(own: [ownMain, ownWork], roles: [father]),
      newKey: () => 'new',
    );
    addTearDown(cubit.close);
    await cubit.load(personId: 'child', familyId: 'family');
  });
  tearDown(defaultTearDown);

  Future<void> pumpEditor(WidgetTester tester) => tester.pumpWidget(
    materialAppWithThemeAndLocale()(
      Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: BlocProvider.value(
              value: cubit,
              child: const PhoneContactsEditor(onImportFromContacts: null),
            ),
          ),
        ),
      ),
    ),
  );

  bool isMain(WidgetTester tester, String key) => tester
      .widget<ChoiceChip>(find.byKey(PhoneContactsEditorKeys.mainChip(key)))
      .selected;

  testWidgets('choosing another number as main moves the أساسي chip', (
    tester,
  ) async {
    await pumpEditor(tester);

    await tester.tap(find.byKey(PhoneContactsEditorKeys.mainChip('own-work')));
    await tester.pump();

    expect(isMain(tester, 'own-work'), isTrue);
    expect(isMain(tester, 'own-main'), isFalse);
  });

  testWidgets("a new number can be labelled as a family member's", (
    tester,
  ) async {
    await pumpEditor(tester);

    await tester.tap(find.byKey(PhoneContactsEditorKeys.addButton));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(PhoneContactsEditorKeys.labelPicker('new')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('رقم الهاتف (الأب)').last);
    await tester.pumpAndSettle();

    expect(
      find.descendant(
        of: find.byKey(PhoneContactsEditorKeys.labelPicker('new')),
        matching: find.text('رقم الهاتف (الأب)'),
      ),
      findsOneWidget,
    );
    expect(find.byKey(PhoneContactsEditorKeys.mainChip('new')), findsNothing);
  });

  testWidgets('a number that is not a phone number fails validation', (
    tester,
  ) async {
    await pumpEditor(tester);

    await tester.enterText(
      find.byKey(PhoneContactsEditorKeys.phoneField('own-work')),
      '0100',
    );
    await tester.pump();
    formKey.currentState?.validate();
    await tester.pump();

    expect(find.text('برجاء ادخال رقم هاتف صالح'), findsOneWidget);
  });
}

class _FakeContactsDAO extends Fake implements ContactsDAO {
  final List<PhoneContact> own;
  final List<PersonType> roles;

  _FakeContactsDAO({required this.own, required this.roles});

  @override
  Future<List<PhoneContact>> fetchOwnContacts({
    required String personId,
  }) async => own;

  @override
  Future<List<FamilyPhoneContact>> fetchFamilyContacts({
    required String familyId,
    String? excludedPersonId,
  }) async => [];

  @override
  Future<List<PersonType>> fetchFamilyRoles() async => roles;
}
