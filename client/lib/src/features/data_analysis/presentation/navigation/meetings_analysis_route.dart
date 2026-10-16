import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:go_router/go_router.dart';

part 'meetings_analysis_route.g.dart';

@TypedGoRoute<MeetingsAnalysisRoute>(path: '/meetings_analysis')
class MeetingsAnalysisRoute extends GoRouteData with $MeetingsAnalysisRoute {
  final MeetingsAnalysisExtra $extra;

  const MeetingsAnalysisRoute({required this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MeetingsAnalysisScreen(
      title: $extra.title,
      initialRangePreset: $extra.initialRangePreset,
      subject: $extra.subject,
    );
  }
}
