import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../material_ui_test_app.dart';

void main() {
  Future<void> pumpPermissions(
    WidgetTester tester,
    Set<UserPermission> permissions,
  ) => tester.pumpWidget(
    MaterialUiTestApp.withThemeAndLocale(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: PermissionsSetWidget(
            permissions: PermissionsSet.fromSet(permissions),
          ),
        ),
      ),
    ),
  );

  testWidgets(
    'a granted scope-bound permission is listed under the scope-bound section',
    (tester) async {
      await pumpPermissions(tester, {
        UserPermission.approved,
        UserPermission.readAllData,
        UserPermission.manageFingerprintIds,
      });

      expect(
        find.descendant(
          of: find.byKey(
            PermissionsSetWidgetKeys.sectionFor(
              UserPermissionSection.scopeBound,
            ),
          ),
          matching: find.byKey(
            PermissionsSetWidgetKeys.permissionFor(
              UserPermission.manageFingerprintIds,
            ),
          ),
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'a granted general permission is listed under the general section',
    (tester) async {
      await pumpPermissions(tester, {
        UserPermission.approved,
        UserPermission.readAllData,
        UserPermission.manageFingerprintIds,
      });

      expect(
        find.descendant(
          of: find.byKey(
            PermissionsSetWidgetKeys.sectionFor(UserPermissionSection.general),
          ),
          matching: find.byKey(
            PermissionsSetWidgetKeys.permissionFor(UserPermission.readAllData),
          ),
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets('a section without a granted permission is hidden', (
    tester,
  ) async {
    await pumpPermissions(tester, {
      UserPermission.approved,
      UserPermission.readAllData,
    });

    expect(
      find.byKey(
        PermissionsSetWidgetKeys.sectionFor(UserPermissionSection.scopeBound),
      ),
      findsNothing,
    );
  });
}
