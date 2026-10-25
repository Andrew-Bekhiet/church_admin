import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../fakes/fake_person_types_dao.dart';
import '../../../material_ui_test_app.dart';
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

  tearDown(defaultTearDown);

  Future<PhoneContactsFormController> pumpEditor(
    WidgetTester tester, {
    List<PhoneContact> own = const [ownMain, ownWork],
    bool familyOnly = false,
    VoidCallback? onImportFromContacts,
  }) async {
    final form = PhoneContactsFormController(
      own: own,
      family: const [],
      familyOnly: familyOnly,
      newKey: () => 'new',
    )..setValidationMode(ValidationMode.onUserInteraction);
    addTearDown(form.dispose);
    final familyRoles = FamilyRolesCubit(
      FakePersonTypesDAO()..familyRoles = [father, mother],
    );
    addTearDown(familyRoles.close);
    await familyRoles.load();

    await tester.pumpWidget(
      MaterialUiTestApp.withThemeAndLocale(
        child: Scaffold(
          body: SingleChildScrollView(
            child: BlocProvider.value(
              value: familyRoles,
              child: PhoneContactsEditor(
                form: form,
                onImportFromContacts: onImportFromContacts,
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    return form;
  }

  bool isMain(WidgetTester tester, String key) => tester
      .widget<FilterChip>(find.byKey(PhoneContactRowFieldKeys.mainChip(key)))
      .selected;

  testWidgets('choosing another number as main moves the أساسي chip', (
    tester,
  ) async {
    await pumpEditor(tester);

    await tester.tap(
      find.byKey(PhoneContactRowFieldKeys.mainChip('own-work')),
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
    final form = await pumpEditor(tester, own: []);

    await tester.tap(find.byKey(FamilyPhoneContactMenuButtonKeys.button));
    await tester.pumpAndSettle();
    await tester.tap(
      find.byKey(FamilyPhoneContactMenuButtonKeys.roleItem('father')),
    );
    await tester.pumpAndSettle();

    expect(
      form.rows.fieldValue.single.label.fieldValue,
      const RolePhoneContactLabel(father),
    );
  });

  testWidgets("a number can be relabelled as a family member's", (
    tester,
  ) async {
    await pumpEditor(tester);

    await tester.tap(
      find.byKey(PhoneContactRowFieldKeys.labelPicker('own-work')),
    );
    await tester.pumpAndSettle();
    await tester.tap(
      find.byKey(PhoneContactLabelPickerKeys.roleItem('mother')),
    );
    await tester.pumpAndSettle();

    expect(
      find.byKey(PhoneContactRowFieldKeys.mainChip('own-work')),
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
    final form = await pumpEditor(tester);

    await tester.enterText(
      find.byKey(PhoneContactRowFieldKeys.phoneField('own-work')),
      '0100',
    );
    await form.validate();
    await tester.pump();

    expect(find.text(PhoneContactError.invalidPhone.message), findsOneWidget);
  });

  testWidgets('an untouched saved number shows no error', (tester) async {
    await pumpEditor(tester);

    expect(find.text(PhoneContactError.invalidPhone.message), findsNothing);
  });

  testWidgets('a number that is not a phone number shows why while typed', (
    tester,
  ) async {
    await pumpEditor(tester);

    await tester.enterText(
      find.byKey(PhoneContactRowFieldKeys.phoneField('own-work')),
      '0100',
    );
    await tester.pump();

    expect(find.text(PhoneContactError.invalidPhone.message), findsOneWidget);
  });
}
