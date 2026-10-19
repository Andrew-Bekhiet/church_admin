// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meetings_analysis_subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;
MeetingsAnalysisSubject _$MeetingsAnalysisSubjectFromJson(
  Map<String, dynamic> json,
) {
  switch (json['type']) {
    case 'meeting':
      return MeetingAnalysisSubject.fromJson(json);
    case 'service':
      return ServiceAnalysisSubject.fromJson(json);
    case 'group':
      return GroupAnalysisSubject.fromJson(json);
    case 'class':
      return ClassAnalysisSubject.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'type',
        'MeetingsAnalysisSubject',
        'Invalid union type "${json['type']}"!',
      );
  }
}

/// @nodoc
mixin _$MeetingsAnalysisSubject {
  /// Serializes this MeetingsAnalysisSubject to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MeetingsAnalysisSubject);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MeetingsAnalysisSubject()';
  }
}

/// @nodoc
@JsonSerializable()
class MeetingAnalysisSubject extends MeetingsAnalysisSubject {
  const MeetingAnalysisSubject(this.meeting, {String? $type})
    : $type = $type ?? 'meeting',
      super._();
  factory MeetingAnalysisSubject.fromJson(Map<String, dynamic> json) =>
      _$MeetingAnalysisSubjectFromJson(json);

  final Meeting meeting;

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$MeetingAnalysisSubjectToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MeetingAnalysisSubject &&
            (identical(other.meeting, meeting) || other.meeting == meeting));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, meeting);
  }

  @override
  String toString() {
    return 'MeetingsAnalysisSubject.meeting(meeting: $meeting)';
  }
}

/// @nodoc
@JsonSerializable()
class ServiceAnalysisSubject extends MeetingsAnalysisSubject {
  const ServiceAnalysisSubject(this.service, {String? $type})
    : $type = $type ?? 'service',
      super._();
  factory ServiceAnalysisSubject.fromJson(Map<String, dynamic> json) =>
      _$ServiceAnalysisSubjectFromJson(json);

  final Service service;

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$ServiceAnalysisSubjectToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServiceAnalysisSubject &&
            (identical(other.service, service) || other.service == service));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, service);
  }

  @override
  String toString() {
    return 'MeetingsAnalysisSubject.service(service: $service)';
  }
}

/// @nodoc
@JsonSerializable()
class GroupAnalysisSubject extends MeetingsAnalysisSubject {
  const GroupAnalysisSubject(this.group, {String? $type})
    : $type = $type ?? 'group',
      super._();
  factory GroupAnalysisSubject.fromJson(Map<String, dynamic> json) =>
      _$GroupAnalysisSubjectFromJson(json);

  final Group group;

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$GroupAnalysisSubjectToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroupAnalysisSubject &&
            (identical(other.group, group) || other.group == group));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, group);
  }

  @override
  String toString() {
    return 'MeetingsAnalysisSubject.group(group: $group)';
  }
}

/// @nodoc
@JsonSerializable()
class ClassAnalysisSubject extends MeetingsAnalysisSubject {
  const ClassAnalysisSubject(this.class$, {String? $type})
    : $type = $type ?? 'class',
      super._();
  factory ClassAnalysisSubject.fromJson(Map<String, dynamic> json) =>
      _$ClassAnalysisSubjectFromJson(json);

  final Class class$;

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$ClassAnalysisSubjectToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClassAnalysisSubject &&
            (identical(other.class$, class$) || other.class$ == class$));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, class$);
  }

  @override
  String toString() {
    return 'MeetingsAnalysisSubject.class\$(class\$: ${class$})';
  }
}
