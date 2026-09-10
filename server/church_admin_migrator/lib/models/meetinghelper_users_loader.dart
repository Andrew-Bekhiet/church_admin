import 'package:church_admin_migrator/models/meetinghelper/models/data/meeting_helper_user.dart';
import 'package:dart_firebase_admin/dart_firebase_admin.dart';
import 'package:dart_firebase_admin/firestore.dart';

class MeetingHelperUsersLoader {
  static Future<Map<String, MeetingHelperUser>> load(
    FirebaseAdminApp app,
  ) async {
    final snapshot = await Firestore(app).collection('UsersData').get();
    final users = <String, MeetingHelperUser>{};

    for (final doc in snapshot.docs) {
      if (!doc.exists || doc.id == 'null' || doc.data().isEmpty) continue;

      users[doc.id] = MeetingHelperUser.fromJson(doc.data(), doc.id);
    }

    return users;
  }
}
