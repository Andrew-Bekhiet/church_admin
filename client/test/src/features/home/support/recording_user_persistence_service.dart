import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

enum UserPresenceRecord { active, lastSeen }

class RecordingUserPersistenceService extends Fake
    implements UserPersistenceService {
  final List<UserPresenceRecord> records = [];

  @override
  Future<void> recordActive() async => records.add(UserPresenceRecord.active);

  @override
  Future<void> recordLastSeen() async =>
      records.add(UserPresenceRecord.lastSeen);
}
