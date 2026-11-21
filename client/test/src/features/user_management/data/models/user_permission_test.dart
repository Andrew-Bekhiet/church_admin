import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('only deleting data, changing data checks and managing fingerprint ids '
      'are bound to the scope of the user', () {
    expect(
      UserPermission.values.where(
        (permission) => permission.section == UserPermissionSection.scopeBound,
      ),
      unorderedEquals({
        UserPermission.deleteData,
        UserPermission.changeDataChecks,
        UserPermission.manageFingerprintIds,
      }),
    );
  });
}
