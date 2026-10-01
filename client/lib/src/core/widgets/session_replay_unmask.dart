import 'package:flutter/widgets.dart';
import 'package:posthog_flutter/posthog_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

/// Never wrap a text input: Sentry reveals every field inside, passwords too.
class SessionReplayUnmask extends StatelessWidget {
  final Widget child;

  const SessionReplayUnmask({required this.child, super.key});

  @override
  Widget build(BuildContext context) => PostHogUnmaskWidget(
    // Sentry has no stable unmask API; this is the only place that depends on it.
    // ignore: experimental_member_use
    child: SentryUnmask(child),
  );
}
