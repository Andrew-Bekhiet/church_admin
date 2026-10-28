import 'package:church_admin/church_admin.dart';

class AnalyticsUser {
  final String id;
  final String? email;
  final String? name;
  final List<String> permissions;
  final List<Json> adminOn;

  Json get properties => {
    'email': email,
    'name': name,
    'permissions': permissions,
    'adminOn': adminOn,
  };

  const AnalyticsUser({
    required this.id,
    this.permissions = const [],
    this.adminOn = const [],
    this.email,
    this.name,
  });
}
