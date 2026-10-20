import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

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
