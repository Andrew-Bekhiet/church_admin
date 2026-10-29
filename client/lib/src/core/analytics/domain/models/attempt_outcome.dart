import 'package:church_admin/church_admin.dart';

sealed class AttemptOutcome {
  Json get properties;

  const AttemptOutcome();
}

final class AttemptSucceeded extends AttemptOutcome {
  @override
  Json get properties => const {'is_success': true, 'failure_kind': 'none'};

  const AttemptSucceeded();
}

final class AttemptFailed extends AttemptOutcome {
  final String kind;

  @override
  Json get properties => {'is_success': false, 'failure_kind': kind};

  const AttemptFailed(this.kind);
}
