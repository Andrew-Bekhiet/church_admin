// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_roster_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeetingRosterEntry {
  /// Create a copy of MeetingRosterEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeetingRosterEntryCopyWith<MeetingRosterEntry> get copyWith =>
      _$MeetingRosterEntryCopyWithImpl<MeetingRosterEntry>(
        this as MeetingRosterEntry,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    final _this = this as MeetingRosterEntry;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MeetingRosterEntry &&
            (identical(other.asServant, _this.asServant) ||
                other.asServant == _this.asServant) &&
            (identical(other.person, _this.person) ||
                other.person == _this.person) &&
            (identical(other.attendanceRecord, _this.attendanceRecord) ||
                other.attendanceRecord == _this.attendanceRecord) &&
            const DeepCollectionEquality().equals(other.phones, _this.phones) &&
            (identical(
                  other.personAttendanceAnalysis,
                  _this.personAttendanceAnalysis,
                ) ||
                other.personAttendanceAnalysis ==
                    _this.personAttendanceAnalysis));
  }

  @override
  int get hashCode {
    final _this = this as MeetingRosterEntry;
    return Object.hash(
      runtimeType,
      _this.asServant,
      _this.person,
      _this.attendanceRecord,
      const DeepCollectionEquality().hash(_this.phones),
      _this.personAttendanceAnalysis,
    );
  }

  @override
  String toString() {
    final _this = this as MeetingRosterEntry;
    return 'MeetingRosterEntry(asServant: ${_this.asServant}, person: ${_this.person}, attendanceRecord: ${_this.attendanceRecord}, phones: ${_this.phones}, personAttendanceAnalysis: ${_this.personAttendanceAnalysis})';
  }
}

/// @nodoc
abstract mixin class $MeetingRosterEntryCopyWith<$Res> {
  factory $MeetingRosterEntryCopyWith(
    MeetingRosterEntry value,
    $Res Function(MeetingRosterEntry) _then,
  ) = _$MeetingRosterEntryCopyWithImpl;
  @useResult
  $Res call({
    bool asServant,
    Person person,
    AttendanceRecord? attendanceRecord,
    PersonMeetingAttendanceAnalysis? personAttendanceAnalysis,
    List<String> phones,
  });

  $PersonCopyWith<$Res> get person;
  $AttendanceRecordCopyWith<$Res>? get attendanceRecord;
}

/// @nodoc
class _$MeetingRosterEntryCopyWithImpl<$Res>
    implements $MeetingRosterEntryCopyWith<$Res> {
  _$MeetingRosterEntryCopyWithImpl(this._self, this._then);

  final MeetingRosterEntry _self;
  final $Res Function(MeetingRosterEntry) _then;

  /// Create a copy of MeetingRosterEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asServant = null,
    Object? person = null,
    Object? attendanceRecord = freezed,
    Object? personAttendanceAnalysis = freezed,
    Object? phones = null,
  }) {
    return _then(
      MeetingRosterEntry(
        asServant: null == asServant
            ? _self.asServant
            : asServant // ignore: cast_nullable_to_non_nullable
                  as bool,
        person: null == person
            ? _self.person
            : person // ignore: cast_nullable_to_non_nullable
                  as Person,
        attendanceRecord: freezed == attendanceRecord
            ? _self.attendanceRecord
            : attendanceRecord // ignore: cast_nullable_to_non_nullable
                  as AttendanceRecord?,
        personAttendanceAnalysis: freezed == personAttendanceAnalysis
            ? _self.personAttendanceAnalysis
            : personAttendanceAnalysis // ignore: cast_nullable_to_non_nullable
                  as PersonMeetingAttendanceAnalysis?,
        phones: null == phones
            ? _self.phones
            : phones // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }

  /// Create a copy of MeetingRosterEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res> get person {
    return $PersonCopyWith<$Res>(_self.person, (value) {
      return _then(_self.copyWith(person: value));
    });
  }

  /// Create a copy of MeetingRosterEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceRecordCopyWith<$Res>? get attendanceRecord {
    if (_self.attendanceRecord == null) {
      return null;
    }

    return $AttendanceRecordCopyWith<$Res>(_self.attendanceRecord!, (value) {
      return _then(_self.copyWith(attendanceRecord: value));
    });
  }
}
