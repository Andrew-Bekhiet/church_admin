import 'package:church_admin/church_admin.dart';

class LoggingUser {
  final String id;
  final String? email;
  final String? name;
  final Json properties;

  const LoggingUser({
    required this.id,
    this.properties = const {},
    this.email,
    this.name,
  });
}
