// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceRecord {
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
    final _this = this as AttendanceRecord;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceRecord &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.meetingId, _this.meetingId) ||
                other.meetingId == _this.meetingId) &&
            (identical(other.meeting, _this.meeting) ||
                other.meeting == _this.meeting) &&
            (identical(other.personId, _this.personId) ||
                other.personId == _this.personId) &&
            (identical(other.person, _this.person) ||
                other.person == _this.person) &&
            (identical(other.datetime, _this.datetime) ||
                other.datetime == _this.datetime) &&
            (identical(other.asServant, _this.asServant) ||
                other.asServant == _this.asServant) &&
            (identical(other.recordedByUser, _this.recordedByUser) ||
                other.recordedByUser == _this.recordedByUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as AttendanceRecord;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.meetingId,
      _this.meeting,
      _this.personId,
      _this.person,
      _this.datetime,
      _this.asServant,
      _this.recordedByUser,
    );
  }

  @override
  String toString() {
    final _this = this as AttendanceRecord;
    return 'AttendanceRecord(id: ${_this.id}, meetingId: ${_this.meetingId}, meeting: ${_this.meeting}, personId: ${_this.personId}, person: ${_this.person}, datetime: ${_this.datetime}, asServant: ${_this.asServant}, recordedByUser: ${_this.recordedByUser})';
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

  $MeetingCopyWith<$Res>? get meeting;
  $PersonCopyWith<$Res>? get person;
  $UserCopyWith<$Res>? get recordedByUser;
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

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeetingCopyWith<$Res>? get meeting {
    if (_self.meeting == null) {
      return null;
    }

    return $MeetingCopyWith<$Res>(_self.meeting!, (value) {
      return _then(_self.copyWith(meeting: value));
    });
  }

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res>? get person {
    if (_self.person == null) {
      return null;
    }

    return $PersonCopyWith<$Res>(_self.person!, (value) {
      return _then(_self.copyWith(person: value));
    });
  }

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get recordedByUser {
    if (_self.recordedByUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.recordedByUser!, (value) {
      return _then(_self.copyWith(recordedByUser: value));
    });
  }
}
