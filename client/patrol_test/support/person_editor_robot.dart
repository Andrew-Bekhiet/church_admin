import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'e2e_app.dart';
import 'e2e_widget_tester.dart';

class PersonEditorRobot {
  final WidgetTester tester;

  Finder get _saveButton => find.byKey(EditPersonSaveButtonKeys.saveButton);
  Finder get _selectionDialog => find.byType(AlertDialog);
  Finder get _addToShownFamilyButton =>
      find.byKey(ViewFamilyKeys.addToCurrentTabButton);
  Finder get _addPersonToClassButton =>
      find.byKey(ViewClassKeys.addPersonButton);

  const PersonEditorRobot(this.tester);

  Future<void> openClassFromHome({
    required String serviceId,
    required String classId,
  }) async {
    await E2eApp.openHomeTab(
      tester,
      mode: HomeMode.sundaySchool,
      tab: HomeTab.services,
    );
    await tester.tapOn(tester.viewableObjectCard(serviceId));
    await tester.tapOn(
      find.descendant(
        of: find.byType(ViewService),
        matching: tester.viewableObjectCard(classId),
      ),
    );
    await tester.waitFor(_addPersonToClassButton);
  }

  Future<void> startAddingPersonInShownClass() async {
    await tester.tapOn(_addPersonToClassButton);
    await tester.waitFor(_saveButton);
  }

  void expectAddingToShownFamilyHidden() =>
      expect(_addToShownFamilyButton, findsNothing);

  Future<void> waitForAddingToShownFamilyAllowed() =>
      tester.waitFor(_addToShownFamilyButton.hitTestable());

  Future<void> startAddingPersonToShownFamily() async {
    await tester.tapOn(_addToShownFamilyButton);
    await tester.waitFor(_saveButton);
  }

  Future<void> fillName(String name) => tester.typeInto(
    find.byKey(PersonEditIdentitySectionKeys.nameField),
    name,
  );

  Future<void> chooseStreet({
    required String streetId,
    required String streetName,
    required String areaOfStreetId,
  }) async {
    await _pickIn(
      AddressFormPlaceFieldsKeys.street,
      objectId: streetId,
      search: streetName,
    );
    await tester.waitFor(
      _selectedIn(AddressFormPlaceFieldsKeys.area, areaOfStreetId),
    );
  }

  Future<void> moveToStreetOfAnotherArea({
    required String streetId,
    required String streetName,
    required String areaOfStreetId,
  }) async {
    await tester.tapOn(
      find.descendant(
        of: find.byKey(AddressFormPlaceFieldsKeys.area),
        matching: find.byKey(
          AdvancedSingleObjectSelectionFieldKeys.clearButton,
        ),
      ),
    );
    await chooseStreet(
      streetId: streetId,
      streetName: streetName,
      areaOfStreetId: areaOfStreetId,
    );
  }

  Future<void> chooseArea({
    required String areaId,
    required String areaName,
  }) => _pickIn(
    AddressFormPlaceFieldsKeys.area,
    objectId: areaId,
    search: areaName,
  );

  Future<void> chooseFamily({
    required String familyId,
    required String familyName,
  }) => _pickIn(
    PersonEditHouseholdSectionKeys.familyField,
    objectId: familyId,
    search: familyName,
  );

  Future<void> addFamilyNumber({
    required String roleId,
    required String phone,
  }) async {
    final draftOfRole = find.byWidgetPredicate(
      (widget) => switch (widget) {
        PhoneContactDraftField(
          draft: PhoneContactDraft(label: RolePhoneContactLabel(:final role)),
        ) =>
          role.id == roleId,
        _ => false,
      },
    );

    await tester.waitFor(
      find.byWidgetPredicate(
        (widget) =>
            widget is ButtonStyleButton &&
            widget.key == FamilyPhoneContactMenuButtonKeys.button &&
            widget.enabled,
      ),
    );
    await tester.tapOn(find.byKey(FamilyPhoneContactMenuButtonKeys.button));
    await tester.tapOn(
      find.byKey(FamilyPhoneContactMenuButtonKeys.roleItem(roleId)),
    );
    await tester.typeInto(
      find.descendant(of: draftOfRole, matching: find.byType(TextFormField)),
      phone,
    );
  }

  Future<String> saveNewPerson() async {
    await tester.tapOn(_saveButton);
    await tester.waitForAbsent(find.byType(EditPersonScreen));
    final shownPerson = await tester.waitFor(find.byType(ViewPerson));
    await tester.waitFor(find.byKey(ViewPersonKeys.editButton));

    return tester.widget<ViewPerson>(shownPerson).personId;
  }

  Future<void> openPersonListedInShownClass(String personId) async {
    await waitForPersonListedIn<ViewClass>(personId);
    await tester.tapOn(
      find.descendant(
        of: find.byType(ViewClass),
        matching: tester.viewableObject(personId),
      ),
    );
    await tester.waitFor(find.byKey(ViewPersonKeys.editButton));
  }

