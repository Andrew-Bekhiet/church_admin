import 'package:church_admin/church_admin.dart';

class RedirectLoopException implements Exception {
  final List<AppRoute> stack;

  const RedirectLoopException(this.stack);

  @override
  String toString() =>
      'RedirectLoopException: redirects did not settle, ending on $stack';
}
