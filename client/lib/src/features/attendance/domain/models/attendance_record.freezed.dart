// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceRecord {
  String get id;
  String get meetingId;
  Meeting? get meeting;
  String get personId;
  Person? get person;
  DateTime get datetime;
  bool get asServant;
  User? get recordedByUser;

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttendanceRecordCopyWith<AttendanceRecord> get copyWith =>
      _$AttendanceRecordCopyWithImpl<AttendanceRecord>(
        this as AttendanceRecord,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meetingId, meetingId) ||
                other.meetingId == meetingId) &&
            (identical(other.meeting, meeting) || other.meeting == meeting) &&
            (identical(other.personId, personId) ||
                other.personId == personId) &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.asServant, asServant) ||
                other.asServant == asServant) &&
            (identical(other.recordedByUser, recordedByUser) ||
                other.recordedByUser == recordedByUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    meetingId,
    meeting,
    personId,
    person,
    datetime,
    asServant,
    recordedByUser,
  );

  @override
  String toString() {
    return 'AttendanceRecord(id: $id, meetingId: $meetingId, meeting: $meeting, personId: $personId, person: $person, datetime: $datetime, asServant: $asServant, recordedByUser: $recordedByUser)';
  }
}

/// @nodoc
abstract mixin class $AttendanceRecordCopyWith<$Res> {
  factory $AttendanceRecordCopyWith(
    AttendanceRecord value,
    $Res Function(AttendanceRecord) _then,
  ) = _$AttendanceRecordCopyWithImpl;
  @useResult
  $Res call({
    String id,
    String meetingId,
    String personId,
    DateTime datetime,
    bool asServant,
    Meeting? meeting,
    Person? person,
    User? recordedByUser,
  });
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
    Object? meetingId = null,
    Object? personId = null,
    Object? datetime = null,
    Object? asServant = null,
    Object? meeting = freezed,
    Object? person = freezed,
    Object? recordedByUser = freezed,
  }) {
    return _then(
      AttendanceRecord(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        meetingId: null == meetingId
            ? _self.meetingId
            : meetingId // ignore: cast_nullable_to_non_nullable
                  as String,
        personId: null == personId
            ? _self.personId
            : personId // ignore: cast_nullable_to_non_nullable
                  as String,
        datetime: null == datetime
            ? _self.datetime
            : datetime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        asServant: null == asServant
            ? _self.asServant
            : asServant // ignore: cast_nullable_to_non_nullable
                  as bool,
        meeting: freezed == meeting
            ? _self.meeting
            : meeting // ignore: cast_nullable_to_non_nullable
                  as Meeting?,
        person: freezed == person
            ? _self.person
            : person // ignore: cast_nullable_to_non_nullable
                  as Person?,
        recordedByUser: freezed == recordedByUser
            ? _self.recordedByUser
            : recordedByUser // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }
}
