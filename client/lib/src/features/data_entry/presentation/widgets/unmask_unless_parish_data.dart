import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';

class UnmaskUnlessParishData extends StatelessWidget {
  final Viewable object;
  final Widget child;

  const UnmaskUnlessParishData({
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
    Meeting() => SessionReplayUnmask(child: child),
    _ => child,
  };
}
