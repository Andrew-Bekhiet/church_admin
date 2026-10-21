part of 'package:church_admin/src/core/services/router/app_route.dart';

class MeetingsAnalysisRoute extends HomeChildRoute {
  final String title;
  final DateTimeRangePreset initialRangePreset;
  final MeetingsAnalysisSubject subject;

  @override
  String get path => '/meetings_analysis';

  @override
  List<Object?> get props => [title, initialRangePreset, subject];

  const MeetingsAnalysisRoute({
    required this.title,
    required this.initialRangePreset,
    required this.subject,
  });

  @override
  Widget build(BuildContext context) {
    return MeetingsAnalysisScreen(
      title: title,
      initialRangePreset: initialRangePreset,
      subject: subject,
    );
  }
}
