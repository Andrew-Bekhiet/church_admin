import 'dart:ui' show Color;

import 'package:church_admin/church_admin.dart';

/// The entity an analysis is scoped to. Its [title] and [color] label the
/// resulting analysis, and the DAO/cubit switch on the concrete subtype to
/// build the right query filters and resolve the classes to display.
sealed class MeetingsAnalysisSubject {
  String get title;
  Color? get color;

  const MeetingsAnalysisSubject();
}

final class MeetingAnalysisSubject extends MeetingsAnalysisSubject {
  final Meeting meeting;

  @override
  String get title => meeting.name;

  @override
  Color? get color => meeting.color;

  const MeetingAnalysisSubject(this.meeting);
}

final class ServiceAnalysisSubject extends MeetingsAnalysisSubject {
  final Service service;

  @override
  String get title => service.name;

  @override
  Color? get color => service.color;

  const ServiceAnalysisSubject(this.service);
}

final class GroupAnalysisSubject extends MeetingsAnalysisSubject {
  final Group group;

  @override
  String get title => group.name;

  @override
  Color? get color => group.color;

  const GroupAnalysisSubject(this.group);
}

final class ClassAnalysisSubject extends MeetingsAnalysisSubject {
  final Class class$;

  @override
  String get title => class$.name;

  @override
  Color? get color => class$.color;

  const ClassAnalysisSubject(this.class$);
}
