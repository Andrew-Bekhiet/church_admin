part of 'package:church_admin/src/core/services/router/app_route.dart';

class MeetingsAnalysisRoute extends HomeChildRoute {
  static const String routePath = '/meetings_analysis';

  final String title;
  final DateTimeRangePreset initialRangePreset;
  final MeetingsAnalysisSubject subject;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties => {
    'range_days': initialRangePreset.duration.inDays,
    ...switch (subject) {
      MeetingAnalysisSubject(:final meeting) => {'meeting_id': meeting.id},
      ServiceAnalysisSubject(:final service) => {'service_id': service.id},
      GroupAnalysisSubject(:final group) => {'group_id': group.id},
      ClassAnalysisSubject(:final class$) => {'class_id': class$.id},
    },
  };

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
