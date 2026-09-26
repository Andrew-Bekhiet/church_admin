import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/edit_user_form.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_identity_fields.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_invitation_code_tile.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_person_link_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'e2e_app.dart';
import 'e2e_widget_tester.dart';

class UserManagementRobot {
  final WidgetTester tester;
  final String password;

  Finder get _addUserButton => find.byKey(ManageUsersScreenKeys.addUserButton);
  Finder get _saveButton => find.byKey(EditUserScreenKeys.saveButton);
  Finder get _selectionDialog => find.byType(AlertDialog);

  const UserManagementRobot(this.tester, {required this.password});

  Future<void> openManageUsers() async {
    await E2eApp.openDrawerItem(tester, HomeDrawerKeys.manageUsers);
    await E2eApp.unlock(tester, password);
    await tester.waitFor(_addUserButton);
  }

  Future<void> showUsersAsFlatList() async {
    await tester.tapOn(
      find.byKey(ManageUsersViewToggleKeys.showFlatListButton),
    );
  }

  Future<void> backToManageUsers() async {
    await tester.tapOn(find.byType(BackButton));
    await tester.waitFor(_addUserButton);
  }

  Future<void> startCreatingUser() async {
    await tester.tapOn(_addUserButton);
    await tester.waitFor(_saveButton);
  }

  Future<void> fillNewPerson({
    required String name,
    required String email,
  }) async {
    await tester.tapOn(
      find.byKey(UserPersonLinkFieldKeys.createNewPersonSegment),
    );
    await tester.typeInto(find.byKey(UserIdentityFieldsKeys.nameField), name);
    await tester.typeInto(find.byKey(UserIdentityFieldsKeys.emailField), email);
  }

  Future<void> fillExistingPerson({
    required String personId,
    required String personName,
    required String email,
  }) async {
    await tester.tapOn(
      find.byKey(UserPersonLinkFieldKeys.linkExistingPersonSegment),
    );
    await pickPerson(personId: personId, personName: personName);
    await tester.typeInto(find.byKey(UserIdentityFieldsKeys.emailField), email);
  }

  Future<void> pickPerson({
    required String personId,
    required String personName,
  }) async {
    await tester.tapOn(find.byKey(UserPersonLinkFieldKeys.personField));
    await tester.typeInto(
      find.descendant(of: _selectionDialog, matching: find.byType(TextField)),
      personName,
    );
    await tester.tapOn(
      find.descendant(
        of: _selectionDialog,
        matching: tester.viewableObject(personId),
      ),
    );
    await tester.waitForAbsent(_selectionDialog);
  }

  Future<void> grantPermission(UserPermission permission) async {
    await tester.tapOn(find.byKey(EditUserFormKeys.permission(permission)));
  }

  Future<void> addServiceScope(
    String serviceId, {
    bool managesUsers = false,
  }) async {
    final scope = find.byKey(EditUserAdminScopeWidgetKeys.scope(serviceId));

    await tester.tapOn(find.byKey(EditAdminOnDataWidgetKeys.addScopeButton));
    await tester.tapOn(find.byKey(EditAdminOnDataWidgetKeys.servicesTab));
    await tester.tapOn(tester.viewableObject(serviceId));
    await tester.tapOn(
      find.byKey(EditAdminOnDataWidgetKeys.confirmScopesButton),
    );

    if (!managesUsers) return;

    await tester.tapOn(scope);

    for (final checkbox in [
      AdminScopePermissionCheckboxesKeys.writeDataCheckbox,
      AdminScopePermissionCheckboxesKeys.manageUsersCheckbox,
    ]) {
      await tester.tapOn(
        find.descendant(of: scope, matching: find.byKey(checkbox)),
      );
    }
  }

  Future<String> saveAndReadInvitationCode() async {
    await tester.tapOn(_saveButton);
    final code = await tester.waitFor(
      find.byKey(UserInvitationCodeTileKeys.code),
    );

    return tester.widget<Text>(code).data ?? '';
  }

  Future<void> roundTripThroughLinkedPerson(String uid) async {
    final linkedUserButton = find.byKey(
      PersonChurchSectionKeys.linkedUserButton,
    );

    await tester.tapOn(find.byKey(ViewUserScreenKeys.linkedPerson));
    final personScreen = await tester.waitFor(find.byType(ViewPerson));
    await tester.waitForAbsent(
      find.descendant(
        of: personScreen,
        matching: find.byType(CircularProgressIndicator),
      ),
    );
    final personDetails = await tester.waitFor(
      find
          .descendant(of: personScreen, matching: find.byType(Scrollable))
          .first,
    );
    await tester.scrollUntilVisible(
      linkedUserButton,
      300,
      scrollable: personDetails,
    );
    await tester.tapOn(linkedUserButton);
    await tester.waitFor(
      find.byWidgetPredicate(
        (widget) => widget is ViewUser && widget.userId == uid,
      ),
    );
  }

  Future<void> changeLinkedPerson({
    required String personId,
    required String personName,
  }) async {
    await tester.tapOn(find.byKey(ViewUserScreenKeys.editButton));
    await tester.waitFor(_saveButton);
    await pickPerson(personId: personId, personName: personName);
    await tester.tapOn(_saveButton);
    await tester.waitForAbsent(_saveButton);
  }
}