  Future<void> startEditingShownPerson() async {
    await tester.tapOn(find.byKey(ViewPersonKeys.editButton));
    await tester.waitFor(_saveButton);
  }

  Future<void> replaceService({
    required String removedServiceId,
    required String addedServiceId,
  }) async {
    await tester.tapOn(find.byKey(PersonEditMembershipsSectionKeys.field));
    await tester.tapOn(
      find.byKey(PersonServiceSelectionPageKeys.checkboxFor(removedServiceId)),
    );
    await tester.tapOn(
      find.byKey(PersonServiceSelectionPageKeys.checkboxFor(addedServiceId)),
    );
    await tester.tapOn(
      find.byKey(PersonServiceSelectionPageKeys.confirmButton),
    );
    await tester.waitForAbsent(find.byType(PersonServiceSelectionPage));
  }

  Future<void> saveEditedPerson() async {
    await _tapSaveOnceMembershipsLoaded();
    await tester.waitForAbsent(find.byType(EditPersonScreen));
    await tester.waitFor(find.byKey(ViewPersonKeys.editButton));
  }

  Future<void> saveConfirmingMoveOutOfSight() async {
    await _tapSaveOnceMembershipsLoaded();
    await tester.tapOn(
      find.descendant(
        of: find.byType(MoveOutOfSightConfirmationDialog),
        matching: find.byKey(ConfirmationDialogKeys.confirmButton),
      ),
    );
    await tester.waitForAbsent(find.byType(EditPersonScreen));
    await tester.waitForAbsent(find.byType(ViewPerson));
  }

  Future<void> waitForShownPersonOnStreetOf({
    required String streetId,
    required String areaId,
  }) async {
    await _revealIn<ViewPerson>(tester.viewableObjectCard(streetId));
    await _revealIn<ViewPerson>(tester.viewableObjectCard(areaId));
  }

  Future<void> waitForPersonGoneFromShownClass(String personId) =>
      tester.waitForAbsent(
        find.descendant(
          of: find.byType(ViewClass),
          matching: tester.viewableObject(personId),
        ),
      );

  Future<void> waitForShownPersonInFamily(String familyId) =>
      _revealIn<ViewPerson>(tester.viewableObjectCard(familyId));

  Future<void> waitForShownFamilyNumber(String contactId) =>
      _revealIn<ViewPerson>(find.byKey(PhoneBookCardKeys.contact(contactId)));

  Future<void> openShownPersonsFamily(String familyId) async {
    final familyCard = tester.viewableObjectCard(familyId);

    await _revealIn<ViewPerson>(familyCard);
    await tester.tapOn(familyCard);
    await tester.waitFor(find.byType(ViewFamily));
  }

  Future<void> backToShownClass() async {
    await tester.tapOn(find.byType(BackButton));
    await tester.waitFor(_addPersonToClassButton);
  }

  Future<void> waitForPersonListedIn<T extends Widget>(String personId) =>
      _revealIn<T>(
        find.descendant(
          of: find.byType(T),
          matching: tester.viewableObject(personId),
        ),
      );

  Future<void> _tapSaveOnceMembershipsLoaded() async {
    await tester.waitFor(
      find.byWidgetPredicate(
        (widget) =>
            widget is FloatingActionButton &&
            widget.key == EditPersonSaveButtonKeys.saveButton &&
            widget.onPressed != null,
      ),
    );
    await tester.tapOn(_saveButton);
  }

  Future<void> _pickIn(
    Key field, {
    required String objectId,
    required String search,
  }) async {
    await tester.tapOn(find.byKey(field));
    await tester.typeInto(
      find.descendant(of: _selectionDialog, matching: find.byType(TextField)),
      search,
    );
    await tester.tapOn(
      find.descendant(
        of: _selectionDialog,
        matching: tester.viewableObject(objectId),
      ),
    );
    await tester.waitForAbsent(_selectionDialog);
    await tester.waitFor(_selectedIn(field, objectId));
  }

  Finder _selectedIn(Key field, String objectId) => find.descendant(
    of: find.byKey(field),
    matching: find.byWidgetPredicate(
      (widget) => switch (widget) {
        TappableInputField(value: ViewableWithID(:final id)) => id == objectId,
        _ => false,
      },
    ),
  );

  Future<void> _revealIn<T extends Widget>(Finder target) async {
    final shownDetails = find
        .descendant(of: find.byType(T), matching: find.byType(Scrollable))
        .first;
    final deadline = DateTime.now().add(E2eWidgetTester.defaultTimeout);

    await tester.waitFor(shownDetails);
    while (target.evaluate().isEmpty) {
      if (DateTime.now().isAfter(deadline)) {
        throw tester.failureShowingScreen(
          'Scrolled ${find.byType(T)} for ${E2eWidgetTester.defaultTimeout} '
          'without finding ${target.toString(describeSelf: true)}',
        );
      }
      await tester.drag(shownDetails, const Offset(0, -300));
      await tester.pump(E2eWidgetTester.pollInterval);
    }
    await tester.ensureVisible(target.first);
    await tester.waitFor(target.hitTestable());
  }
}
