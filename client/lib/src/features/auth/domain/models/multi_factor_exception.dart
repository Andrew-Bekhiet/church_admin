import 'package:church_admin/church_admin.dart';

class MultiFactorException implements Exception {
  final MultiFactorSession session;

  const MultiFactorException(this.session);
}
