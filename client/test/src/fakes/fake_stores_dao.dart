import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fake_object_writes.dart';

class FakeStoresDAO extends Fake
    with FakeObjectWrites<Store>
    implements StoresDAO {}
