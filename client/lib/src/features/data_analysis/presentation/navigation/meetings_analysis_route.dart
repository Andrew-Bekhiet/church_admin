part of 'package:church_admin/src/core/services/router/app_route.dart';

class MeetingsAnalysisRoute extends HomeChildRoute {
  final MeetingsAnalysisExtra $extra;

  @override
  String get path => '/meetings_analysis';

  @override
  List<Object?> get props => [$extra];

  const MeetingsAnalysisRoute({required this.$extra});

  @override
  Widget build(BuildContext context) {
    return MeetingsAnalysisScreen(
      title: $extra.title,
      initialRangePreset: $extra.initialRangePreset,
      subject: $extra.subject,
    );
  }
}
