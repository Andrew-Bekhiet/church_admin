// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Meeting {
  String get id;
  String get name;
  MeetingAudience get audience;
  bool get isArchived;
  Color? get color;
  String? get serviceId;
  Service? get service;
  int? get serviceStudyYear;
  StudyYear? get studyYear;
  bool? get serviceGender;
  String? get groupId;
  Group? get group;

  /// Create a copy of Meeting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeetingCopyWith<Meeting> get copyWith =>
      _$MeetingCopyWithImpl<Meeting>(this as Meeting, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Meeting &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.audience, audience) ||
                other.audience == audience) &&
            (identical(other.isArchived, isArchived) ||
                other.isArchived == isArchived) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.serviceStudyYear, serviceStudyYear) ||
                other.serviceStudyYear == serviceStudyYear) &&
            (identical(other.studyYear, studyYear) ||
                other.studyYear == studyYear) &&
            (identical(other.serviceGender, serviceGender) ||
                other.serviceGender == serviceGender) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.group, group) || other.group == group));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    audience,
    isArchived,
    color,
    serviceId,
    service,
    serviceStudyYear,
    studyYear,
    serviceGender,
    groupId,
    group,
  );

  @override
  String toString() {
    return 'Meeting(id: $id, name: $name, audience: $audience, isArchived: $isArchived, color: $color, serviceId: $serviceId, service: $service, serviceStudyYear: $serviceStudyYear, studyYear: $studyYear, serviceGender: $serviceGender, groupId: $groupId, group: $group)';
  }
}

/// @nodoc
abstract mixin class $MeetingCopyWith<$Res> {
  factory $MeetingCopyWith(Meeting value, $Res Function(Meeting) _then) =
      _$MeetingCopyWithImpl;
  @useResult
  $Res call({
    String id,
    String name,
    MeetingAudience audience,
    bool isArchived,
    Color? color,
    String? serviceId,
    Service? service,
    int? serviceStudyYear,
    StudyYear? studyYear,
    bool? serviceGender,
    String? groupId,
    Group? group,
  });
}

/// @nodoc
class _$MeetingCopyWithImpl<$Res> implements $MeetingCopyWith<$Res> {
  _$MeetingCopyWithImpl(this._self, this._then);

  final Meeting _self;
  final $Res Function(Meeting) _then;

  /// Create a copy of Meeting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? audience = null,
    Object? isArchived = null,
    Object? color = freezed,
    Object? serviceId = freezed,
    Object? service = freezed,
    Object? serviceStudyYear = freezed,
    Object? studyYear = freezed,
    Object? serviceGender = freezed,
    Object? groupId = freezed,
    Object? group = freezed,
  }) {
    return _then(
      Meeting(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        audience: null == audience
            ? _self.audience
            : audience // ignore: cast_nullable_to_non_nullable
                  as MeetingAudience,
        isArchived: null == isArchived
            ? _self.isArchived
            : isArchived // ignore: cast_nullable_to_non_nullable
                  as bool,
        color: freezed == color
            ? _self.color
            : color // ignore: cast_nullable_to_non_nullable
                  as Color?,
        serviceId: freezed == serviceId
            ? _self.serviceId
            : serviceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        service: freezed == service
            ? _self.service
            : service // ignore: cast_nullable_to_non_nullable
                  as Service?,
        serviceStudyYear: freezed == serviceStudyYear
            ? _self.serviceStudyYear
            : serviceStudyYear // ignore: cast_nullable_to_non_nullable
                  as int?,
        studyYear: freezed == studyYear
            ? _self.studyYear
            : studyYear // ignore: cast_nullable_to_non_nullable
                  as StudyYear?,
        serviceGender: freezed == serviceGender
            ? _self.serviceGender
            : serviceGender // ignore: cast_nullable_to_non_nullable
                  as bool?,
        groupId: freezed == groupId
            ? _self.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                  as String?,
        group: freezed == group
            ? _self.group
            : group // ignore: cast_nullable_to_non_nullable
                  as Group?,
      ),
    );
  }
}
