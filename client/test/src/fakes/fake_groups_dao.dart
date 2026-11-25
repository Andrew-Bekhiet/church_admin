import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart' show Uuid;

import 'fake_object_writes.dart';

class FakeGroupsDAO extends Fake
    with FakeObjectWrites<Group>
    implements GroupsDAO {
  @override
  Group withIdAssignedByServer(Group newObject) =>
      newObject.copyWith(id: const Uuid().v4());
}
