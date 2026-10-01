import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../utils.dart';

void main() {
  const father = PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true);
  const mother = PersonType(id: 'mother', name: 'الأم', isFamilyAdmin: true);

  const ownMain = PhoneContact(
    id: 'own-main',
    phone: '+201001111111',
    isMainPhone: true,
  );
  const ownWork = PhoneContact(
    id: 'own-work',
    phone: '+201002222222',
    label: 'عمل',
  );

  final formKey = GlobalKey<FormState>();

  tearDown(defaultTearDown);

  Future<PhoneContactsEditorCubit> pumpEditor(
    WidgetTester tester, {
    List<PhoneContact> own = const [ownMain, ownWork],
    bool familyOnly = false,
    VoidCallback? onImportFromContacts,
  }) async {
    final cubit = PhoneContactsEditorCubit(
      own: own,
      family: const [],
      hasFamily: true,
      familyOnly: familyOnly,
      fetchFamilyRoles: () async => [father, mother],
      newKey: () => 'new',
    );
    addTearDown(cubit.close);

    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Scaffold(
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: BlocProvider.value(
                value: cubit,
                child: PhoneContactsEditor(
                  onImportFromContacts: onImportFromContacts,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    return cubit;
  }

  bool isMain(WidgetTester tester, String key) => tester
      .widget<FilterChip>(find.byKey(PhoneContactDraftFieldKeys.mainChip(key)))
      .selected;

  testWidgets('choosing another number as main moves the أساسي chip', (
    tester,
  ) async {
    await pumpEditor(tester);

    await tester.tap(
      find.byKey(PhoneContactDraftFieldKeys.mainChip('own-work')),
    );
    await tester.pump();

    expect(
      (isMain(tester, 'own-work'), isMain(tester, 'own-main')),
      (
        true,
        false,
      ),
    );
  });

  testWidgets("a father's number can be added straight from the family menu", (
    tester,
  ) async {
    final cubit = await pumpEditor(tester, own: []);

    await tester.tap(find.byKey(FamilyPhoneContactMenuButtonKeys.button));
    await tester.pumpAndSettle();
    await tester.tap(
      find.byKey(FamilyPhoneContactMenuButtonKeys.roleItem('father')),
    );
    await tester.pumpAndSettle();

    expect(
      cubit.state.drafts.single.label,
      const RolePhoneContactLabel(father),
    );
  });

  testWidgets("a number can be relabelled as a family member's", (
    tester,
  ) async {
    await pumpEditor(tester);

    await tester.tap(
      find.byKey(PhoneContactDraftFieldKeys.labelPicker('own-work')),
    );
    await tester.pumpAndSettle();
    await tester.tap(
      find.byKey(PhoneContactLabelPickerKeys.roleItem('mother')),
    );
    await tester.pumpAndSettle();

    expect(
      find.byKey(PhoneContactDraftFieldKeys.mainChip('own-work')),
      findsNothing,
    );
  });

  testWidgets('importing from contacts is offered as a labelled button', (
    tester,
  ) async {
    var imported = false;
    await pumpEditor(tester, onImportFromContacts: () => imported = true);

    await tester.tap(find.byKey(PhoneContactsEditorKeys.importButton));

    expect(imported, isTrue);
  });

  testWidgets('a family editor only offers family roles', (tester) async {
    await pumpEditor(tester, own: [], familyOnly: true);

    expect(find.byKey(PhoneContactsEditorKeys.addButton), findsNothing);
    expect(
      find.byKey(FamilyPhoneContactMenuButtonKeys.button),
      findsOneWidget,
    );
  });

  testWidgets('a number that is not a phone number fails validation', (
    tester,
  ) async {
    await pumpEditor(tester);

    await tester.enterText(
      find.byKey(PhoneContactDraftFieldKeys.phoneField('own-work')),
      '0100',
    );
    await tester.pump();
    formKey.currentState?.validate();
    await tester.pump();

    expect(find.text('برجاء ادخال رقم هاتف صالح'), findsOneWidget);
  });
}
