import 'package:church_admin/church_admin.dart';

class AnalyticsUser {
  final String id;
  final List<String> permissions;
  final List<Json> adminOn;

  Json get properties => {
    'permissions': permissions,
    'adminOn': adminOn,
  };

  const AnalyticsUser({
    required this.id,
    this.permissions = const [],
    this.adminOn = const [],
  });
}
