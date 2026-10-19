import 'dart:ui' show Color;

import 'package:church_admin/church_admin.dart';

/// The entity an analysis is scoped to. Its [title] and [color] label the
/// resulting analysis, and the DAO/cubit switch on the concrete subtype to
/// build the right query filters and resolve the classes to display.
sealed class MeetingsAnalysisSubject implements ToJson {
  static const String _typeKey = 'type';
  static const String _dataKey = 'data';

  String get title;
  Color? get color;

  const MeetingsAnalysisSubject();

  factory MeetingsAnalysisSubject.fromJson(Json json) {
    final kind = json[_typeKey];
    final data = json[_dataKey];

    Json dataJson() =>
        requireNestedJson(data, owner: 'MeetingsAnalysisSubject', kind: kind);

    return switch (kind) {
      MeetingAnalysisSubject.kind => MeetingAnalysisSubject(
        Meeting.fromJson(dataJson()),
      ),
      ServiceAnalysisSubject.kind => ServiceAnalysisSubject(
        Service.fromJson(dataJson()),
      ),
      GroupAnalysisSubject.kind => GroupAnalysisSubject(
        Group.fromJson(dataJson()),
      ),
      ClassAnalysisSubject.kind => ClassAnalysisSubject(
        Class.fromJson(dataJson()),
      ),
      _ => throw FormatException(
        'Unknown MeetingsAnalysisSubject kind "$kind"',
      ),
    };
  }

  Json _toJsonOfKind(String kind, ToJson data) => {
    _typeKey: kind,
    _dataKey: data.toJson(),
  };
}

final class MeetingAnalysisSubject extends MeetingsAnalysisSubject {
  static const String kind = 'meeting';

  final Meeting meeting;

  @override
  String get title => meeting.name;

  @override
  Color? get color => meeting.color;

  const MeetingAnalysisSubject(this.meeting);

  @override
  Json toJson() => _toJsonOfKind(kind, meeting);
}

final class ServiceAnalysisSubject extends MeetingsAnalysisSubject {
  static const String kind = 'service';

  final Service service;

  @override
  String get title => service.name;

  @override
  Color? get color => service.color;

  const ServiceAnalysisSubject(this.service);

  @override
  Json toJson() => _toJsonOfKind(kind, service);
}

final class GroupAnalysisSubject extends MeetingsAnalysisSubject {
  static const String kind = 'group';

  final Group group;

  @override
  String get title => group.name;

  @override
  Color? get color => group.color;

  const GroupAnalysisSubject(this.group);

  @override
  Json toJson() => _toJsonOfKind(kind, group);
}

final class ClassAnalysisSubject extends MeetingsAnalysisSubject {
  static const String kind = 'class';

  final Class class$;

  @override
  String get title => class$.name;

  @override
  Color? get color => class$.color;

  const ClassAnalysisSubject(this.class$);

  @override
  Json toJson() => _toJsonOfKind(kind, class$);
}
