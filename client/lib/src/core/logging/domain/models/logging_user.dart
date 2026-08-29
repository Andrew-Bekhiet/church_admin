import 'package:church_admin/church_admin.dart';

class LoggingUser {
  final String id;
  final String firebaseUid;
  final bool emailVerified;
  final bool isMultiFactorEnabled;
  final Json claims;
  final List<String> permissions;
  final List<Json> adminOn;
  final String? email;
  final String? name;

  Json get properties => {
    'firebaseUid': firebaseUid,
    'emailVerified': emailVerified,
    'isMultiFactorEnabled': isMultiFactorEnabled,
    'claims': claims,
    'permissions': permissions,
    'adminOn': adminOn,
  };

  const LoggingUser({
    required this.id,
    required this.firebaseUid,
    this.emailVerified = false,
    this.isMultiFactorEnabled = false,
    this.claims = const {},
    this.permissions = const [],
    this.adminOn = const [],
    this.email,
    this.name,
  });

  Json toJson() => {
    'id': id,
    'email': email,
    'name': name,
    ...properties,
  };
}
