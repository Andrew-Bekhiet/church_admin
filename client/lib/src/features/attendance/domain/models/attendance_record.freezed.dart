// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceRecord {
  String get id;
  DateTime get dayId;
  DateTime get time;
  Service get service;
  Person get person;
  User get recordedByUser;
  bool get asAdmin;
  StudyYear? get studyYear;
  bool? get serviceGender;
  Group? get group;
  Class? get class$;

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttendanceRecordCopyWith<AttendanceRecord> get copyWith =>
      _$AttendanceRecordCopyWithImpl<AttendanceRecord>(
          this as AttendanceRecord, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dayId, dayId) || other.dayId == dayId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.recordedByUser, recordedByUser) ||
                other.recordedByUser == recordedByUser) &&
            (identical(other.asAdmin, asAdmin) || other.asAdmin == asAdmin) &&
            (identical(other.studyYear, studyYear) ||
                other.studyYear == studyYear) &&
            (identical(other.serviceGender, serviceGender) ||
                other.serviceGender == serviceGender) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.class$, class$) || other.class$ == class$));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, dayId, time, service, person,
      recordedByUser, asAdmin, studyYear, serviceGender, group, class$);

  @override
  String toString() {
    return 'AttendanceRecord(id: $id, dayId: $dayId, time: $time, service: $service, person: $person, recordedByUser: $recordedByUser, asAdmin: $asAdmin, studyYear: $studyYear, serviceGender: $serviceGender, group: $group, class\$: ${class$})';
  }
}

/// @nodoc
abstract mixin class $AttendanceRecordCopyWith<$Res> {
  factory $AttendanceRecordCopyWith(
          AttendanceRecord value, $Res Function(AttendanceRecord) _then) =
      _$AttendanceRecordCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      DateTime dayId,
      DateTime time,
      Service service,
      Person person,
      User recordedByUser,
      bool asAdmin,
      StudyYear? studyYear,
      bool? serviceGender,
      Group? group,
      Class? class$});
}

/// @nodoc
class _$AttendanceRecordCopyWithImpl<$Res>
    implements $AttendanceRecordCopyWith<$Res> {
  _$AttendanceRecordCopyWithImpl(this._self, this._then);

  final AttendanceRecord _self;
  final $Res Function(AttendanceRecord) _then;

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dayId = null,
    Object? time = null,
    Object? service = null,
    Object? person = null,
    Object? recordedByUser = null,
    Object? asAdmin = null,
    Object? studyYear = freezed,
    Object? serviceGender = freezed,
    Object? group = freezed,
    Object? class$ = freezed,
  }) {
    return _then(AttendanceRecord(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dayId: null == dayId
          ? _self.dayId
          : dayId // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      service: null == service
          ? _self.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
      person: null == person
          ? _self.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      recordedByUser: null == recordedByUser
          ? _self.recordedByUser
          : recordedByUser // ignore: cast_nullable_to_non_nullable
              as User,
      asAdmin: null == asAdmin
          ? _self.asAdmin
          : asAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      studyYear: freezed == studyYear
          ? _self.studyYear
          : studyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      serviceGender: freezed == serviceGender
          ? _self.serviceGender
          : serviceGender // ignore: cast_nullable_to_non_nullable
              as bool?,
      group: freezed == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      class$: freezed == class$
          ? _self.class$
          : class$ // ignore: cast_nullable_to_non_nullable
              as Class?,
    ));
  }
}

// dart format on
