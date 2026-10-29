import 'package:church_admin/church_admin.dart';

sealed class AuthAttemptOutcome {
  Json get properties;

  const AuthAttemptOutcome();
}

final class AuthAttemptSucceeded extends AuthAttemptOutcome {
  @override
  Json get properties => const {'is_success': true};

  const AuthAttemptSucceeded();
}

final class AuthAttemptFailed extends AuthAttemptOutcome {
  final String kind;

  @override
  Json get properties => {'is_success': false, 'failure_kind': kind};

  const AuthAttemptFailed(this.kind);
}
