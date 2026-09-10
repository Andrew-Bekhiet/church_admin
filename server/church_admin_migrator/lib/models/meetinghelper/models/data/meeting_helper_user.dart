import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:dart_firebase_admin/firestore.dart';

class MeetingHelperUser {
  static DateTime? _toDateTime(Timestamp? timestamp) {
    if (timestamp == null) return null;

    return DateTime.fromMillisecondsSinceEpoch(timestamp.seconds * 1000);
  }

  static Set<String> _decamelisePermissions(Map<String, Object?>? raw) {
    if (raw == null) return {};

    return raw.entries
        .where((entry) => entry.value.toString() == 'true')
        .map((entry) => entry.key[0].toLowerCase() + entry.key.substring(1))
        .toSet();
  }

  final String uid;
  final String personId;
  final String name;
  final String? email;
  final IdReference? classId;
  final List<String> allowedUsers;
  final List<IdReference> adminServices;
  final Set<String> permissions;
  final DateTime? lastTanawol;
  final DateTime? lastConfession;

  MeetingHelperUser({
    required this.uid,
    required this.personId,
    required this.name,
    this.email,
    this.classId,
    this.allowedUsers = const [],
    this.adminServices = const [],
    this.permissions = const {},
    this.lastTanawol,
    this.lastConfession,
  });

  factory MeetingHelperUser.fromJson(Map<String, Object?> json, String docId) {
    return MeetingHelperUser(
      uid: json['UID'] as String? ?? '',
      personId: docId,
      name: json['Name'] as String? ?? '',
      email: json['Email'] as String?,
      classId: (json['ClassId'] as DocumentReference?)?.toIdReference(),
      allowedUsers: (json['AllowedUsers'] as List?)?.cast<String>() ?? [],
      adminServices:
          (json['AdminServices'] as List?)
              ?.map((e) => (e as DocumentReference).toIdReference())
              .toList() ??
          [],
      permissions: _decamelisePermissions(
        (json['Permissions'] as Map?)?.cast<String, Object?>(),
      ),
      lastTanawol: _toDateTime(json['LastTanawol'] as Timestamp?),
      lastConfession: _toDateTime(json['LastConfession'] as Timestamp?),
    );
  }

  Map<String, Object?> toJson() => {
    'UID': uid,
    'Name': name,
    'Email': email,
    'ClassId': classId,
    'AllowedUsers': allowedUsers,
    'AdminServices': adminServices,
    'Permissions': {for (final permission in permissions) permission: true},
    'LastTanawol': lastTanawol,
    'LastConfession': lastConfession,
  };
}
