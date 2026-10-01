import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

class OrganisationalUnmask extends StatelessWidget {
  final Viewable object;
  final Widget child;

  const OrganisationalUnmask({
    required this.object,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => switch (object) {
    Service() ||
    Class() ||
    Group() ||
    Area() ||
    StudyYear() ||
    Meeting() => PostHogUnmaskWidget(child: child),
    _ => child,
  };
}
