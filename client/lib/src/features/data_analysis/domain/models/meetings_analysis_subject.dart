import 'dart:ui' show Color;

import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meetings_analysis_subject.freezed.dart';
part 'meetings_analysis_subject.g.dart';

/// The entity an analysis is scoped to. Its [title] and [color] label the
/// resulting analysis, and the DAO/cubit switch on the concrete subtype to
/// build the right query filters and resolve the classes to display.
@Freezed(unionKey: 'type', copyWith: false)
sealed class MeetingsAnalysisSubject with _$MeetingsAnalysisSubject {
  String get title => switch (this) {
    MeetingAnalysisSubject(:final meeting) => meeting.name,
    ServiceAnalysisSubject(:final service) => service.name,
    GroupAnalysisSubject(:final group) => group.name,
    ClassAnalysisSubject(:final class$) => class$.name,
  };

  Color? get color => switch (this) {
    MeetingAnalysisSubject(:final meeting) => meeting.color,
    ServiceAnalysisSubject(:final service) => service.color,
    GroupAnalysisSubject(:final group) => group.color,
    ClassAnalysisSubject(:final class$) => class$.color,
  };

  const MeetingsAnalysisSubject._();

  const factory MeetingsAnalysisSubject.meeting(Meeting meeting) =
      MeetingAnalysisSubject;

  const factory MeetingsAnalysisSubject.service(Service service) =
      ServiceAnalysisSubject;

  const factory MeetingsAnalysisSubject.group(Group group) =
      GroupAnalysisSubject;

  @FreezedUnionValue('class')
  const factory MeetingsAnalysisSubject.class$(Class class$) =
      ClassAnalysisSubject;

  factory MeetingsAnalysisSubject.fromJson(Json json) =>
      _$MeetingsAnalysisSubjectFromJson(json);
}
