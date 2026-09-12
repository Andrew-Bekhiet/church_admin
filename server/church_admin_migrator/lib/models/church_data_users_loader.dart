import 'package:church_admin_migrator/models/church_data/models/church_data_user.dart';
import 'package:firebase_admin_sdk/firebase_admin_sdk.dart';
import 'package:logger/logger.dart';

class ChurchDataUsersLoader {
  static Future<Map<String, ChurchDataUser>> load(FirebaseApp app) async {
    final claimsUsers = await _loadFromAuthClaims(app);
    final firestoreExtras = await _loadFirestoreExtras(app);

    return claimsUsers.map(
      (uid, user) =>
          MapEntry(uid, _withFirestoreExtras(user, firestoreExtras[uid])),
    );
  }

  static Map<String, ChurchDataUser> fromCache(
    Map<String, dynamic> contextJson,
  ) {
    if (contextJson['users'] case final Map usersJson) {
      return usersJson.cast<String, dynamic>().map(
        (uid, value) => MapEntry(
          uid,
          ChurchDataUser.fromJson((value as Map).cast<String, Object?>()),
        ),
      );
    }

    Logger().w(
      'church_data_context_cache.json has no "users" key. Delete the cache '
      'file and re-run the migrator to load users.',
    );

    return {};
  }

  static Map<String, dynamic> toJson(Map<String, ChurchDataUser> users) {
    return users.map((uid, user) => MapEntry(uid, user.toJson()));
  }

  static Future<Map<String, ChurchDataUser>> _loadFromAuthClaims(
    FirebaseApp app,
  ) async {
    final auth = app.auth();
    final users = <String, ChurchDataUser>{};
    String? pageToken;

    do {
      final page = await auth.listUsers(maxResults: 1000, pageToken: pageToken);

      for (final record in page.users) {
        users[record.uid] = ChurchDataUser.fromCustomClaims(
          uid: record.uid,
          email: record.email,
          displayName: record.displayName,
          claims: record.customClaims ?? {},
        );
      }

      pageToken = page.pageToken;
    } while (pageToken != null);

    return users;
  }

  static Future<Map<String, ({String? name, List<String> allowedUsers})>>
  _loadFirestoreExtras(FirebaseApp app) async {
    final snapshot = await app.firestore().collection('Users').get();
    final extras = <String, ({String? name, List<String> allowedUsers})>{};

    for (final doc in snapshot.docs) {
      if (!doc.exists || doc.id == 'null' || doc.data().isEmpty) continue;

      final data = doc.data();

      extras[doc.id] = (
        name: (data['Name'] ?? data['name']) as String?,
        allowedUsers:
            (data['allowedUsers'] as List?)?.cast<String>() ?? const [],
      );
    }

    return extras;
  }

  static ChurchDataUser _withFirestoreExtras(
    ChurchDataUser user,
    ({String? name, List<String> allowedUsers})? extras,
  ) {
    return ChurchDataUser(
      uid: user.uid,
      name: _resolveName(user.name, extras?.name, user.email, user.uid),
      email: user.email,
      personRef: user.personRef,
      allowedUsers: extras?.allowedUsers ?? const [],
      approved: user.approved,
      superAccess: user.superAccess,
      write: user.write,
      manageUsers: user.manageUsers,
      manageAllowedUsers: user.manageAllowedUsers,
      manageDeleted: user.manageDeleted,
      exportAreas: user.exportAreas,
      approveLocations: user.approveLocations,
      birthdayNotify: user.birthdayNotify,
      confessionsNotify: user.confessionsNotify,
      tanawolNotify: user.tanawolNotify,
    );
  }

  static String _resolveName(
    String claimsName,
    String? firestoreName,
    String? email,
    String uid,
  ) {
    if (claimsName.isNotEmpty) return claimsName;
    if (firestoreName case final name? when name.isNotEmpty) return name;
    if (email case final value? when value.contains('@')) {
      return value.split('@').first;
    }

    return uid;
  }
}
