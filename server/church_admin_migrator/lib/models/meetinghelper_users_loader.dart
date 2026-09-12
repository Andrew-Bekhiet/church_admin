import 'package:church_admin_migrator/models/meetinghelper/models/data/meeting_helper_user.dart';
import 'package:firebase_admin_sdk/firebase_admin_sdk.dart';

class MeetingHelperUsersLoader {
  static Future<Map<String, MeetingHelperUser>> load(FirebaseApp app) async {
    final snapshot = await app.firestore().collection('UsersData').get();
    final users = <String, MeetingHelperUser>{};

    for (final doc in snapshot.docs) {
      if (!doc.exists || doc.id == 'null' || doc.data().isEmpty) continue;

      users[doc.id] = MeetingHelperUser.fromJson(doc.data(), doc.id);
    }

    return users;
  }
}
