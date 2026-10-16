// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Meeting {
  /// Create a copy of Meeting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeetingCopyWith<Meeting> get copyWith =>
      _$MeetingCopyWithImpl<Meeting>(this as Meeting, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Meeting;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Meeting &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.audience, _this.audience) ||
                other.audience == _this.audience) &&
            (identical(other.isArchived, _this.isArchived) ||
                other.isArchived == _this.isArchived) &&
            (identical(other.showKodasCheckbox, _this.showKodasCheckbox) ||
                other.showKodasCheckbox == _this.showKodasCheckbox) &&
            (identical(other.color, _this.color) ||
                other.color == _this.color) &&
            (identical(other.serviceId, _this.serviceId) ||
                other.serviceId == _this.serviceId) &&
            (identical(other.service, _this.service) ||
                other.service == _this.service) &&
            (identical(other.serviceStudyYear, _this.serviceStudyYear) ||
                other.serviceStudyYear == _this.serviceStudyYear) &&
            (identical(other.studyYear, _this.studyYear) ||
                other.studyYear == _this.studyYear) &&
            (identical(other.serviceGender, _this.serviceGender) ||
                other.serviceGender == _this.serviceGender) &&
            (identical(other.groupId, _this.groupId) ||
                other.groupId == _this.groupId) &&
            (identical(other.group, _this.group) ||
                other.group == _this.group));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Meeting;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.name,
      _this.audience,
      _this.isArchived,
      _this.showKodasCheckbox,
      _this.color,
      _this.serviceId,
      _this.service,
      _this.serviceStudyYear,
      _this.studyYear,
      _this.serviceGender,
      _this.groupId,
      _this.group,
    );
  }

  @override
  String toString() {
    final _this = this as Meeting;
    return 'Meeting(id: ${_this.id}, name: ${_this.name}, audience: ${_this.audience}, isArchived: ${_this.isArchived}, showKodasCheckbox: ${_this.showKodasCheckbox}, color: ${_this.color}, serviceId: ${_this.serviceId}, service: ${_this.service}, serviceStudyYear: ${_this.serviceStudyYear}, studyYear: ${_this.studyYear}, serviceGender: ${_this.serviceGender}, groupId: ${_this.groupId}, group: ${_this.group})';
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
    bool showKodasCheckbox,
    Color? color,
    String? serviceId,
    Service? service,
    int? serviceStudyYear,
    StudyYear? studyYear,
    bool? serviceGender,
    String? groupId,
    Group? group,
  });

  $ServiceCopyWith<$Res>? get service;
  $StudyYearCopyWith<$Res>? get studyYear;
  $GroupCopyWith<$Res>? get group;
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
    Object? showKodasCheckbox = null,
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
        showKodasCheckbox: null == showKodasCheckbox
            ? _self.showKodasCheckbox
            : showKodasCheckbox // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of Meeting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res>? get service {
    if (_self.service == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_self.service!, (value) {
      return _then(_self.copyWith(service: value));
    });
  }

  /// Create a copy of Meeting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudyYearCopyWith<$Res>? get studyYear {
    if (_self.studyYear == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_self.studyYear!, (value) {
      return _then(_self.copyWith(studyYear: value));
    });
  }

  /// Create a copy of Meeting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res>? get group {
    if (_self.group == null) {
      return null;
    }

    return $GroupCopyWith<$Res>(_self.group!, (value) {
      return _then(_self.copyWith(group: value));
    });
  }
}
